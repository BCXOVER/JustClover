
-- Function f451; 42 recovered instruction blocks.
F.f451=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f451",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f451 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p9
::p3::
tick(3)
do
do
(registers)[6] = registers[6] * registers[7]
end

end
::p4::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
do
do
(registers)[6] = upvalues[0][163]
end

end
goto p42
::p7::
tick(7)
do
do
registers[9] = (0)
end

end
goto p146
::p9::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p10::
do
do
(registers)[5] = upvalues[0][163]
end

end
::p11::
do
do
(registers)[6] = upvalues[0][30]
end

end
::p12::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p13::
do
do
(registers)[7] = registers[3]
end

end
::p14::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p129
::p22::
tick(22)
do
do
(registers)[10] = registers[6]
end

end
::p23::
do
do
a = (7)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p26::
tick(26)
do
do
(registers)[7] = registers[1]
end

end
::p27::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p68
::p29::
tick(29)
do
do
(registers)[9] = registers[1]
end

end
::p30::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p146 end
goto p7
::p42::
do
do
(registers)[7] = upvalues[0][30]
end

end
::p43::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p44::
do
do
(registers)[8] = registers[3]
end

end
::p45::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p70
::p61::
tick(61)
do
do
(registers)[7] = registers[7] * registers[8]
end

end
::p62::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p63::
do
do
registers[7] = registers[5] + 1
end

end
::p64::
do
do
registers[5] = registers[7] / 2
end

end
::p65::
branch_taken=false
do
do
if registers[4] ~= "Lerp" then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p135
::p68::
do
do
registers[7] = (0)
end

end
goto p73
::p70::
do
do
registers[8] = (0)
end

end
goto p61
::p73::
do
do
(registers)[8] = registers[2]
end

end
::p74::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
::p95::
do
do
registers[8] = (0)
end

end
goto p29
::p129::
do
do
registers[7] = (0)
end

end
goto p3
::p132::
tick(132)
do
do
registers[9] = (0)
end

end
goto p22
::p134::
tick(134)
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
return registers[7]
end

end
::p135::
do
do
(registers)[7] = upvalues[1]["lerp"]
end

end
::p136::
do
do
(registers)[8] = registers[1]
end

end
::p137::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p154
::p146::
do
do
registers[8] = (registers[8] - registers[9])
end

end
::p147::
do
do
(registers)[8] = registers[8] * registers[5]
end

end
::p148::
do
do
(registers)[7] = registers[7] + registers[8]
end

end
goto p134
::p154::
do
do
registers[8] = (0)
end

end
::p155::
do
do
(registers)[9] = registers[2]
end

end
::p156::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p132
end
end
