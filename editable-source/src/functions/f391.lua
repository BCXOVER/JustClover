
-- Function f391; 40 recovered instruction blocks.
F.f391=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f391",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f391 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p14
::p14::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p15::
do
do
(registers)[3] = environment["tostring"]
end

end
::p16::
do
do
(registers)[4] = registers[1]
end

end
::p17::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p100
::p42::
tick(42)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p43::
do
do
(registers)[6] = upvalues[0][151]
end

end
::p44::
do
do
registers[7] = (1)
end

end
::p45::
do
do
registers[8] = (registers[3] - registers[5])
end

end
::p46::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p47::
do
do
(registers)[7] = upvalues[0][162]
end

end
goto p86
::p67::
tick(67)
do
do
registers[8] = (0)
end

end
::p68::
do
do
registers[9] = (1)
end

end
::p69::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p70::
do
do
(registers)[6] = registers[4] * registers[6]
end

end
::p71::
do
do
registers[6] = registers[6] + 0.5
end

end
goto p42
::p73::
tick(73)
do
do
a = (8)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p74::
do
do
(registers)[10] = registers[6]
end

end
::p75::
do
do
(registers)[11] = registers[7]
end

end
::p76::
do
do
a = (8)
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
::p77::
tick(77)
do
do
registers[7] = (0)
end

end
goto p67
::p79::
tick(79)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p80::
do
do
(registers)[4] = upvalues[0][154]
end

end
::p81::
do
do
registers[5] = (#registers[1])
end

end
::p82::
do
do
registers[5] = (registers[5] * 0.5)
end

end
::p83::
do
do
registers[5] = registers[5] + 0.5
end

end
goto p104
::p86::
do
do
registers[8] = (#registers[1])
end

end
::p87::
do
do
(registers)[9] = registers[3] + registers[5]
end

end
::p88::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p73
::p100::
do
do
registers[4] = ("")
end

end
goto p110
::p104::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p105::
do
do
(registers)[5] = upvalues[0][154]
end

end
::p106::
do
do
(registers)[6] = upvalues[1]["clamp"]
end

end
::p107::
do
do
(registers)[7] = registers[2]
end

end
::p108::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p67 end
goto p77
::p110::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p111::
do
do
(registers)[1] = registers[3]
end

end
::p112::
do
do
(registers)[3] = upvalues[0][154]
end

end
::p113::
do
do
registers[4] = (#registers[1])
end

end
::p114::
do
do
registers[4] = (registers[4] * 0.5)
end

end
::p115::
do
do
registers[4] = registers[4] + 0.5
end

end
goto p79
end
end
