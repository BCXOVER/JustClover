
-- Function f320; 65 recovered instruction blocks.
F.f320=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f320",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f320 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p128
::p4::
tick(4)
do
do
(registers)[11] = registers[11] * registers[12]
end

end
::p5::
do
do
registers[11] = registers[11] + 0.5
end

end
::p6::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p7::
do
do
registers[10] = (registers[2] - registers[10])
end

end
goto p151
::p10::
tick(10)
branch_taken=false
do
do
if registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p65
::p12::
tick(12)
do
do
registers[12] = (0)
end

end
goto p4
::p20::
tick(20)
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p91 end
goto p147
::p23::
tick(23)
do
do
(registers)[14] = registers[10] + registers[14]
end

end
::p24::
do
do
(registers)[15] = upvalues[0][154]
end

end
::p25::
do
do
(registers)[16] = registers[13]
end

end
goto p20
::p28::
tick(28)
do
do
(registers)[20] = upvalues[0][131]
end

end
::p29::
do
do
(registers)[21] = registers[14]
end

end
::p30::
do
do
(registers)[22] = registers[15]
end

end
::p31::
do
do
(registers)[23] = registers[17]
end

end
goto p99
::p42::
tick(42)
do
do
registers[20] = (registers[1]["kind"])
end

end
::p43::
branch_taken=false
do
do
if registers[20] ~= "fatal" then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p134
::p45::
tick(45)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p12
::p55::
tick(55)
do
do
registers[17] = (230)
end

end
::p56::
do
do
registers[18] = (220)
end

end
::p57::
do
do
registers[19] = (210)
end

end
goto p42
::p59::
tick(59)
do
do
registers[15] = (registers[4] - registers[15])
end

end
::p60::
do
do
registers[15] = (registers[15] * 0.5)
end

end
::p61::
do
do
registers[15] = registers[15] + 0.5
end

end
::p62::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p23
::p65::
do
do
registers[17] = (255)
end

end
::p68::
do
do
registers[18] = (0)
end

end
::p69::
do
do
registers[19] = (255)
end

end
::p70::
do
do
a = 16
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p55
::p72::
tick(72)
do
do
registers[15] = (0)
end

end
goto p59
::p74::
tick(74)
do
do
(registers)[12] = upvalues[0][136]
end

end
::p75::
do
do
(registers)[13] = registers[7]
end

end
::p76::
do
do
(registers)[14] = registers[11]
end

end
::p77::
do
do
a = 12
z = (3)
q = 3
if z == 0 then

else
    top = (a + z - 1)
end
m, x = nil
if z ~= 1 then
    m, x = pack_returns(registers[a](unpack_range(top, registers, a + 1)))
else
    m, x = pack_returns(registers[a]())
end
if q ~= 1 then
    if q ~= 0 then
        m = a + q - 2
        top = (m + 1)
    else
        m = m + a - 1
        top = m
    end
    z = 0
    for f = a, m do
        z = (z + 1);
        (registers)[f] = x[z]
    end
else
    top = a - 1
end
end

end
::p78::
do
do
(registers)[14] = upvalues[0][154]
end

end
::p79::
do
do
(registers)[15] = registers[12]
end

end
::p89::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p72
::p91::
tick(91)
do
do
registers[16] = (registers[5] - registers[16])
end

end
::p92::
do
do
registers[16] = (registers[16] * 0.5)
end

end
::p93::
do
do
registers[16] = registers[16] + 0.5
end

end
::p94::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p95::
do
do
(registers)[15] = registers[3] + registers[15]
end

end
::p96::
do
do
(registers)[16] = upvalues[2]["clamp"]
end

end
::p97::
do
do
registers[17] = (registers[1]["a"])
end

end
goto p10
::p99::
do
do
(registers)[24] = registers[18]
end

end
::p100::
do
do
(registers)[25] = registers[19]
end

end
::p101::
do
do
(registers)[26] = registers[16]
end

end
::p102::
do
do
(registers)[27] = registers[7]
end

end
::p120::
do
do
registers[28] = (0)
end

end
::p121::
do
do
(registers)[29] = registers[11]
end

end
::p122::
do
do
a = (20)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p123::
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
::p124::
tick(124)
do
do
(registers)[13] = registers[6]
end

end
::p125::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p126::
do
do
(registers)[12] = registers[9]
end

end
goto p45
::p128::
do
do
a = {
    ...,
}
for f = 1, 9, 1 do
    registers[f] = (a[f])
end
end

end
::p129::
do
do
(registers)[10] = upvalues[0][154]
end

end
::p130::
do
do
(registers)[11] = upvalues[1]["px"]
end

end
::p131::
do
do
registers[12] = (26)
end

end
goto p124
::p134::
do
do
registers[19] = (55)
end

end
::p135::
do
do
registers[18] = (45)
end

end
::p136::
do
do
registers[17] = (220)
end

end
goto p28
::p145::
tick(145)
do
do
registers[11] = ("")
end

end
goto p74
::p147::
do
do
registers[16] = (8)
end

end
goto p91
::p151::
do
do
registers[11] = (registers[1]["text"])
end

end
::p152::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p145
end
end
