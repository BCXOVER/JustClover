
-- Function f358; 60 recovered instruction blocks.
F.f358=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f358",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f358 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p140
::p2::
tick(2)
do
do
(registers)[9] = registers[6]
end

end
::p3::
do
do
(registers)[10] = registers[7]
end

end
::p4::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p5::
do
do
(registers)[4] = registers[8]
end

end
goto p82
::p15::
tick(15)
do
do
(registers)[6] = upvalues[1][151]
end

end
::p16::
do
do
registers[7] = (1)
end

end
::p17::
do
do
registers[8] = (registers[4] - registers[5])
end

end
::p18::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p19::
do
do
(registers)[7] = upvalues[1][162]
end

end
::p20::
do
do
registers[8] = (16)
end

end
::p21::
do
do
(registers)[9] = registers[4] + registers[5]
end

end
::p22::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p23::
do
do
(registers)[8] = upvalues[0]["random_int"]
end

end
goto p2
::p26::
tick(26)
branch_taken=false
do
do
if registers[5] ~= "Smart" then
    branch_taken=true
end
end

end
if branch_taken then goto p158 end
goto p117
::p44::
tick(44)
do
do
registers[6] = (upvalues[2])
end

end
::p45::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
goto p128
::p47::
tick(47)
do
do
a = (upvalues[3]);
(registers)[5] = a[2][a[1]]
end

end
::p48::
branch_taken=false
do
do
if registers[5] ~= "Random" then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p102
::p50::
tick(50)
do
do
registers[7] = (0)
end

end
::p51::
tick(51)
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p52::
do
do
registers[6] = registers[6] % 4
end

end
::p53::
branch_taken=false
do
do
if registers[6] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p125
::p82::
tick(82)
do
do
(registers)[5] = upvalues[0]["clamp"]
end

end
::p83::
do
do
(registers)[6] = upvalues[1][154]
end

end
::p84::
do
do
(registers)[7] = registers[4]
end

end
::p85::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p94
::p88::
tick(88)
do
do
registers[8] = (45)
end

end
::p89::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p90::
do
do
(registers)[6] = upvalues[1][154]
end

end
::p91::
do
do
(registers)[7] = registers[3]
end

end
::p92::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p50
::p94::
do
do
registers[7] = (1)
end

end
::p95::
do
do
registers[8] = (16)
end

end
::p96::
do
do
a = (5)
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
::p102::
do
do
registers[5] = (upvalues[5])
end

end
::p103::
do
do
(registers)[6] = registers[4]
end

end
::p104::
do
do
(registers)[7] = registers[2]
end

end
::p105::
do
do
registers[8] = (100)
end

end
::p106::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p15
::p117::
do
do
registers[5] = (upvalues[4])
end

end
::p118::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p119::
do
do
(registers)[4] = registers[4] + registers[5]
end

end
goto p82
::p121::
tick(121)
do
do
registers[5] = (upvalues[5])
end

end
::p122::
do
do
(registers)[6] = registers[4]
end

end
::p123::
do
do
(registers)[7] = registers[2]
end

end
goto p88
::p125::
do
do
registers[4] = (registers[4] - registers[5])
end

end
goto p82
::p128::
tick(128)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p129::
do
do
registers[6] = (1)
end

end
::p130::
do
do
registers[7] = (16)
end

end
::p131::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p132::
do
do
a = (upvalues[3]);
(registers)[5] = a[2][a[1]]
end

end
goto p26
::p136::
branch_taken=false
do
do
if registers[6] ~= 2 then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
::p137::
do
do
(registers)[4] = registers[4] + registers[5]
end

end
goto p82
::p140::
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
::p141::
do
do
(registers)[4] = upvalues[0]["clamp"]
end

end
::p142::
do
do
(registers)[5] = upvalues[1][154]
end

end
::p151::
do
do
(registers)[6] = registers[1]
end

end
::p152::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p44
::p158::
do
do
a = (upvalues[3]);
(registers)[5] = a[2][a[1]]
end

end
::p159::
branch_taken=false
do
do
if registers[5] ~= "Fluctuate" then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p121
end
end
