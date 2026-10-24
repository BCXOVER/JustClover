
-- Function f93; 13 recovered instruction blocks.
F.f93=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f93",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f93 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p59
::p34::
tick(34)
do
do
registers[3] = (upvalues[2])
end

end
::p35::
do
do
a = (registers)
z = 4
end

end
::p36::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p37::
do
do
(a)[z] = q
end

end
::p38::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p39::
do
do
registers[2] = (registers[2] .. registers[3])
end

end
::p40::
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
::p54::
tick(54)
do
do
registers[4] = (1899447441)
end

end
::p55::
do
do
a = 1
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p56::
do
do
a = (upvalues[1]);
(registers)[2] = a[2][a[1]]
end

end
goto p34
::p59::
do
do
registers[1] = (upvalues[0])
end

end
::p60::
do
do
registers[2] = (770255983)
end

end
::p61::
do
do
registers[3] = (275423344)
end

end
goto p54
end
end
