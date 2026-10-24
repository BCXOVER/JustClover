
-- Function f276; 528 recovered instruction blocks.
F.f276=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f276",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f276 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p152
::p2::
tick(2)
do
do
registers[20] = (3)
end

end
::p3::
do
do
registers[21] = (2)
end

end
::p4::
do
do
registers[22] = (1)
end

end
::p5::
do
do
registers[23] = (0)
end

end
::p6::
do
do
registers[24] = (15)
end

end
::p7::
do
do
registers[25] = (14)
end

end
::p8::
do
do
registers[26] = (13)
end

end
goto p129
::p10::
tick(10)
do
do
registers[24] = registers[24] + 1
end

end
::p11::
do
do
(registers)[24] = registers[12][registers[24]]
end

end
::p12::
do
do
(registers)[23] = registers[23] + registers[24]
end

end
::p13::
do
do
registers[18] = registers[23] % 256
end

end
::p14::
do
do
(registers)[23] = registers[17][registers[18]]
end

end
::p15::
do
do
(registers)[25] = registers[17][registers[22]]
end

end
goto p435
::p17::
tick(17)
do
do
(registers)[13] = registers[6]
end

end
::p18::
do
do
(registers)[14] = registers[12]
end

end
::p19::
do
do
(registers)[15] = nil
end

end
::p20::
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p112
::p22::
tick(22)
do
do
registers[17] = (6)
end

end
::p23::
do
do
registers[18] = (5)
end

end
::p24::
do
do
registers[19] = (4)
end

end
::p25::
do
do
registers[20] = (11)
end

end
goto p452
::p28::
tick(28)
branch_taken=false
do
do
if registers[13] ~= registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p350 end
goto p413
::p30::
tick(30)
do
do
registers[32] = (7)
end

end
::p31::
do
do
registers[33] = (4)
end

end
::p32::
do
do
registers[34] = (5)
end

end
::p33::
do
do
registers[35] = (2)
end

end
::p34::
do
do
registers[36] = (3)
end

end
goto p177
::p36::
tick(36)
do
do
registers[25] = (0)
end

end
::p37::
do
do
registers[26] = (1)
end

end
::p38::
do
do
registers[27] = (2)
end

end
::p39::
do
do
registers[28] = (3)
end

end
::p40::
do
do
registers[29] = (4)
end

end
::p41::
do
do
registers[30] = (5)
end

end
::p42::
do
do
registers[31] = (6)
end

end
goto p389
::p45::
tick(45)
do
do
(registers)[22] = registers[14] * registers[13]
end

end
::p46::
do
do
(registers)[22] = registers[22] + registers[15]
end

end
::p47::
do
do
registers[13] = registers[22] % 256
end

end
goto p315
::p49::
tick(49)
do
do
registers[20] = (3)
end

end
::p50::
do
do
registers[21] = (12)
end

end
::p51::
do
do
registers[22] = (13)
end

end
::p52::
do
do
registers[23] = (14)
end

end
goto p650
::p54::
tick(54)
do
do
(registers)[18] = registers[1]
end

end
::p55::
do
do
registers[19] = (1)
end

end
::p56::
do
do
registers[20] = (4)
end

end
::p57::
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
::p58::
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
::p59::
do
do
registers[13] = (1)
end

end
::p60::
do
do
registers[14] = (4)
end

end
::p61::
do
do
registers[15] = (1)
end

end
::p62::
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
if branch_taken then goto p648 end
::p63::
tick(63)
do
do
registers[28] = (11)
end

end
::p64::
do
do
registers[29] = (4)
end

end
::p65::
do
do
registers[30] = (5)
end

end
::p66::
do
do
registers[31] = (6)
end

end
goto p698
::p68::
tick(68)
do
do
registers[23][0] = 14
end

end
::p69::
do
do
registers[24] = (15)
end

end
::p70::
do
do
registers[25] = (12)
end

end
goto p772
::p74::
tick(74)
do
do
(registers)[16] = registers[11]
end

end
::p75::
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
::p76::
tick(76)
do
do
(registers)[14] = registers[7]
end

end
::p77::
do
do
(registers)[15] = registers[12]
end

end
::p78::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p224
::p90::
tick(90)
do
do
registers[12] = (3)
end

end
::p91::
do
do
registers[13] = (2)
end

