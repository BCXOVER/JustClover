
-- Function f510; 25 recovered instruction blocks.
F.f510=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f510",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f510 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p53
::p14::
tick(14)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p20
::p16::
tick(16)
do
do
(registers)[5] = registers[2]
end

end
::p18::
tick(18)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p35
::p20::
do
do
registers[4] = (0)
end

end
goto p63
::p22::
tick(22)
do
do
registers[4] = (1)
end

end
goto p14
::p24::
tick(24)
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
return registers[5]
end

end
::p35::
do
do
a = (registers)
z = 5
end

end
::p36::
do
do
q = registers
m = 4
q = (q[m])
end

end
::p37::
do
do
(a)[z] = q
end

end
goto p24
::p53::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p54::
do
do
(registers)[4] = environment["type"]
end

end
::p55::
do
do
(registers)[5] = registers[2]
end

end
::p56::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p57::
branch_taken=false
do
do
if registers[4] ~= "boolean" then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p65
::p59::
tick(59)
do
do
registers[4.0] = (registers[2] - registers[1])
end

end
::p60::
do
do
(registers)[4] = registers[4] * registers[3]
end

end
::p61::
do
do
(registers)[4] = registers[1] + registers[4]
end

end
goto p68
::p63::
do
do
(registers)[2] = registers[4]
end

end
goto p59
::p65::
do
do
(registers)[4] = registers[2]
end

end
::p66::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p22
::p68::
do
do
(registers)[5] = upvalues[0][161]
end

end
::p69::
do
do
registers[6] = (registers[2] - registers[4])
end

end
::p70::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p71::
do
do
(registers)[5] = (registers[5] < 0.01)
end

end
::p72::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p16
end
end
