
-- Function f43; 9 recovered instruction blocks.
F.f43=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f43",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f43 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p98
::p89::
tick(89)
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p90::
do
do
(registers)[2] = upvalues[0][registers[2]]
end

end
::p91::
do
do
if not (N) then

else
    for T, environment, W in next, N do
        if not (T >= 1) then

        else
            environment[2] = environment;
            (environment)[3] = (registers[T]);
            (environment)[1] = (3)
            N[T] = nil
        end
    end
end
return registers[2]
end

end
::p98::
do
do
a = {
    ...,
}
for f = 1, 1, 1 do
    registers[f] = (a[f])
end
end

end
::p99::
do
do
a = (registers)
end

end
::p100::
do
do
z = (2)
q = (environment)
end

end
::p101::
do
do
m = "tonumber"
q = (q[m])
a[z] = q
end

end
::p102::
do
do
(registers)[3] = registers[1]
end

end
::p103::
do
do
registers[4] = (16)
end

end
goto p89
end
end