end
::p92::
do
do
registers[14] = (5)
end

end
::p93::
do
do
registers[15] = (4)
end

end
goto p609
::p96::
tick(96)
do
do
(registers)[6] = nil
end

end
::p97::
do
do
a = 3
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p98::
do
do
registers[2] = registers[2] == registers[3]
end

end
::p99::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p150 end
goto p226
::p101::
tick(101)
do
do
registers[29] = (8)
end

end
::p102::
do
do
registers[30] = (9)
end

end
::p103::
do
do
registers[31] = (6)
end

end
goto p30
::p112::
do
do
registers[13] = {
}
end

end
::p113::
do
do
registers[14] = {
}
end

end
::p114::
do
do
registers[15] = (false)
end

end
::p115::
do
do
(registers)[16] = registers[8]
end

end
::p116::
do
do
(registers)[17] = registers[12]
end

end
::p117::
do
do
(registers)[18] = nil
end

end
goto p243
::p119::
tick(119)
do
do
registers[39] = (0)
end

end
::p120::
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
::p121::
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
goto p757
::p125::
tick(125)
do
do
registers[24] = (15)
end

end
::p126::
do
do
registers[25] = (14)
end

end
::p127::
do
do
registers[26] = (13)
end

end
goto p265
::p129::
do
do
registers[27] = (12)
end

end
::p130::
do
do
registers[28] = (11)
end

end
::p131::
do
do
registers[29] = (10)
end

end
::p132::
do
do
registers[30] = (9)
end

end
goto p317
::p134::
tick(134)
do
do
registers[19] = "" .. registers[14]
end

end
::p135::
do
do
a = (16)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p136::
do
do
(registers[14])[registers[14]] = registers[14]
end

end
goto p565
::p150::
tick(150)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p641 end
goto p531
::p152::
do
do
_, Q = pack_returns(...)
end

end
::p153::
do
do
registers[1] = Q[W]
end

end
::p154::
do
do
(registers)[2] = environment["string"]
end

end
::p155::
do
do
registers[2] = (registers[2]["len"])
end

end
goto p632
::p157::
tick(157)
do
do
registers[19] = (10)
end

end
::p158::
do
do
registers[20] = (11)
end

end
::p159::
do
do
registers[21] = (8)
end

end
goto p212
::p161::
tick(161)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p162::
do
do
registers[18] = (0)
end

end
::p163::
do
do
registers[19] = (0)
end

end
::p164::
do
do
registers[20] = (255)
end

end
::p165::
do
do
registers[21] = (1)
end

end
::p166::
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
if branch_taken then goto p181 end
::p167::
do
do
registers[61] = operand_k
end

end
::p168::
do
do
registers[55] = (code_metadata)
end

end
::p169::
do
do
(registers)[60] = (operand_i)
end

end
::p170::
do
do
registers[55][31] = 212
end

end
::p171::
do
do
registers[61][31] = 33
end

end
::p172::
do
do
registers[60][31] = 0
end

end
::p173::
do
do
registers[61][95] = 29
end

end
::p174::
do
do
for f = 54, 61, 1 do
    (registers)[f] = nil
end
end

end
goto p30
::p177::
do
do
registers[37] = (0)
end

end
::p178::
do
do
registers[38] = (1)
end

end
::p179::
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
goto p306
::p181::
tick(181)
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
if branch_taken then goto p311 end
goto p550
::p183::
tick(183)
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p184::
do
do
(registers)[20] = registers[14]
end

end
::p185::
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
::p186::
do
do
a = 16;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p187::
do
do
(registers)[16] = registers[14]
end

end
::p188::
do
do
registers[17] = (registers[14] .. registers[14])
end

end
::p189::
do
do
registers[18] = registers[14] .. ""
end

end
goto p134
::p204::
tick(204)
do
do
registers[33] = (6)
end

end
::p205::
do
do
registers[34] = (1)
end

end
::p206::
do
do
registers[35] = (0)
end

end
::p207::
do
do
registers[36] = (3)
end

end
::p208::
do
do
registers[37] = (2)
end

end
::p209::
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
::p210::
do
do
registers[23] = new_frame(15)
end

end
goto p68
::p212::
do
do
registers[22] = (9)
end

end
::p213::
do
do
registers[23] = (14)
end

