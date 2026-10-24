-- Andromeda Exclusive: reconstructed Lua; original local names/comments are unavailable.
-- Virtual instructions are expanded into per-function Lua statements and native goto labels.
-- Original names/comments cannot be reconstructed. GameSense is required.
-- Startup yields between native batches and keeps its original finite budgets.
-- The deliberate f2 failure loop reports its caller instead of exhausting memory.
local bit = bit or require("bit")
local D, F = {}, {}
local startup_active = true
local startup_blocked = false
local startup_diagnostic_mode = false
local startup_instruction_limit = 100000
local startup_poll_interval = 16
local startup_poll_remaining = startup_poll_interval
local startup_timeout_ms = 2000
local startup_wall_timeout_ms = 15000
local startup_slice_ms = 1
local startup_slice_poll_limit = 128
local startup_max_polls = 20000
local startup_max_slices = 1800
local startup_clock, startup_last_poll, startup_slice_started, startup_started
local startup_elapsed_ms, startup_polls, startup_slices, startup_slice_polls = 0, 0, 0, 0
local startup_fast_xor_calls, startup_slow_xor_calls = 0, 0
local startup_thread
local current_function, current_pc
local startup_label = "Andromeda"
local startup_yield_token = {}
local startup_on_checkpoint = function() end
local startup_on_finish = function() end
local function startup_notice(message)
    local logger = type(client)=="table" and client.log or print
    if type(logger)=="function" then pcall(logger,"["..startup_label.."] "..message) end
end
do
    if type(client)=="table" and type(client.timestamp)=="function" then
        local ok, now = pcall(client.timestamp)
        if ok and type(now)=="number" and now==now then startup_clock=client.timestamp end
    end
end
local function read_startup_clock()
    if not startup_clock then return end
    local ok, now=pcall(startup_clock)
    if not ok or type(now)~="number" or now~=now then
        startup_clock=nil
        return
    end
    return now
end
local function startup_location()
    return tostring(current_function or "initialization").." pc="..tostring(current_pc or 0)
end
local function startup_limit_reason()
    local now=read_startup_clock()
    if now and startup_started and now-startup_started>=startup_wall_timeout_ms then
        return "ANDROMEDA_WALL_TIMEOUT: "..startup_location()
    end
    if startup_elapsed_ms>=startup_timeout_ms then
        return "ANDROMEDA_ACTIVE_TIMEOUT: "..startup_location()
    end
    if startup_polls>=startup_max_polls or startup_slices>=startup_max_slices then
        return "ANDROMEDA_TOTAL_BUDGET: "..startup_location()
    end
end
local function begin_startup_slice()
    local now=read_startup_clock()
    startup_started=startup_started or now
    startup_last_poll, startup_slice_started=now,now
    startup_slice_polls=0
    startup_slices=startup_slices+1
end
local function check_startup_clock(no_yield)
    if startup_thread and coroutine.running()~=startup_thread then return end
    startup_polls=startup_polls+1
    startup_slice_polls=startup_slice_polls+1
    local now=read_startup_clock()
    if now and startup_last_poll then
        startup_elapsed_ms=startup_elapsed_ms+math.max(0,now-startup_last_poll)
    end
    startup_last_poll=now
    local reason=startup_limit_reason()
    if reason then error(reason,0) end
    local time_slice=now and startup_slice_started and now-startup_slice_started>=startup_slice_ms
    if not no_yield and startup_thread and
        (time_slice or startup_slice_polls>=startup_slice_poll_limit) then
        local ok,err=pcall(coroutine.yield,startup_yield_token)
        if not ok then error("ANDROMEDA_CANNOT_YIELD: "..tostring(err),0) end
    end
end

local function new_frame() return {} end
local function pack_returns(...) return select("#", ...), {...} end
local function unpack_range(last, values, first) return unpack(values, first, last) end
local function without_upvalues(fn)
    return setfenv(function(...) return __andromeda_function(...) end,
        setmetatable({__andromeda_function=fn}, {__index=getfenv(fn)}))
end
local constant_cache = {
    [1]=without_upvalues, [5]=math.modf, [6]=math.pi, [7]=string.len,
    [8]=math.floor, [9]=math.ceil, [10]=string.byte
}
-- Standalone script identity; the loader's disguised callback registry is unused.
local andromeda_environment = getfenv()
if type(andromeda_environment._SCRIPT_NAME) ~= "string" then
    local standalone = {}
    for name, value in pairs(andromeda_environment) do standalone[name] = value end
    standalone._SCRIPT_NAME = "andromeda"
    standalone._G = standalone
    andromeda_environment = setmetatable(standalone, {__index = andromeda_environment})
end

local make_function
