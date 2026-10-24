
-- Function f211; 16 recovered instruction blocks.
F.f211=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f211",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f211 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p56
::p3::
tick(3)
do
do
(registers)[2] = upvalues[2][30]
end

end
::p4::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p5::
do
do
a = (upvalues[1]);
(registers)[3] = a[2][a[1]]
end

end
::p6::
do
do
(registers)[2] = registers[2] < registers[3]
end

end
goto p51
::p11::
tick(11)
do
do
(registers)[2] = upvalues[2][30]
end

end
::p12::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p13::
do
do
registers[2] = registers[2] + 0.12
end

end
::p14::
do
do
a = upvalues[1]
a[2][a[1]] = registers[2]
end

end
::p15::
do
do
registers[2] = (true)
end

end
goto p52
::p51::
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
::p52::
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
::p53::
tick(53)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p54::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p11
::p56::
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
::p57::
do
do
registers[2] = (upvalues[0])
end

end
::p58::
do
do
(registers)[3] = registers[1]
end

end
goto p53
end
end