end
::p214::
do
do
registers[24] = (15)
end

end
::p215::
do
do
registers[25] = (12)
end

end
::p216::
do
do
registers[26] = (13)
end

end
goto p383
::p218::
tick(218)
do
do
registers[15] = (5)
end

end
::p219::
do
do
registers[16] = (6)
end

end
::p220::
do
do
registers[17] = (7)
end

end
::p221::
do
do
registers[18] = (8)
end

end
::p222::
do
do
registers[19] = (9)
end

end
goto p456
::p224::
branch_taken=false
do
do
if registers[14] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p393
::p226::
do
do
registers[2] = (163)
end

end
goto p150
::p228::
tick(228)
do
do
registers[17] = registers[2] % 256
end

end
::p229::
do
do
(registers[12])[registers[16]] = registers[17]
end

end
::p230::
do
do
registers[2] = registers[2] / 256
end

end
goto p748
::p232::
tick(232)
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
::p233::
do
do
registers[14] = new_frame(15)
end

end
::p234::
do
do
registers[14][0] = 5
end

end
::p235::
do
do
registers[15] = (4)
end

end
::p236::
do
do
registers[16] = (7)
end

end
::p237::
do
do
registers[17] = (6)
end

end
goto p744
::p239::
tick(239)
do
do
registers[23] = (14)
end

end
::p240::
do
do
registers[24] = (15)
end

end
::p241::
do
do
registers[25] = (12)
end

end
goto p533
::p243::
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
if branch_taken then goto p350 end
::p244::
tick(244)
do
do
registers[22] = (5)
end

