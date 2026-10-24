
-- Function f256; 122 recovered instruction blocks.
F.f256=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f256",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f256 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p110
::p2::
tick(2)
do
do
(registers)[15] = registers[8]
end

end
::p3::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p56
::p6::
tick(6)
do
do
registers[30] = (250)
end

end
::p7::
do
do
(registers)[31] = registers[12]
end

end
::p8::
do
do
(registers)[32] = nil
end

end
::p9::
do
do
(registers)[33] = registers[10]
end

end
::p10::
do
do
a = (24)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p11::
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
::p12::
tick(12)
do
do
a = 18
z = (2)
q = 0
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
::p13::
do
do
a = 16
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p14::
do
do
(registers)[17] = upvalues[0][151]
end

end
goto p160
::p16::
tick(16)
do
do
(registers)[23] = upvalues[0][154]
end

end
::p17::
do
do
registers[24] = (registers[19] - registers[14])
end

end
::p18::
do
do
registers[24] = (registers[24] * 0.5)
end

end
goto p220
::p21::
tick(21)
do
do
registers[31] = (140)
end

end
::p22::
do
do
registers[32] = (130)
end

end
::p23::
do
do
a = (24)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p24::
do
do
(registers)[24] = upvalues[0][131]
end

end
::p25::
do
do
(registers)[25] = registers[22]
end

end
goto p46
::p33::
tick(33)
do
do
registers[7] = registers[7] + 0.5
end

end
::p34::
do
do
a = 6
z = (2)
q = 0
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
::p35::
do
do
a = 4
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p36::
do
do
(registers)[5] = upvalues[0][28]
end

end
::p37::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p38::
do
do
registers[6] = (registers[5] ~= registers[0])
end

end
goto p91
::p46::
do
do
(registers)[26] = registers[23]
end

end
::p47::
do
do
registers[27] = (240)
end

end
::p48::
do
do
registers[28] = (160)
end

end
::p49::
do
do
registers[29] = (180)
end

end
goto p6
::p51::
tick(51)
do
do
(registers)[6] = upvalues[0][154]
end

end
::p52::
do
do
(registers)[7] = 1 / registers[5]
end

end
::p53::
do
do
registers[7] = registers[7] + 0.5
end

end
::p54::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p115
::p56::
do
do
registers[15] = (0)
end

end
goto p123
::p73::
tick(73)
do
do
(registers)[13] = registers[6]
end

end
::p74::
do
do
(registers)[14] = registers[7]
end

end
::p75::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p195
::p77::
tick(77)
do
do
registers[6] = (0)
end

end
goto p180
::p79::
tick(79)
do
do
registers[18] = registers[18] + 0.5
end

end
::p80::
do
do
a = 17
z = (2)
q = 0
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
::p81::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p82::
do
do
(registers)[16] = upvalues[0][151]
end

end
::p83::
do
do
registers[17] = (2)
end

end
::p84::
do
do
(registers)[18] = upvalues[0][154]
end

end
::p85::
do
do
(registers)[19] = 3 * registers[3]
end

end
::p86::
do
do
registers[19] = registers[19] + 0.5
end

end
goto p12
::p91::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p213
::p99::
tick(99)
do
do
registers[20] = (upvalues[3])
end

end
::p100::
do
do
(registers)[21] = registers[18]
end

end
::p101::
do
do
(registers)[22] = registers[19]
end

end
::p102::
do
do
(registers)[23] = registers[1]
end

end
::p103::
branch_taken=false
do
do
if registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p207 end
goto p121
::p105::
tick(105)
branch_taken=false
do
do
if registers[2] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p165 end
::p108::
tick(108)
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
::p110::
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
::p111::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p112::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p113::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p105
::p115::
tick(115)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p180 end
goto p77
::p117::
tick(117)
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p118::
do
do
registers[12] = (upvalues[2])
end

end
::p119::
do
do
registers[13] = ("r")
end

end
goto p156
::p121::
do
do
registers[23] = ("Top Right")
end

end
goto p207
::p123::
do
do
(registers)[16] = registers[9]
end

