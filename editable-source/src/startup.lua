local arguments, argument_count = {...}, select("#", ...)
local function start()
    local count,result=pack_returns(make_function(D.f1,nil)(unpack(arguments,1,argument_count)))
    check_startup_clock(true)
    return unpack(result,1,count)
end
local can_schedule=type(client)=="table" and type(client.delay_call)=="function" and
    type(coroutine)=="table" and type(coroutine.create)=="function" and
    type(coroutine.resume)=="function" and type(coroutine.running)=="function" and
    type(coroutine.status)=="function" and type(coroutine.yield)=="function"
if not can_schedule then
    startup_active,startup_blocked=false,true
    pcall(startup_on_finish,"unavailable")
    error("ANDROMEDA_RUNTIME_UNAVAILABLE: client.delay_call and coroutine support are required",0)
end
local cancelled,shutdown_registered,finished=false,false,false
local cancel_startup
local function finish_startup(state)
    if finished then return end
    finished=true
    startup_active=false
    startup_blocked=state~="complete" or startup_diagnostic_mode
    if shutdown_registered and type(client.unset_event_callback)=="function" then
        pcall(client.unset_event_callback,"shutdown",cancel_startup)
    end
    shutdown_registered=false
    local ok,err=pcall(startup_on_finish,state)
    if not ok then startup_notice("FINISH CALLBACK FAILED: "..tostring(err)) end
end
cancel_startup=function()
    if finished then return end
    cancelled=true
    finish_startup("cancelled")
end
if type(client.set_event_callback)=="function" then
    shutdown_registered=pcall(client.set_event_callback,"shutdown",cancel_startup)
end
local function failed(reason)
    finish_startup("stopped")
    startup_notice("STOPPED: "..tostring(reason))
    error("Andromeda startup stopped: "..tostring(reason),0)
end
startup_thread=coroutine.create(start)
local last_progress
local function resume_startup()
    if cancelled or not startup_active then return end
    begin_startup_slice()
    local expired=startup_limit_reason()
    if expired then return failed(expired) end
    local count,result=pack_returns(coroutine.resume(startup_thread))
    if not result[1] then return failed(result[2]) end
    if cancelled then return end
    local checkpoint_ok,checkpoint_error=pcall(startup_on_checkpoint)
    if not checkpoint_ok then startup_notice("CHECKPOINT CALLBACK FAILED: "..tostring(checkpoint_error)) end
    if coroutine.status(startup_thread)=="suspended" then
        if result[2]~=startup_yield_token then
            return failed("ANDROMEDA_UNEXPECTED_YIELD: "..startup_location())
        end
        local now=read_startup_clock()
        if (now and (not last_progress or now-last_progress>=1000)) or
            (not now and startup_slices%60==1) then
            startup_notice("RUNNING: "..startup_location())
            last_progress=now
        end
        local ok,err=pcall(client.delay_call,0.001,resume_startup)
        if not ok then return failed("ANDROMEDA_SCHEDULING_FAILED: "..tostring(err)) end
        return
    end
    finish_startup("complete")
    startup_notice("Startup function returned; menu visibility is not verified")
    return unpack(result,2,count)
end
startup_notice("STARTING")
return resume_startup()