end
::p245::
do
do
registers[23] = (#registers[1])
end

end
::p246::
do
do
registers[24] = (1)
end

end
::p247::
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
if branch_taken then goto p584 end
::p248::
tick(248)
do
do
registers[27] = (12)
end

end
::p249::
do
do
registers[28] = (11)
end

end
::p250::
do
do
registers[29] = (10)
end

end
goto p703
::p252::
tick(252)
do
do
registers[13][0] = 4
end

end
::p253::
do
do
registers[14] = (5)
end

end
::p254::
do
do
registers[15] = (6)
end

end
::p255::
do
do
registers[16] = (7)
end

end
::p256::
do
do
registers[17] = (0)
end

end
::p257::
do
do
registers[18] = (1)
end

end
::p258::
do
do
registers[19] = (2)
end

end
goto p49
::p260::
tick(260)
do
do
registers[21] = (2)
end

end
::p261::
do
do
registers[22] = (13)
end

end
::p262::
do
do
registers[23] = (12)
end

end
goto p544
::p265::
do
do
registers[27] = (12)
end

end
::p266::
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
::p267::
do
do
registers[13] = new_frame(15)
end

end
goto p252
::p269::
tick(269)
do
do
registers[36] = (3)
end

end
::p270::
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
::p271::
do
do
registers[22] = new_frame(15)
end

end
::p272::
do
do
registers[22][0] = 13
end

end
::p273::
do
do
registers[23] = (12)
end

end
::p274::
do
do
registers[24] = (15)
end

end
::p275::
do
do
registers[25] = (14)
end

end
::p277::
do
do
registers[26] = (9)
end

end
::p278::
do
do
registers[27] = (8)
end

end
::p279::
do
do
registers[28] = (11)
end

end
::p280::
do
do
registers[29] = (10)
end

end
goto p628
::p295::
tick(295)
do
do
(registers)[28] = registers[17][registers[28]]
end

end
::p296::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p297::
do
do
(registers)[26] = registers[16][registers[26]]
end

end
::p298::
do
do
registers[21] = (registers[21] .. registers[26])
end

end
goto p584
::p302::
tick(302)
do
do
registers[17] = (6)
end

end
::p303::
do
do
registers[18] = (5)
end

end
::p304::
do
do
registers[19] = (4)
end

end
goto p2
::p306::
do
do
registers[24] = new_frame(15)
end

end
::p307::
do
do
registers[24][0] = 15
end

end
::p308::
do
do
registers[25] = (14)
end

end
::p309::
do
do
registers[26] = (13)
end

end
goto p248
::p311::
do
do
(registers)[23] = registers[17][registers[22]]
end

end
::p312::
do
do
(registers)[23] = registers[18] + registers[23]
end

end
::p313::
do
do
registers[24] = registers[22] % 8
end

end
goto p10
::p315::
tick(315)
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
if branch_taken then goto p666 end
goto p161
::p317::
do
do
registers[31] = (8)
end

end
::p318::
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
::p319::
do
do
registers[17] = new_frame(15)
end

end
::p320::
do
do
registers[17][0] = 8
end

end
::p321::
do
do
registers[18] = (9)
end

end
goto p346
::p324::
tick(324)
do
do
registers[25] = (14)
end

end
::p325::
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
::p326::
do
do
registers[11] = new_frame(15)
end

end
::p327::
do
do
registers[11][0] = 2
end

end
::p328::
do
do
registers[12] = (3)
end

end
::p329::
do
do
registers[13] = (0)
end

end
::p330::
do
do
registers[14] = (1)
end

end
::p331::
do
do
registers[15] = (6)
end

end
::p332::
do
do
registers[16] = (7)
end

end
::p333::
do
do
registers[17] = (4)
end

end
::p334::
do
do
registers[18] = (5)
end

end
goto p157
::p337::
tick(337)
do
do
registers[15] = registers[15] % 128
end

end
::p338::
do
do
(registers)[15] = 2 * registers[15]
end

end
::p339::
do
do
(registers)[15] = (registers[15] - 1)
end

end
::p340::
do
do
registers[16] = {
}
end

end
::p341::
do
do
registers[17] = {
}
end

end
::p342::
do
do
registers[18] = (0)
end

end
::p343::
do
do
registers[19] = (255)
end

end
::p344::
do
do
registers[20] = (1)
end

end
::p345::
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
if branch_taken then goto p315 end
::p346::
do
do
registers[19] = (10)
end

end
::p347::
do
do
registers[20] = (11)
end

end
::p348::
do
do
registers[21] = (12)
end

end
goto p662
::p350::
tick(350)
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
if branch_taken then goto p28 end
goto p791
::p352::
tick(352)
do
do
registers[21][0] = 12
end

end
::p353::
do
do
registers[22] = (13)
end

end
::p354::
do
do
registers[23] = (14)
end

end
goto p504
::p356::
tick(356)
do
do
(registers)[16] = registers[13]
end

end
::p357::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p358::
do
do
(registers)[15] = registers[14]
end

end
::p359::
do
do
(registers)[16] = registers[14]
end

end
::p360::
do
do
(registers)[17] = registers[14]
end

end
::p361::
do
do
(registers)[18] = registers[14]
end

end
::p362::
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
::p363::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p364::
do
do
a = (D.f277)
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
::p365::
do
do
(registers)[17] = registers[14]
end

end
::p366::
do
do
(registers)[18] = registers[14]
end

end
::p367::
do
do
a = 16
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p368::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p809 end
goto p502
::p376::
tick(376)
do
do
registers[18] = (5)
end

end
::p377::
do
do
registers[19] = (2)
end

end
::p378::
do
do
registers[20] = (3)
end

end
::p379::
do
do
registers[21] = (0)
end

end
::p380::
do
do
registers[22] = (1)
end

end
::p381::
do
do
registers[23] = (14)
end

end
goto p462
::p383::
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
::p384::
do
do
registers[12] = new_frame(15)
end

end
::p385::
do
do
registers[12][0] = 3
end

end
::p386::
do
do
registers[13] = (2)
end

end
goto p719
::p389::
do
do
registers[32] = (7)
end

end
::p390::
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
::p391::
do
do
registers[18] = new_frame(15)
end

end
goto p657
::p393::
tick(393)
do
do
(registers)[13] = registers[11]
end

end
::p394::
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
::p409::
tick(409)
do
do
registers[22] = (13)
end

end
::p410::
do
do
registers[23] = (12)
end

end
::p411::
do
do
registers[24] = (15)
end

end
goto p592
::p413::
do
do
registers[15] = (true)
end

end
::p414::
do
do
(registers[12])[registers[17]] = registers[14]
end

end
goto p350
::p416::
tick(416)
do
do
registers[24] = (14)
end

end
::p417::
do
do
registers[25] = (15)
end

end
::p418::
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
::p419::
do
do
registers[9][0] = (registers[10])
end

end
goto p573
::p422::
tick(422)
do
do
registers[16] = (registers[14] >= registers[14])
end

end
goto p479
::p428::
tick(428)
do
do
registers[23] = (8)
end

end
::p429::
do
do
registers[24] = (15)
end

end
::p430::
do
do
registers[25] = (14)
end

end
::p431::
do
do
registers[26] = (13)
end

end
::p432::
do
do
registers[27] = (12)
end

end
::p433::
do
do
registers[28] = (3)
end

end
goto p765
::p435::
do
do
(registers[17])[registers[18]] = registers[25]
end

end
::p436::
do
do
(registers[17])[registers[22]] = registers[23]
end

end
goto p181
::p438::
tick(438)
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p393 end
::p447::
do
do
(registers)[13] = environment["type"]
end

end
::p448::
do
do
(registers)[14] = registers[12]
end

end
::p449::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p450::
branch_taken=false
do
do
if registers[13] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p393 end
goto p76
::p452::
do
do
registers[21] = (10)
end

end
::p453::
do
do
registers[22] = (9)
end

end
::p454::
do
do
registers[23] = (8)
end

end
goto p125
::p456::
do
do
registers[20] = (10)
end

end
::p457::
do
do
registers[21] = (11)
end

end
::p458::
do
do
registers[22] = (12)
end

end
::p459::
do
do
registers[23] = (13)
end

end
goto p416
::p462::
do
do
registers[24] = (15)
end

end
::p463::
do
do
registers[25] = (12)
end

end
::p464::
do
do
registers[26] = (13)
end

end
goto p794
::p468::
tick(468)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p469::
do
do
(registers)[22] = registers[21]
end

end
::p470::
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
::p471::
tick(471)
do
do
registers[9] = new_frame(15)
end

end
::p472::
do
do
registers[10] = new_frame(15)
end

end
::p473::
do
do
registers[10][0] = 0
end

end
::p474::
do
do
registers[11] = (1)
end

end
::p475::
do
do
registers[12] = (2)
end

end
::p476::
do
do
registers[13] = (3)
end

end
::p477::
do
do
registers[14] = (4)
end

end
goto p218
::p479::
tick(479)
do
do
(registers)[15] = registers[16]
end

end
::p480::
do
do
(registers)[16] = registers[14]
end

end
::p481::
do
do
(registers)[17] = registers[14]
end

end
::p482::
do
do
(registers)[18] = registers[14]
end

end
::p483::
do
do
(registers)[19] = registers[14]
end

end
::p484::
do
do
(registers)[20] = registers[14]
end

end
goto p183
::p486::
tick(486)
do
do
registers[29] = (0)
end

end
::p487::
do
do
registers[30] = (1)
end

end
::p488::
do
do
registers[31] = (6)
end

end
::p489::
do
do
registers[32] = (7)
end

end
::p490::
do
do
registers[33] = (4)
end

end
goto p802
::p492::
tick(492)
do
do
registers[13]["__lt"] = (registers[12])
end

end
::p493::
do
do
registers[13]["__le"] = (registers[12])
end

end
::p494::
do
do
registers[13]["__concat"] = (registers[12])
end

end
goto p811
::p502::
do
do
(registers)[16] = registers[14]
end

end
goto p809
::p504::
do
do
registers[24] = (15)
end

end
::p505::
do
do
registers[25] = (8)
end

end
::p506::
do
do
registers[26] = (9)
end

end
::p507::
do
do
registers[27] = (10)
end

end
goto p63
::p509::
tick(509)
do
do
registers[35] = (4)
end

end
::p510::
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
::p511::
do
do
registers[21] = new_frame(15)
end

end
goto p352
::p514::
tick(514)
do
do
(registers)[29] = registers[17][registers[20]]
end

end
::p515::
do
do
(registers)[28] = registers[28] + registers[29]
end

end
::p516::
do
do
registers[28] = registers[28] % 256
end

end
goto p295
::p518::
tick(518)
do
do
registers[16] = registers[14] > registers[14]
end

end
goto p524
::p520::
tick(520)
do
do
registers[13]["__sub"] = (registers[12])
end

end
::p521::
do
do
registers[13]["__mul"] = (registers[12])
end

end
::p522::
do
do
registers[13]["__div"] = (registers[12])
end

end
goto p690
::p524::
tick(524)
do
do
(registers)[15] = registers[16]
end

end
::p525::
do
do
registers[16] = (registers[14] <= registers[14])
end

end
::p526::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p479 end
goto p422
::p529::
tick(529)
branch_taken=false
do
do
if registers[13] == registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p694 end
goto p74
::p531::
do
do
registers[2] = (156)
end

end
goto p641
::p533::
do
do
registers[26] = (13)
end

end
::p534::
do
do
registers[27] = (2)
end

end
::p535::
do
do
registers[28] = (3)
end

end
goto p486
::p537::
tick(537)
do
do
registers[31] = (4)
end

end
::p538::
do
do
registers[32] = (7)
end

end
::p539::
do
do
registers[33] = (6)
end

end
::p540::
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
::p541::
do
do
registers[19] = new_frame(15)
end

end
::p542::
do
do
registers[19][0] = 10
end

end
goto p637
::p544::
do
do
registers[24] = (15)
end

end
::p545::
do
do
registers[25] = (14)
end

end
::p546::
do
do
registers[26] = (9)
end

end
::p547::
do
do
registers[27] = (8)
end

end
goto p711
::p550::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p551::
do
do
registers[19] = (0)
end

end
::p552::
do
do
registers[20] = (0)
end

end
::p553::
do
do
registers[21] = ("")
end

end
goto p244
::p556::
tick(556)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p557::
do
do
registers[13] = (registers[12][3])
end

end
::p558::
do
do
registers[14] = (registers[12][1])
end

end
::p559::
do
do
registers[14] = registers[14] % 64
end

end
goto p599
::p561::
tick(561)
do
do
(registers)[15] = registers[16]
end

end
::p562::
do
do
(registers)[16] = registers[14] < registers[14]
end

end
::p563::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p524 end
goto p518
::p565::
do
do
(registers)[16] = registers[14][registers[14]]
end

end
::p566::
do
do
(registers[14])[registers[14]] = registers[16]
end

end
::p567::
do
do
(registers)[12] = registers[3]
end

end
goto p438
::p569::
tick(569)
do
do
(registers)[16] = registers[14]
end

end
goto p616
::p573::
do
do
registers[10] = new_frame(15)
end

end
::p574::
do
do
registers[10][0] = 1
end

end
::p575::
do
do
registers[11] = (0)
end

end
goto p90
::p584::
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
if branch_taken then goto p682 end
goto p468
::p586::
tick(586)
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p561 end
goto p742
::p588::
tick(588)
do
do
registers[3] = (registers[3]["byte"])
end

end
::p589::
do
do
registers[4] = ("\239\128\186")
end

end
::p590::
do
do
registers[5] = (1)
end

end
goto p96
::p592::
do
do
registers[25] = (14)
end

end
::p593::
do
do
registers[26] = (1)
end

end
::p594::
do
do
registers[27] = (0)
end

end
::p595::
do
do
registers[28] = (3)
end

end
::p596::
do
do
registers[29] = (2)
end

end
::p597::
do
do
registers[30] = (5)
end

end
goto p537
::p599::
do
do
(registers)[14] = 4 * registers[14]
end

end
::p600::
do
do
registers[14] = registers[14] + 1
end

end
::p601::
do
do
registers[15] = (registers[12][2])
end

end
goto p337
::p609::
do
do
registers[16] = (7)
end

end
::p610::
do
do
registers[17] = (6)
end

end
::p611::
do
do
registers[18] = (9)
end

end
::p612::
do
do
registers[19] = (8)
end

end
::p613::
do
do
registers[20] = (11)
end

end
goto p723
::p616::
tick(616)
do
do
(registers)[15] = registers[16]
end

end
::p617::
do
do
(registers)[16] = registers[14] + registers[14]
end

end
::p618::
do
do
(registers)[17] = registers[14] * registers[14]
end

end
::p619::
do
do
registers[17] = (registers[17] / registers[14])
end

end
goto p672
::p621::
tick(621)
do
do
(registers)[5] = environment["string"]
end

end
::p622::
do
do
registers[5] = (registers[5]["byte"])
end

end
::p623::
do
do
(registers)[6] = environment["setmetatable"]
end

end
::p624::
do
do
(registers)[7] = environment["getmetatable"]
end

end
::p625::
do
do
(registers)[8] = environment["next"]
end

end
goto p471
::p628::
do
do
registers[30] = (5)
end

end
::p629::
do
do
registers[31] = (4)
end

end
::p630::
do
do
registers[32] = (7)
end

end
goto p204
::p632::
do
do
registers[3] = ("\224\199")
end

end
::p633::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p634::
do
do
registers[2] = 496 - registers[2]
end

end
::p635::
do
do
(registers)[3] = environment["string"]
end

end
goto p588
::p637::
do
do
registers[20] = (11)
end

end
::p638::
do
do
registers[21] = (8)
end

end
::p639::
do
do
registers[22] = (9)
end

end
goto p239
::p641::
do
do
(registers)[2] = (registers[2] - 304)
end

end
::p642::
do
do
(registers)[2] = (registers[2] - 278)
end

end
::p643::
do
do
registers[2] = -1322376851 + registers[2]
end

end
::p644::
do
do
(registers)[3] = (registers)
end

end
::p645::
do
do
(registers)[4] = environment["string"]
end

end
::p646::
do
do
registers[4] = (registers[4]["char"])
end

end
goto p621
::p648::
tick(648)
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
if branch_taken then goto p228 end
goto p556
::p650::
do
do
registers[24] = (15)
end

end
::p651::
do
do
registers[25] = (8)
end

end
::p652::
do
do
registers[26] = (9)
end

end
::p653::
do
do
registers[27] = (10)
end

end
::p654::
do
do
registers[28] = (11)
end

end
goto p232
::p657::
do
do
registers[18][0] = 9
end

end
::p658::
do
do
registers[19] = (8)
end

end
::p659::
do
do
registers[20] = (11)
end

end
::p660::
do
do
registers[21] = (10)
end

end
goto p409
::p662::
do
do
registers[22] = (13)
end

end
::p663::
do
do
registers[23] = (14)
end

end
::p664::
do
do
registers[24] = (15)
end

end
goto p36
::p666::
do
do
(registers)[22] = registers[4]
end

end
::p667::
do
do
(registers)[23] = registers[13]
end

end
::p668::
do
do
a = (22);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p669::
do
do
(registers[16])[registers[13]] = registers[22]
end

end
::p670::
do
do
(registers[17])[registers[13]] = registers[13]
end

end
goto p45
::p672::
do
do
(registers)[18] = (registers[14] ^ registers[14])
end

end
::p673::
do
do
registers[17] = registers[17] % registers[18]
end

end
::p674::
do
do
registers[15] = (registers[16] - registers[17])
end

end
::p675::
do
do
registers[16] = registers[14] == registers[14]
end

end
goto p586
::p677::
tick(677)
do
do
(registers[17])[registers[20]] = registers[28]
end

end
::p678::
do
do
(registers[17])[registers[19]] = registers[26]
end

end
::p679::
do
do
(registers)[26] = registers[10]
end

end
goto p751
::p682::
do
do
registers[26] = registers[19] + 1
end

end
::p683::
do
do
registers[19] = registers[26] % 256
end

end
::p684::
do
do
(registers)[26] = registers[17][registers[19]]
end

end
::p685::
do
do
(registers)[26] = registers[20] + registers[26]
end

end
::p686::
do
do
registers[20] = registers[26] % 256
end

end
::p687::
do
do
(registers)[26] = registers[17][registers[20]]
end

end
::p688::
do
do
(registers)[28] = registers[17][registers[19]]
end

end
goto p677
::p690::
do
do
registers[13]["__mod"] = (registers[12])
end

end
::p691::
do
do
registers[13]["__pow"] = (registers[12])
end

end
::p692::
do
do
registers[13]["__eq"] = (registers[12])
end

end
goto p492
::p694::
do
do
registers[12] = new_frame(4)
end

end
::p695::
do
do
for f = 13, 16, 1 do
    (registers)[f] = nil
end
end

end
::p696::
do
do
(registers)[17] = registers[5]
end

end
goto p54
::p698::
do
do
registers[32] = (7)
end

end
::p699::
do
do
registers[33] = (0)
end

end
::p700::
do
do
registers[34] = (1)
end

end
::p701::
do
do
registers[35] = (2)
end

end
goto p269
::p703::
do
do
registers[30] = (9)
end

end
::p704::
do
do
registers[31] = (8)
end

end
::p705::
do
do
registers[32] = (7)
end

end
::p706::
do
do
registers[33] = (6)
end

end
::p707::
do
do
registers[34] = (5)
end

end
goto p730
::p711::
do
do
registers[28] = (11)
end

end
::p712::
do
do
registers[29] = (10)
end

end
::p713::
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
::p714::
do
do
registers[15] = new_frame(15)
end

end
::p715::
do
do
registers[15][0] = 6
end

end
::p716::
do
do
registers[16] = (7)
end

end
::p717::
do
do
registers[17] = (4)
end

end
goto p376
::p719::
do
do
registers[14] = (1)
end

end
::p720::
do
do
registers[15] = (0)
end

end
::p721::
do
do
registers[16] = (7)
end

end
goto p22
::p723::
do
do
registers[21] = (10)
end

end
::p724::
do
do
registers[22] = (13)
end

end
::p725::
do
do
registers[23] = (12)
end

end
::p726::
do
do
registers[24] = (15)
end

end
goto p324
::p730::
do
do
registers[35] = (4)
end

end
::p731::
do
do
registers[36] = (3)
end

end
::p732::
do
do
registers[37] = (2)
end

end
::p733::
do
do
registers[38] = (1)
end

end
goto p119
::p742::
do
do
registers[16] = (registers[14] ~= registers[14])
end

end
goto p561
::p744::
do
do
registers[18] = (1)
end

end
::p745::
do
do
registers[19] = (0)
end

end
::p746::
do
do
registers[20] = (3)
end

end
goto p260
::p748::
do
do
registers[17] = registers[2] % 1
end

end
::p749::
do
do
registers[2] = (registers[2] - registers[17])
end

end
goto p648
::p751::
do
do
(registers)[27] = registers[5]
end

end
::p752::
do
do
(registers)[28] = registers[1]
end

end
::p753::
do
do
(registers)[29] = registers[25]
end

end
::p754::
do
do
a = 27
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p755::
do
do
(registers)[28] = registers[17][registers[19]]
end

end
goto p514
::p757::
do
do
a = (D.f278)
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
::p758::
do
do
a = (D.f279)
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
::p759::
do
do
a = (D.f281)
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
::p760::
do
do
registers[13] = {
}
end

end
::p761::
do
do
registers[13]["__tostring"] = (registers[11])
end

end
::p762::
do
do
registers[13]["__call"] = (registers[12])
end

end
::p763::
do
do
registers[13]["__add"] = (registers[12])
end

end
goto p520
::p765::
do
do
registers[29] = (2)
end

end
::p766::
do
do
registers[30] = (1)
end

end
::p767::
do
do
registers[31] = (0)
end

end
::p768::
do
do
registers[32] = (7)
end

end
::p769::
do
do
registers[33] = (6)
end

end
::p770::
do
do
registers[34] = (5)
end

end
goto p509
::p772::
do
do
registers[26] = (13)
end

end
::p773::
do
do
registers[27] = (10)
end

end
::p774::
do
do
registers[28] = (11)
end

end
goto p101
::p791::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p792::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p529
::p794::
do
do
registers[27] = (10)
end

end
::p795::
do
do
registers[28] = (11)
end

end
::p796::
do
do
registers[29] = (8)
end

end
::p797::
do
do
registers[30] = (9)
end

end
::p798::
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
::p799::
do
do
registers[16] = new_frame(15)
end

end
::p800::
do
do
registers[16][0] = 7
end

end
goto p302
::p802::
do
do
registers[34] = (5)
end

end
::p803::
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
::p804::
do
do
registers[20] = new_frame(15)
end

end
::p805::
do
do
registers[20][0] = 11
end

end
::p806::
do
do
registers[21] = (10)
end

end
::p807::
do
do
registers[22] = (9)
end

end
goto p428
::p809::
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p616 end
goto p569
::p811::
do
do
registers[13]["__index"] = (registers[12])
end

end
::p812::
do
do
registers[13]["__newindex"] = (registers[12])
end

end
::p813::
do
do
registers[13]["__metatable"] = false
end

end
::p814::
do
do
(registers)[14] = registers[6]
end

end
::p815::
do
do
registers[15] = {
}
end

end
goto p356
end
end
