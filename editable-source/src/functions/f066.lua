
-- Function f66; 511 recovered instruction blocks.
F.f66=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f66",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f66 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p508
::p2::
tick(2)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p3::
do
do
registers[18] = (0)
end

end
::p4::
do
do
registers[19] = (0)
end

end
goto p526
::p7::
tick(7)
do
do
registers[14] = (5)
end

end
::p8::
do
do
registers[15] = (4)
end

end
::p9::
do
do
registers[16] = (7)
end

end
::p10::
do
do
registers[17] = (6)
end

end
::p11::
do
do
registers[18] = (9)
end

end
::p12::
do
do
registers[19] = (8)
end

end
::p13::
do
do
registers[20] = (11)
end

end
::p14::
do
do
registers[21] = (10)
end

end
goto p660
::p16::
tick(16)
do
do
registers[16] = registers[14] > registers[14]
end

end
goto p761
::p18::
tick(18)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p19::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p120
::p21::
tick(21)
do
do
(registers)[6] = environment["setmetatable"]
end

end
::p22::
do
do
(registers)[7] = environment["getmetatable"]
end

end
::p23::
do
do
(registers)[8] = environment["next"]
end

end
::p24::
do
do
registers[9] = new_frame(15)
end

end
::p25::
do
do
registers[10] = new_frame(15)
end

end
::p26::
do
do
registers[10][0] = 0
end

end
::p27::
do
do
registers[11] = (1)
end

end
::p28::
do
do
registers[12] = (2)
end

end
goto p106
::p30::
tick(30)
do
do
registers[13][0] = 4
end

end
::p31::
do
do
registers[14] = (5)
end

end
::p32::
do
do
registers[15] = (6)
end

end
::p33::
do
do
registers[16] = (7)
end

end
::p34::
do
do
registers[17] = (0)
end

end
::p35::
do
do
registers[18] = (1)
end

end
::p36::
do
do
registers[19] = (2)
end

end
goto p366
::p38::
tick(38)
do
do
(registers)[13] = registers[6]
end

end
::p39::
do
do
(registers)[14] = registers[12]
end

end
::p40::
do
do
(registers)[15] = nil
end

end
::p41::
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p272
::p43::
tick(43)
do
do
registers[16] = (7)
end

end
::p44::
do
do
registers[17] = (4)
end

end
::p45::
do
do
registers[18] = (5)
end

end
::p46::
do
do
registers[19] = (2)
end

end
goto p377
::p48::
tick(48)
do
do
registers[26] = (9)
end

end
::p49::
do
do
registers[27] = (10)
end

end
::p50::
do
do
registers[28] = (11)
end

end
::p51::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p643
::p53::
tick(53)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p54::
do
do
(registers)[22] = registers[21]
end

end
::p55::
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
return registers[22]
end

end
::p56::
tick(56)
do
do
registers[25] = (12)
end

end
::p57::
do
do
registers[26] = (13)
end

end
::p58::
do
do
registers[27] = (10)
end

end
goto p433
::p60::
tick(60)
do
do
registers[26] = (13)
end

end
::p61::
do
do
registers[27] = (12)
end

end
::p62::
do
do
a = (12)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p63::
do
do
registers[13] = new_frame(15)
end

end
goto p30
::p65::
tick(65)
do
do
(registers)[15] = registers[16]
end

end
::p66::
do
do
(registers)[16] = registers[14] + registers[14]
end

end
::p67::
do
do
(registers)[17] = registers[14] * registers[14]
end

end
::p68::
do
do
registers[17] = (registers[17] / registers[14])
end

end
goto p112
::p70::
tick(70)
do
do
registers[26] = (13)
end

end
::p71::
do
do
registers[27] = (2)
end

end
::p72::
do
do
registers[28] = (3)
end

end
goto p185
::p74::
tick(74)
do
do
(registers)[27] = registers[5]
end

end
::p75::
do
do
(registers)[28] = registers[1]
end

end
::p76::
do
do
(registers)[29] = registers[25]
end

end
goto p650
::p78::
tick(78)
do
do
registers[28] = (3)
end

end
::p79::
do
do
registers[29] = (4)
end

