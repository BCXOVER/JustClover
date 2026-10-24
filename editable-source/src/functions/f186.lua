
-- Function f186; 7 recovered instruction blocks.
F.f186=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f186",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f186 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
do
do
(registers)[1] = upvalues[0]["unset_hitchance"]
end

end
::p3::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p4::
do
do
upvalues[0]["active"] = false
end

end
::p6::
do
do
upvalues[0]["hotkey_active"] = false
end

end
::p7::
do
do
upvalues[0]["updated_this_tick"] = false
end

end
::p8::
do
do
upvalues[0]["indicator_value"] = (registers[0])
end

end
::p9::
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
end
end