end
::p124::
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p224
::p132::
tick(132)
do
do
registers[16] = (4)
end

end
::p133::
do
do
(registers)[17] = upvalues[0][154]
end

end
::p134::
do
do
(registers)[18] = 6 * registers[3]
end

end
goto p79
::p136::
tick(136)
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p115 end
goto p51
::p139::
tick(139)
do
do
(registers)[15] = registers[10]
end

end
::p140::
do
do
a = 13
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
::p141::
do
do
(registers)[15] = upvalues[0][151]
end

end
goto p132
::p143::
tick(143)
do
do
a = 10
top = a + 7 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p144::
do
do
registers[11] = (upvalues[2])
end

end
::p145::
do
do
(registers)[12] = nil
end

end
goto p117
::p156::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p157::
do
do
(registers)[13] = upvalues[0][136]
end

end
::p158::
do
do
(registers)[14] = registers[11]
end

end
goto p139
::p160::
do
do
registers[18] = (14)
end

end
::p161::
do
do
(registers)[19] = upvalues[0][154]
end

end
::p162::
do
do
(registers)[20] = 20 * registers[3]
end

end
::p163::
do
do
registers[20] = registers[20] + 0.5
end

end
goto p188
::p165::
do
do
registers[3] = (upvalues[1])
end

end
::p166::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p167::
do
do
(registers)[4] = upvalues[0][151]
end

end
::p168::
do
do
registers[5] = (0)
end

end
::p169::
do
do
(registers)[6] = upvalues[0][154]
end

end
::p170::
do
do
(registers)[7] = upvalues[0][67]
end

end
::p171::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p172::
do
do
registers[7] = (registers[7] * 1000)
end

end
goto p33
::p180::
do
do
(registers)[7] = upvalues[0][96]
end

end
::p181::
do
do
a = 7
z = (1)
q = 4
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
::p182::
do
do
(registers)[10] = environment["string"]
end

end
::p183::
do
do
registers[10] = (registers[10]["format"])
end

end
::p184::
do
do
registers[11] = ("Andromeda | rtt: %ims | rate: %i | %02d:%02d:%02d")
end

end
::p185::
do
do
(registers)[12] = registers[4]
end

end
goto p73
::p188::
do
do
a = 19
z = (2)
q = 0
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
::p189::
do
do
a = 17
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p190::
do
do
registers[18] = (registers[15] * 2)
end

end
::p191::
do
do
(registers)[18] = registers[13] + registers[18]
end

end
::p192::
do
do
(registers)[19] = upvalues[0][151]
end

end
::p193::
do
do
(registers)[20] = registers[17]
end

end
goto p198
::p195::
do
do
registers[14] = (0)
end

end
goto p2
::p198::
do
do
registers[21] = (registers[16] * 2)
end

end
::p199::
do
do
(registers)[21] = registers[14] + registers[21]
end

end
::p200::
do
do
a = 19
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p99
::p202::
tick(202)
do
do
(registers)[27] = registers[18]
end

end
::p203::
do
do
(registers)[28] = registers[19]
end

end
::p204::
do
do
registers[29] = (240)
end

end
::p205::
do
do
registers[30] = (110)
end

end
goto p21
::p207::
do
do
(registers)[24] = registers[3]
end

end
::p208::
do
do
a = 20
z = (5)
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
::p209::
do
do
(registers)[22] = registers[20] + registers[18]
end

end
::p210::
do
do
registers[22] = (registers[22] - registers[15])
end

end
goto p16
::p213::
do
do
(registers)[6] = registers[5] > 0
end

end
goto p136
::p216::
tick(216)
do
do
(registers)[24] = upvalues[0][128]
end

end
::p217::
do
do
(registers)[25] = registers[20]
end

end
::p218::
do
do
(registers)[26] = registers[21]
end

end
goto p202
::p220::
do
do
registers[24] = registers[24] + 0.5
end

end
::p221::
do
do
a = (23);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p222::
do
do
(registers)[23] = registers[21] + registers[23]
end

end
goto p216
::p224::
do
do
registers[16] = (0)
end

end
goto p143
end
end