end
::p80::
do
do
registers[30] = (5)
end

end
goto p233
::p82::
tick(82)
do
do
registers[13]["__call"] = (registers[12])
end

end
::p83::
do
do
registers[13]["__add"] = (registers[12])
end

end
::p84::
do
do
registers[13]["__sub"] = (registers[12])
end

end
goto p148
::p86::
tick(86)
do
do
registers[27] = (12)
end

end
::p87::
do
do
registers[28] = (11)
end

end
::p88::
do
do
registers[29] = (10)
end

end
goto p454
::p90::
tick(90)
do
do
registers[23] = (14)
end

end
::p91::
do
do
registers[24] = (15)
end

end
::p92::
do
do
registers[25] = (8)
end

end
::p93::
do
do
registers[26] = (9)
end

end
::p94::
do
do
registers[27] = (10)
end

end
::p95::
do
do
registers[28] = (11)
end

end
goto p215
::p98::
tick(98)
do
do
(registers[14])[registers[14]] = registers[16]
end

end
::p99::
do
do
(registers)[12] = registers[3]
end

end
::p100::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p626
::p102::
tick(102)
do
do
registers[23] = (8)
end

end
::p103::
do
do
registers[24] = (15)
end

end
::p104::
do
do
registers[25] = (14)
end

end
goto p60
::p106::
do
do
registers[13] = (3)
end

end
::p107::
do
do
registers[14] = (4)
end

end
::p108::
do
do
registers[15] = (5)
end

end
goto p208
::p110::
tick(110)
do
do
(registers)[16] = registers[14]
end

end
goto p65
::p112::
do
do
(registers)[18] = (registers[14] ^ registers[14])
end

end
::p113::
do
do
registers[17] = registers[17] % registers[18]
end

end
::p114::
do
do
registers[15] = (registers[16] - registers[17])
end

end
::p115::
do
do
registers[16] = registers[14] == registers[14]
end

end
::p116::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p390 end
goto p146
::p118::
tick(118)
do
do
(registers)[16] = registers[11]
end

end
::p119::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
return registers[16]()
end

end
::p120::
branch_taken=false
do
do
if registers[13] == registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p179 end
goto p118
::p122::
tick(122)
do
do
registers[22] = (5)
end

end
::p123::
do
do
registers[23] = (#registers[1])
end

end
::p124::
do
do
registers[24] = (1)
end

end
::p125::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 22
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p383 end
::p126::
tick(126)
do
do
registers[19] = (1)
end

end
::p127::
do
do
registers[20.0] = (4)
end

end
::p128::
do
do
a = 17
z = (4)
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
::p129::
do
do
a = (12)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p130::
do
do
registers[13] = (1)
end

end
::p131::
do
do
registers[14] = (4)
end

end
goto p529
::p133::
tick(133)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[18 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p560 end
goto p2
::p136::
tick(136)
do
do
registers[23] = (14)
end

end
::p137::
do
do
registers[24] = (15)
end

end
::p138::
do
do
registers[25] = (8)
end

end
goto p48
::p140::
tick(140)
do
do
registers[2] = (registers[2]["len"])
end

end
::p141::
do
do
registers[3] = ("(\186\248")
end

end
::p142::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p143::
do
do
(registers)[2] = (registers[2] - 252)
end

end
::p144::
do
do
(registers)[2] = (registers[2] - 352)
end

end
goto p297
::p146::
do
do
registers[16] = (registers[14] ~= registers[14])
end

end
goto p390
::p148::
do
do
registers[13]["__mul"] = (registers[12])
end

end
::p149::
do
do
registers[13]["__div"] = (registers[12])
end

end
::p150::
do
do
registers[13]["__mod"] = (registers[12])
end

end
::p151::
do
do
registers[13]["__pow"] = (registers[12])
end

end
::p152::
do
do
registers[13]["__eq"] = (registers[12])
end

end
::p153::
do
do
registers[13]["__lt"] = (registers[12])
end

end
::p154::
do
do
registers[13]["__le"] = (registers[12])
end

end
::p155::
do
do
registers[13]["__concat"] = (registers[12])
end

end
::p156::
do
do
registers[13]["__index"] = (registers[12])
end

end
::p157::
do
do
registers[13]["__newindex"] = (registers[12])
end

end
::p158::
do
do
registers[13]["__metatable"] = false
end

end
::p159::
do
do
(registers)[14] = registers[6]
end

end
::p160::
do
do
registers[15] = {
}
end

end
goto p444
::p171::
tick(171)
do
do
registers[12] = (3)
end

end
::p172::
do
do
registers[13] = (0)
end

end
::p173::
do
do
registers[14] = (1)
end

end
goto p486
::p175::
tick(175)
do
do
(registers)[13] = registers[11]
end

end
::p176::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
return registers[13]()
end

end
::p177::
tick(177)
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p110
::p179::
do
do
registers[12] = new_frame(4)
end

end
::p180::
do
do
for f = 13, 16, 1 do
    (registers)[f] = nil
end
end

end
::p181::
do
do
(registers)[17] = registers[5]
end

end
::p182::
do
do
(registers)[18] = registers[1]
end

end
goto p126
::p185::
do
do
registers[29] = (0)
end

end
::p186::
do
do
registers[30] = (1)
end

end
::p187::
do
do
registers[31] = (6)
end

end
::p188::
do
do
registers[32] = (7)
end

end
::p189::
do
do
registers[33] = (4)
end

end
goto p600
::p191::
tick(191)
do
do
(registers)[14] = registers[7]
end

end
::p192::
do
do
(registers)[15] = registers[12]
end

end
::p193::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p194::
branch_taken=false
do
do
if registers[14] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p175
::p197::
tick(197)
do
do
registers[21] = (11)
end

end
::p198::
do
do
registers[22] = (12)
end

end
::p199::
do
do
registers[23] = (13)
end

end
::p200::
do
do
registers[24] = (14)
end

end
::p201::
do
do
registers[25] = (15)
end

end
::p202::
do
do
a = (10)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p203::
do
do
registers[9][0] = (registers[10])
end

end
::p204::
do
do
registers[10] = new_frame(15)
end

end
goto p316
::p206::
tick(206)
do
do
registers[13] = registers[22] % 256
end

end
goto p133
::p208::
do
do
registers[16] = (6)
end

end
::p209::
do
do
registers[17] = (7)
end

end
::p210::
do
do
registers[18] = (8)
end

end
::p211::
do
do
registers[19] = (9)
end

end
::p212::
do
do
registers[20] = (10)
end

end
goto p197
::p215::
do
do
registers[29] = (4)
end

end
::p216::
do
do
registers[30] = (5)
end

end
::p217::
do
do
registers[31] = (6)
end

end
::p218::
do
do
registers[32] = (7)
end

end
::p219::
do
do
registers[33] = (0)
end

end
goto p261
::p221::
tick(221)
branch_taken=false
do
do
a = (16)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p512 end
goto p18
::p223::
tick(223)
do
do
registers[17] = registers[2] % 256
end

end
::p224::
do
do
(registers[12])[registers[16]] = registers[17]
end

end
::p225::
do
do
registers[2] = registers[2] / 256
end

end
goto p568
::p227::
tick(227)
do
do
registers[19] = (4)
end

end
::p228::
do
do
registers[20] = (11)
end

end
::p229::
do
do
registers[21] = (10)
end

end
::p230::
do
do
registers[22] = (9)
end

end
goto p102
::p233::
do
do
registers[31] = (6)
end

end
::p234::
do
do
registers[32] = (7)
end

end
::p235::
do
do
a = (17)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p236::
do
do
registers[18] = new_frame(15)
end

end
::p237::
do
do
registers[18][0] = 9
end

end
goto p665
::p239::
tick(239)
do
do
registers[24] = (15)
end

end
::p240::
do
do
registers[25] = (12)
end

end
::p241::
do
do
registers[26] = (13)
end

end
::p242::
do
do
registers[27] = (10)
end

end
::p243::
do
do
registers[28] = (11)
end

end
::p244::
do
do
registers[29] = (8)
end

end
::p245::
do
do
registers[30] = (9)
end

end
goto p752
::p247::
tick(247)
do
do
registers[23] = (14)
end

end
::p248::
do
do
registers[24] = (15)
end

end
::p249::
do
do
registers[25] = (12)
end

end
goto p70
::p252::
tick(252)
do
do
registers[24] = (15)
end

end
::p253::
do
do
registers[25] = (12)
end

end
::p254::
do
do
registers[26] = (13)
end

end
goto p712
::p256::
tick(256)
do
do
registers[19] = "" .. registers[14]
end

end
::p257::
do
do
a = (16)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p258::
do
do
(registers[14])[registers[14]] = registers[14]
end

end
::p259::
do
do
(registers)[16] = registers[14][registers[14]]
end

end
goto p98
::p261::
do
do
registers[34] = (1)
end

end
::p262::
do
do
registers[35] = (2)
end

end
::p263::
do
do
registers[36] = (3)
end

end
::p264::
do
do
a = (21)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p265::
do
do
registers[22] = new_frame(15)
end

end
::p266::
do
do
registers[22][0] = 13
end

end
::p267::
do
do
registers[23] = (12)
end

end
goto p400
::p270::
tick(270)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[19 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p678 end
goto p590
::p272::
do
do
registers[13] = {
}
end

end
::p273::
do
do
registers[14] = {
}
end

end
::p274::
do
do
registers[15] = (false)
end

end
goto p670
::p276::
tick(276)
do
do
(registers)[16] = registers[14]
end

end
::p277::
do
do
(registers)[17] = registers[14]
end

end
::p278::
do
do
(registers)[18] = registers[14]
end

end
goto p386
::p280::
tick(280)
do
do
a = (D.f67)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[12] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p281::
do
do
registers[13] = {
}
end

end
::p282::
do
do
registers[13]["__tostring"] = (registers[11])
end

end
goto p82
::p284::
tick(284)
do
do
registers[20][0] = 11
end

end
::p285::
do
do
registers[21] = (10)
end

end
::p286::
do
do
registers[22] = (9)
end

end
::p287::
do
do
registers[23] = (8)
end

end
::p288::
do
do
registers[24] = (15)
end

end
::p289::
do
do
registers[25] = (14)
end

end
goto p595
::p291::
tick(291)
do
do
registers[17] = new_frame(15)
end

end
::p292::
do
do
registers[17][0] = 8
end

end
::p293::
do
do
registers[18] = (9)
end

end
::p294::
do
do
registers[19] = (10)
end

end
::p295::
do
do
registers[20] = (11)
end

end
goto p423
::p297::
do
do
(registers)[2] = (registers[2] - 0)
end

end
::p298::
do
do
(registers)[2] = (registers[2] - 442)
end

end
::p299::
do
do
registers[2] = registers[2] + 212
end

end
goto p479
::p316::
do
do
registers[10][0] = 1
end

end
::p317::
do
do
registers[11] = (0)
end

end
::p318::
do
do
registers[12] = (3)
end

end
::p319::
do
do
registers[13] = (2)
end

end
goto p7
::p321::
tick(321)
do
do
(registers)[17] = registers[14]
end

end
::p322::
do
do
(registers)[18] = registers[14]
end

end
::p323::
do
do
a = 16
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p324::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p177 end
::p326::
do
do
(registers)[16] = registers[14]
end

end
goto p177
::p328::
tick(328)
do
do
registers[27] = (0)
end

end
::p329::
do
do
registers[28] = (3)
end

end
::p330::
do
do
registers[29] = (2)
end

end
::p331::
do
do
registers[30] = (5)
end

end
goto p636
::p333::
tick(333)
do
do
registers[31] = (4)
end

end
::p334::
do
do
registers[32] = (7)
end

end
::p335::
do
do
registers[33] = (6)
end

end
::p336::
do
do
registers[34] = (1)
end

end
::p337::
do
do
registers[35] = (0)
end

end
::p338::
do
do
registers[36] = (3)
end

end
::p339::
do
do
registers[37] = (2)
end

end
goto p732
::p341::
tick(341)
do
do
(registers)[15] = registers[16]
end

end
::p342::
do
do
(registers)[16] = registers[14]
end

end
::p343::
do
do
(registers)[17] = registers[14]
end

end
::p344::
do
do
(registers)[18] = registers[14]
end

end
::p345::
do
do
(registers)[19] = registers[14]
end

end
::p346::
do
do
(registers)[20] = registers[14]
end

end
::p347::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p613
::p355::
tick(355)
do
do
registers[30] = (1)
end

end
::p356::
do
do
registers[31] = (0)
end

end
::p357::
do
do
registers[32] = (7)
end

end
::p358::
do
do
registers[33] = (6)
end

end
::p359::
do
do
registers[34] = (5)
end

end
::p360::
do
do
registers[35] = (4)
end

end
::p361::
do
do
a = (20)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p362::
do
do
registers[21] = new_frame(15)
end

end
::p363::
do
do
registers[21][0] = 12
end

end
::p364::
do
do
registers[22] = (13)
end

end
goto p90
::p366::
do
do
registers[20] = (3)
end

end
::p367::
do
do
registers[21] = (12)
end

end
::p368::
do
do
registers[22] = (13)
end

end
goto p136
::p377::
do
do
registers[20] = (3)
end

end
::p378::
do
do
registers[21] = (0)
end

end
::p379::
do
do
registers[22] = (1)
end

end
::p380::
do
do
registers[23] = (14)
end

end
goto p239
::p383::
tick(383)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[22 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p519 end
goto p53
::p386::
do
do
a = 18
z = (1)
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
::p387::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p388::
do
do
a = (D.f68)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[16] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
goto p321
::p390::
do
do
(registers)[15] = registers[16]
end

end
::p391::
do
do
(registers)[16] = registers[14] < registers[14]
end

end
::p392::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p761 end
goto p16
::p400::
do
do
registers[24] = (15)
end

end
::p401::
do
do
registers[25] = (14)
end

end
::p402::
do
do
registers[26] = (9)
end

end
goto p631
::p419::
tick(419)
do
do
a = (10)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p420::
do
do
registers[11] = new_frame(15)
end

end
::p421::
do
do
registers[11][0] = 2
end

end
goto p171
::p423::
do
do
registers[21] = (12)
end

end
::p424::
do
do
registers[22] = (13)
end

end
::p425::
do
do
registers[23] = (14)
end

end
::p426::
do
do
registers[24] = (15)
end

end
::p427::
do
do
registers[25] = (0)
end

end
::p428::
do
do
registers[26] = (1)
end

end
::p429::
do
do
registers[27] = (2)
end

end
goto p78
::p431::
tick(431)
do
do
(registers[17])[registers[22]] = registers[23]
end

end
goto p270
::p433::
do
do
registers[28] = (11)
end

end
::p434::
do
do
registers[29] = (8)
end

end
::p435::
do
do
registers[30] = (9)
end

end
::p436::
do
do
registers[31] = (6)
end

end
::p437::
do
do
registers[32] = (7)
end

end
::p438::
do
do
registers[33] = (4)
end

end
::p439::
do
do
registers[34] = (5)
end

end
::p440::
do
do
registers[35] = (2)
end

end
::p441::
do
do
registers[36] = (3)
end

end
::p442::
do
do
registers[37] = (0)
end

end
goto p620
::p444::
do
do
(registers)[16] = registers[13]
end

end
::p445::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p446::
do
do
(registers)[15] = registers[14]
end

end
goto p276
::p448::
tick(448)
do
do
registers[19] = (10)
end

end
::p449::
do
do
registers[20] = (11)
end

end
::p450::
do
do
registers[21] = (8)
end

end
::p451::
do
do
registers[22] = (9)
end

end
::p452::
do
do
registers[23] = (14)
end

end
goto p252
::p454::
do
do
registers[30] = (9)
end

end
::p455::
do
do
registers[31] = (8)
end

end
::p456::
do
do
a = (16)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p291
::p470::
tick(470)
do
do
registers[25] = (14)
end

end
::p471::
do
do
registers[26] = (9)
end

end
::p472::
do
do
registers[27] = (8)
end

end
::p473::
do
do
registers[28] = (11)
end

end
::p474::
do
do
registers[29] = (10)
end

end
::p475::
do
do
a = (14)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p476::
do
do
registers[15] = new_frame(15)
end

end
::p477::
do
do
registers[15][0] = 6
end

end
goto p43
::p479::
do
do
registers[2] = 1156302040 + registers[2]
end

end
::p480::
do
do
(registers)[3] = (registers)
end

end
::p481::
do
do
(registers)[4] = environment["string"]
end

end
::p482::
do
do
registers[4] = (registers[4]["char"])
end

end
::p483::
do
do
(registers)[5] = environment["string"]
end

end
::p484::
do
do
registers[5] = (registers[5]["byte"])
end

end
goto p21
::p486::
do
do
registers[15] = (6)
end

end
::p487::
do
do
registers[16] = (7)
end

end
::p488::
do
do
registers[17] = (4)
end

end
::p489::
do
do
registers[18] = (5)
end

end
goto p448
::p491::
tick(491)
do
do
registers[16] = (registers[14] >= registers[14])
end

end
goto p341
::p493::
tick(493)
do
do
(registers)[14] = 4 * registers[14]
end

end
::p494::
do
do
registers[14] = registers[14] + 1
end

end
::p495::
do
do
registers[15] = (registers[12][2])
end

end
::p496::
do
do
registers[15] = registers[15] % 128
end

end
::p497::
do
do
(registers)[15] = 2 * registers[15]
end

end
::p498::
do
do
(registers)[15] = (registers[15] - 1)
end

end
::p499::
do
do
registers[16] = {
}
end

end
::p500::
do
do
registers[17] = {
}
end

end
goto p515
::p502::
tick(502)
do
do
registers[26] = (13)
end

end
::p503::
do
do
registers[27] = (12)
end

end
::p504::
do
do
registers[28] = (11)
end

end
::p505::
do
do
registers[29] = (10)
end

end
::p506::
do
do
registers[30] = (9)
end

end
goto p746
::p508::
do
do
_, Q = pack_returns(...)
end

end
::p509::
do
do
registers[1] = Q[W]
end

end
::p510::
do
do
(registers)[2] = environment["string"]
end

end
goto p140
::p512::
branch_taken=false
do
do
if registers[13] ~= registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p610
::p515::
do
do
registers[18] = (0)
end

end
::p516::
do
do
registers[19] = (255)
end

end
::p517::
do
do
registers[20] = (1)
end

end
::p518::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 18
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p133 end
::p519::
do
do
registers[26] = registers[19] + 1
end

end
::p520::
do
do
registers[19] = registers[26] % 256
end

end
::p521::
do
do
(registers)[26] = registers[17][registers[19]]
end

end
::p522::
do
do
(registers)[26] = registers[20] + registers[26]
end

end
::p523::
do
do
registers[20] = registers[26] % 256
end

end
::p524::
do
do
(registers)[26] = registers[17][registers[20]]
end

end
goto p727
::p526::
do
do
registers[20] = (255)
end

end
::p527::
do
do
registers[21] = (1)
end

end
::p528::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 19
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p270 end
::p529::
do
do
registers[15] = (1)
end

end
::p530::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 13
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p689 end
::p531::
tick(531)
do
do
registers[23] = (0)
end

end
::p532::
do
do
registers[24] = (15)
end

end
::p533::
do
do
registers[25] = (14)
end

end
::p534::
do
do
registers[26] = (13)
end

end
goto p86
::p536::
tick(536)
do
do
a = (9)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p537::
do
do
a = (D.f69)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[10] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p538::
do
do
a = (D.f70)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[11] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
goto p280
::p541::
tick(541)
do
do
registers[19] = (0)
end

end
::p542::
do
do
registers[20] = (3)
end

end
::p543::
do
do
registers[21] = (2)
end

end
::p544::
do
do
registers[22] = (13)
end

end
::p545::
do
do
registers[23] = (12)
end

end
::p546::
do
do
registers[24] = (15)
end

end
goto p470
::p560::
do
do
(registers)[22] = registers[4]
end

end
::p561::
do
do
(registers)[23] = registers[13]
end

end
::p562::
do
do
a = (22);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p563::
do
do
(registers[16])[registers[13]] = registers[22]
end

end
::p564::
do
do
(registers[17])[registers[13]] = registers[13]
end

end
::p565::
do
do
(registers)[22] = registers[14] * registers[13]
end

end
::p566::
do
do
(registers)[22] = registers[22] + registers[15]
end

end
goto p206
::p568::
do
do
registers[17] = registers[2] % 1
end

end
::p569::
do
do
registers[2] = (registers[2] - registers[17])
end

end
goto p689
::p584::
tick(584)
do
do
registers[21] = (registers[21] .. registers[26])
end

end
goto p383
::p586::
tick(586)
do
do
registers[20] = (11)
end

end
::p587::
do
do
registers[21] = (8)
end

end
::p588::
do
do
registers[22] = (9)
end

end
goto p247
::p590::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p591::
do
do
registers[19] = (0)
end

end
::p592::
do
do
registers[20] = (0)
end

end
::p593::
do
do
registers[21] = ("")
end

end
goto p122
::p595::
do
do
registers[26] = (13)
end

end
::p596::
do
do
registers[27] = (12)
end

end
::p597::
do
do
registers[28] = (3)
end

end
::p598::
do
do
registers[29] = (2)
end

end
goto p355
::p600::
do
do
registers[34] = (5)
end

end
::p601::
do
do
a = (19)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p602::
do
do
registers[20] = new_frame(15)
end

end
goto p284
::p604::
tick(604)
do
do
registers[36] = (3)
end

end
::p605::
do
do
registers[37] = (2)
end

end
::p606::
do
do
registers[38] = (1)
end

end
::p607::
do
do
registers[39] = (0)
end

end
::p608::
do
do
a = (24)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p536
::p610::
do
do
registers[15] = (true)
end

end
::p611::
do
do
(registers[12])[registers[17]] = registers[14]
end

end
goto p221
::p613::
do
do
(registers)[20] = registers[14]
end

end
::p614::
do
do
a = 20
z = (1)
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
::p615::
do
do
a = 16;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p616::
do
do
(registers)[16] = registers[14]
end

end
::p617::
do
do
registers[17] = (registers[14] .. registers[14])
end

end
::p618::
do
do
registers[18] = registers[14] .. ""
end

end
goto p256
::p620::
do
do
registers[38] = (1)
end

end
::p621::
do
do
a = (23)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p622::
do
do
registers[24] = new_frame(15)
end

end
::p623::
do
do
registers[24][0] = 15
end

end
::p624::
do
do
registers[25] = (14)
end

end
goto p502
::p626::
do
do
(registers)[13] = environment["type"]
end

end
::p627::
do
do
(registers)[14] = registers[12]
end

end
::p628::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p629::
branch_taken=false
do
do
if registers[13] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p191
::p631::
do
do
registers[27] = (8)
end

end
::p632::
do
do
registers[28] = (11)
end

end
::p633::
do
do
registers[29] = (10)
end

end
::p634::
do
do
registers[30] = (5)
end

end
goto p333
::p636::
do
do
registers[31] = (4)
end

end
::p637::
do
do
registers[32] = (7)
end

end
::p638::
do
do
registers[33] = (6)
end

end
::p639::
do
do
a = (18)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p640::
do
do
registers[19] = new_frame(15)
end

end
::p641::
do
do
registers[19][0] = 10
end

end
goto p586
::p643::
do
do
registers[14] = new_frame(15)
end

end
::p644::
do
do
registers[14][0] = 5
end

end
::p645::
do
do
registers[15] = (4)
end

end
::p646::
do
do
registers[16] = (7)
end

end
::p647::
do
do
registers[17] = (6)
end

end
::p648::
do
do
registers[18] = (1)
end

end
goto p541
::p650::
do
do
a = 27
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p651::
do
do
(registers)[28] = registers[17][registers[19]]
end

end
::p652::
do
do
(registers)[29] = registers[17][registers[20]]
end

end
::p654::
do
do
(registers)[28] = registers[28] + registers[29]
end

end
::p655::
do
do
registers[28] = registers[28] % 256
end

end
::p656::
do
do
(registers)[28] = registers[17][registers[28]]
end

end
::p657::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p658::
do
do
(registers)[26] = registers[16][registers[26]]
end

end
goto p584
::p660::
do
do
registers[22] = (13)
end

end
::p661::
do
do
registers[23] = (12)
end

end
::p662::
do
do
registers[24] = (15)
end

end
::p663::
do
do
registers[25] = (14)
end

end
goto p419
::p665::
do
do
registers[19] = (8)
end

end
::p666::
do
do
registers[20] = (11)
end

end
::p667::
do
do
registers[21] = (10)
end

end
::p668::
do
do
registers[22] = (13)
end

end
goto p756
::p670::
do
do
(registers)[16] = registers[8]
end

end
::p671::
do
do
(registers)[17] = registers[12]
end

end
::p672::
do
do
(registers)[18] = nil
end

end
::p673::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (16)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p221 end
::p674::
tick(674)
do
do
registers[17] = (6)
end

end
::p675::
do
do
registers[18] = (5)
end

end
::p676::
do
do
registers[19] = (4)
end

end
goto p738
::p678::
do
do
(registers)[23] = registers[17][registers[22]]
end

end
::p679::
do
do
(registers)[23] = registers[18] + registers[23]
end

end
::p680::
do
do
registers[24] = registers[22] % 8
end

end
::p681::
do
do
registers[24] = registers[24] + 1
end

end
::p682::
do
do
(registers)[24] = registers[12][registers[24]]
end

end
::p683::
do
do
(registers)[23] = registers[23] + registers[24]
end

end
::p684::
do
do
registers[18] = registers[23] % 256
end

end
::p685::
do
do
(registers)[23] = registers[17][registers[18]]
end

end
::p686::
do
do
(registers)[25] = registers[17][registers[22]]
end

end
::p687::
do
do
(registers[17])[registers[18]] = registers[25]
end

end
goto p431
::p689::
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[13 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p223 end
goto p722
::p712::
do
do
a = (11)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p713::
do
do
registers[12] = new_frame(15)
end

end
::p714::
do
do
registers[12][0] = 3
end

end
::p715::
do
do
registers[13] = (2)
end

end
::p716::
do
do
registers[14] = (1)
end

end
::p717::
do
do
registers[15] = (0)
end

end
::p718::
do
do
registers[16] = (7)
end

end
::p719::
do
do
registers[17] = (6)
end

end
::p720::
do
do
registers[18] = (5)
end

end
goto p227
::p722::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p723::
do
do
registers[13] = (registers[12][3])
end

end
::p724::
do
do
registers[14] = (registers[12][1])
end

end
::p725::
do
do
registers[14] = registers[14] % 64
end

end
goto p493
::p727::
do
do
(registers)[28] = registers[17][registers[19]]
end

end
::p728::
do
do
(registers[17])[registers[20]] = registers[28]
end

end
::p729::
do
do
(registers[17])[registers[19]] = registers[26]
end

end
::p730::
do
do
(registers)[26] = registers[10]
end

end
goto p74
::p732::
do
do
a = (22)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p733::
do
do
registers[23] = new_frame(15)
end

end
::p734::
do
do
registers[23][0] = 14
end

end
::p735::
do
do
registers[24] = (15)
end

end
goto p56
::p738::
do
do
registers[20] = (3)
end

end
::p739::
do
do
registers[21] = (2)
end

end
::p740::
do
do
registers[22] = (1)
end

end
goto p531
::p746::
do
do
registers[31] = (8)
end

end
::p747::
do
do
registers[32] = (7)
end

end
::p748::
do
do
registers[33] = (6)
end

end
::p749::
do
do
registers[34] = (5)
end

end
::p750::
do
do
registers[35] = (4)
end

end
goto p604
::p752::
do
do
a = (15)
z = 0
q = registers[a]
for f = 1, 15, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p753::
do
do
registers[16] = new_frame(15)
end

end
::p754::
do
do
registers[16][0] = 7
end

end
goto p674
::p756::
do
do
registers[23] = (12)
end

end
::p757::
do
do
registers[24] = (15)
end

end
::p758::
do
do
registers[25] = (14)
end

end
::p759::
do
do
registers[26] = (1)
end

end
goto p328
::p761::
do
do
(registers)[15] = registers[16]
end

end
::p762::
do
do
registers[16] = (registers[14] <= registers[14])
end

end
::p763::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p341 end
goto p491
end
end
