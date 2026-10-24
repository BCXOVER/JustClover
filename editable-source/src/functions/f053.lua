
-- Function f53; 534 recovered instruction blocks.
F.f53=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f53",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f53 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p501
::p3::
tick(3)
do
do
registers[33] = (0)
end

end
::p4::
do
do
registers[34] = (1)
end

end
::p5::
do
do
registers[35] = (2)
end

end
::p6::
do
do
registers[36] = (3)
end

end
goto p484
::p11::
tick(11)
do
do
registers[13]["__concat"] = (registers[12])
end

end
::p12::
do
do
registers[13]["__index"] = (registers[12])
end

end
::p13::
do
do
registers[13]["__newindex"] = (registers[12])
end

end
::p14::
do
do
registers[13]["__metatable"] = false
end

end
::p15::
do
do
(registers)[14] = registers[6]
end

end
goto p562
::p23::
tick(23)
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
if branch_taken then goto p581 end
goto p531
::p25::
tick(25)
do
do
registers[12] = new_frame(4)
end

end
::p26::
do
do
for f = 13, 16, 1 do
    (registers)[f] = nil
end
end

end
::p27::
do
do
(registers)[17] = registers[5]
end

end
::p28::
do
do
(registers)[18] = registers[1]
end

end
goto p774
::p30::
tick(30)
do
do
(registers)[15] = registers[16]
end

end
::p31::
do
do
(registers)[16] = registers[14] + registers[14]
end

end
::p32::
do
do
(registers)[17] = registers[14] * registers[14]
end

end
::p33::
do
do
registers[17] = (registers[17] / registers[14])
end

end
goto p733
::p35::
tick(35)
do
do
registers[25] = (8)
end

end
::p36::
do
do
registers[26] = (9)
end

end
::p37::
do
do
registers[27] = (10)
end

end
goto p476
::p39::
tick(39)
do
do
registers[2] = (222)
end

end
goto p219
::p41::
tick(41)
do
do
registers[23] = (0)
end

end
::p42::
do
do
a = (registers)
z = 24
end

end
::p43::
do
do
q = 15;
(a)[z] = (q)
end

end
::p44::
do
do
registers[25] = (14)
end

end
::p45::
do
do
registers[26] = (13)
end

end
::p46::
do
do
registers[27] = (12)
end

end
goto p743
::p49::
tick(49)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p50::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p307 end
goto p489
::p53::
tick(53)
do
do
(registers)[16] = registers[14]
end

end
goto p30
::p55::
tick(55)
do
do
registers[22] = (9)
end

end
::p56::
do
do
registers[23] = (14)
end

end
::p57::
do
do
registers[24] = (15)
end

end
::p58::
do
do
registers[25] = (12)
end

end
goto p371
::p60::
tick(60)
do
do
registers[17][0] = 8
end

end
::p61::
do
do
registers[18] = (9)
end

end
::p62::
do
do
registers[19] = (10)
end

end
goto p750
::p64::
tick(64)
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
goto p397
::p68::
tick(68)
do
do
registers[17] = registers[2] % 256
end

end
::p69::
do
do
(registers[12])[registers[16]] = registers[17]
end

end
::p70::
do
do
registers[2] = registers[2] / 256
end

end
::p71::
do
do
registers[17] = registers[2] % 1
end

end
::p72::
do
do
registers[2] = (registers[2] - registers[17])
end

end
goto p148
::p74::
tick(74)
do
do
(registers)[28] = registers[1]
end

end
::p75::
do
do
(registers)[29] = registers[25]
end

end
::p76::
do
do
a = 27
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p77::
do
do
(registers)[28] = registers[17][registers[19]]
end

end
::p78::
do
do
(registers)[29] = registers[17][registers[20]]
end

end
::p79::
do
do
(registers)[28] = registers[28] + registers[29]
end

end
goto p658
::p81::
tick(81)
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
if branch_taken then goto p568 end
goto p49
::p83::
tick(83)
do
do
registers[34] = (5)
end

end
::p84::
do
do
registers[35] = (4)
end

end
::p85::
do
do
registers[36] = (3)
end

end
goto p353
::p87::
tick(87)
do
do
registers[24] = (15)
end

end
::p88::
do
do
registers[25] = (14)
end

end
::p89::
do
do
registers[26] = (9)
end

end
::p90::
do
do
registers[27] = (8)
end

end
goto p782
::p92::
tick(92)
do
do
registers[9][0] = (registers[10])
end

end
::p93::
do
do
registers[10] = new_frame(15)
end

end
::p94::
do
do
registers[10][0] = 1
end

end
goto p668
::p102::
tick(102)
do
do
registers[28] = (11)
end

end
::p103::
do
do
registers[29] = (8)
end

end
::p104::
do
do
registers[30] = (9)
end

end
::p105::
do
do
registers[31] = (6)
end

end
::p106::
do
do
registers[32] = (7)
end

end
goto p162
::p108::
tick(108)
do
do
registers[24] = (15)
end

end
::p109::
do
do
registers[25] = (0)
end

end
::p110::
do
do
registers[26] = (1)
end

end
::p111::
do
do
registers[27] = (2)
end

end
::p112::
do
do
registers[28] = (3)
end

end
goto p64
::p114::
tick(114)
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p227
::p122::
tick(122)
do
do
registers[3] = ("\191")
end

end
::p123::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p124::
do
do
(registers)[3] = environment["math"]
end

end
goto p680
::p126::
tick(126)
do
do
(registers)[15] = registers[16]
end

end
::p127::
do
do
(registers)[16] = registers[14] < registers[14]
end

end
::p128::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p662 end
goto p464
::p137::
tick(137)
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p53
::p139::
tick(139)
do
do
(registers)[14] = registers[7]
end

end
::p140::
do
do
(registers)[15] = registers[12]
end

end
::p141::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p305
::p144::
tick(144)
do
do
registers[26] = (13)
end

end
::p145::
do
do
registers[27] = (12)
end

end
::p146::
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
goto p738
::p148::
tick(148)
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
if branch_taken then goto p68 end
goto p422
::p150::
tick(150)
do
do
(registers[16])[registers[13]] = registers[22]
end

end
::p151::
do
do
(registers[17])[registers[13]] = registers[13]
end

end
::p152::
do
do
(registers)[22] = registers[14] * registers[13]
end

end
::p153::
do
do
(registers)[22] = registers[22] + registers[15]
end

end
::p154::
do
do
registers[13] = registers[22] % 256
end

end
goto p472
::p156::
tick(156)
do
do
registers[23] = (14)
end

end
::p157::
do
do
registers[24] = (15)
end

end
::p158::
do
do
registers[25] = (12)
end

end
::p159::
do
do
registers[26] = (13)
end

end
::p160::
do
do
registers[27] = (2)
end

end
goto p295
::p162::
do
do
registers[33] = (4)
end

end
::p163::
do
do
registers[34] = (5)
end

end
::p164::
do
do
registers[35] = (2)
end

end
goto p194
::p166::
tick(166)
do
do
(registers)[4] = environment["string"]
end

end
::p167::
do
do
registers[4] = (registers[4]["char"])
end

end
::p168::
do
do
(registers)[5] = environment["string"]
end

end
::p169::
do
do
registers[5] = (registers[5]["byte"])
end

end
::p170::
do
do
(registers)[6] = environment["setmetatable"]
end

end
goto p393
::p180::
tick(180)
do
do
registers[31] = (4)
end

end
::p181::
do
do
registers[32] = (7)
end

end
::p182::
do
do
registers[33] = (6)
end

end
::p183::
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
::p184::
do
do
registers[19] = new_frame(15)
end

end
::p185::
do
do
registers[19][0] = 10
end

end
::p186::
do
do
registers[20] = (11)
end

end
::p187::
do
do
registers[21] = (8)
end

end
::p188::
do
do
registers[22] = (9)
end

end
goto p156
::p190::
tick(190)
do
do
registers[11] = new_frame(15)
end

end
::p191::
do
do
registers[11][0] = 2
end

end
::p192::
do
do
registers[12] = (3)
end

end
goto p523
::p194::
do
do
registers[36] = (3)
end

end
::p195::
do
do
registers[37] = (0)
end

end
::p196::
do
do
registers[38] = (1)
end

end
::p197::
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
goto p288
::p199::
tick(199)
do
do
registers[16] = new_frame(15)
end

end
::p200::
do
do
registers[16][0] = 7
end

end
::p201::
do
do
a = (registers)
z = 17
end

end
::p202::
do
do
q = 6;
(a)[z] = (q)
end

end
::p203::
do
do
registers[18] = (5)
end

end
::p204::
do
do
registers[19] = (4)
end

end
::p205::
do
do
registers[20] = (3)
end

end
::p206::
do
do
registers[21] = (2)
end

end
::p207::
do
do
registers[22] = (1)
end

end
goto p41
::p209::
tick(209)
do
do
(registers)[13] = registers[11]
end

end
::p210::
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
::p211::
tick(211)
do
do
registers[23][0] = 14
end

end
::p212::
do
do
registers[24] = (15)
end

end
::p213::
do
do
registers[25] = (12)
end

end
::p214::
do
do
registers[26] = (13)
end

end
::p215::
do
do
registers[27] = (10)
end

end
goto p102
::p219::
tick(219)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p536 end
goto p455
::p221::
tick(221)
do
do
registers[16] = (7)
end

end
::p222::
do
do
registers[17] = (6)
end

end
::p223::
do
do
registers[18] = (1)
end

end
::p224::
do
do
registers[19] = (0)
end

end
::p225::
do
do
registers[20] = (3)
end

end
goto p274
::p227::
do
do
registers[16] = (registers[14] ~= registers[14])
end

end
goto p126
::p229::
tick(229)
do
do
registers[13] = (2)
end

end
::p230::
do
do
a = (registers)
z = 14
end

end
::p231::
do
do
q = 1;
(a)[z] = (q)
end

end
::p232::
do
do
registers[15] = (0)
end

end
::p233::
do
do
registers[16] = (7)
end

end
::p234::
do
do
registers[17] = (6)
end

end
::p235::
do
do
registers[18] = (5)
end

end
::p236::
do
do
registers[19] = (4)
end

end
::p237::
do
do
registers[20] = (11)
end

end
::p238::
do
do
registers[21] = (10)
end

end
::p239::
do
do
registers[22] = (9)
end

end
::p240::
do
do
registers[23] = (8)
end

end
::p241::
do
do
registers[24] = (15)
end

end
::p242::
do
do
registers[25] = (14)
end

end
goto p144
::p245::
tick(245)
do
do
(registers)[17] = registers[14]
end

end
::p246::
do
do
(registers)[18] = registers[14]
end

end
::p247::
do
do
a = 16
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p248::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p666
::p254::
tick(254)
do
do
(registers)[15] = registers[16]
end

end
::p255::
do
do
(registers)[16] = registers[14]
end

end
::p256::
do
do
(registers)[17] = registers[14]
end

end
::p257::
do
do
(registers)[18] = registers[14]
end

end
goto p704
::p259::
tick(259)
do
do
(registers)[2] = (registers[2] - 88)
end

end
::p260::
do
do
registers[2] = -1965960800 + registers[2]
end

end
::p261::
do
do
(registers)[3] = (registers)
end

end
goto p166
::p263::
tick(263)
do
do
registers[29] = (10)
end

end
::p264::
do
do
registers[30] = (9)
end

end
::p265::
do
do
registers[31] = (8)
end

end
::p266::
do
do
registers[32] = (7)
end

end
::p267::
do
do
registers[33] = (6)
end

end
goto p83
::p269::
tick(269)
do
do
registers[25] = (8)
end

end
::p270::
do
do
registers[26] = (9)
end

end
::p271::
do
do
registers[27] = (10)
end

end
goto p457
::p274::
do
do
registers[21] = (2)
end

end
::p275::
do
do
registers[22] = (13)
end

end
::p276::
do
do
registers[23] = (12)
end

end
::p277::
do
do
registers[24] = (15)
end

end
::p278::
do
do
registers[25] = (14)
end

end
::p279::
do
do
registers[26] = (9)
end

end
::p280::
do
do
registers[27] = (8)
end

end
::p281::
do
do
registers[28] = (11)
end

end
::p282::
do
do
registers[29] = (10)
end

end
::p283::
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
::p284::
do
do
registers[15] = new_frame(15)
end

end
::p285::
do
do
registers[15][0] = 6
end

end
goto p348
::p288::
do
do
registers[24] = new_frame(15)
end

end
::p289::
do
do
registers[24][0] = 15
end

end
::p290::
do
do
registers[25] = (14)
end

end
::p291::
do
do
registers[26] = (13)
end

end
::p292::
do
do
registers[27] = (12)
end

end
::p293::
do
do
registers[28] = (11)
end

end
goto p263
::p295::
do
do
registers[28] = (3)
end

end
::p296::
do
do
a = (registers)
z = 29
end

end
::p297::
do
do
q = 0;
(a)[z] = (q)
end

end
::p298::
do
do
registers[30] = (1)
end

end
::p299::
do
do
registers[31] = (6)
end

end
goto p332
::p301::
tick(301)
do
do
registers[37] = (2)
end

end
::p302::
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
::p303::
do
do
registers[23] = new_frame(15)
end

end
goto p211
::p305::
branch_taken=false
do
do
if registers[14] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p798 end
goto p209
::p307::
tick(307)
do
do
(registers)[16] = registers[11]
end

end
::p308::
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
::p309::
tick(309)
do
do
registers[18] = (9)
end

end
::p310::
do
do
registers[19] = (8)
end

end
::p311::
do
do
registers[20] = (11)
end

end
::p312::
do
do
registers[21] = (10)
end

end
::p313::
do
do
registers[22] = (13)
end

end
::p314::
do
do
registers[23] = (12)
end

end
::p315::
do
do
registers[24] = (15)
end

end
::p316::
do
do
registers[25] = (14)
end

end
::p317::
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
goto p190
::p319::
tick(319)
do
do
registers[23] = (12)
end

end
::p320::
do
do
registers[24] = (15)
end

end
::p321::
do
do
registers[25] = (14)
end

end
::p322::
do
do
registers[26] = (1)
end

end
::p323::
do
do
registers[27] = (0)
end

end
::p324::
do
do
registers[28] = (3)
end

end
::p325::
do
do
registers[29] = (2)
end

end
::p326::
do
do
registers[30] = (5)
end

end
goto p180
::p328::
tick(328)
do
do
registers[22] = (9)
end

end
::p329::
do
do
registers[23] = (8)
end

end
::p330::
do
do
registers[24] = (15)
end

end
goto p540
::p332::
do
do
registers[32] = (7)
end

end
::p333::
do
do
registers[33] = (4)
end

end
::p334::
do
do
registers[34] = (5)
end

end
goto p697
::p336::
tick(336)
do
do
registers[24] = registers[24] + 1
end

end
::p337::
do
do
(registers)[24] = registers[12][registers[24]]
end

end
::p338::
do
do
(registers)[23] = registers[23] + registers[24]
end

end
goto p466
::p340::
tick(340)
do
do
registers[16] = (7)
end

end
::p341::
do
do
registers[17] = (0)
end

end
::p342::
do
do
registers[18] = (1)
end

end
::p343::
do
do
registers[19] = (2)
end

end
::p344::
do
do
registers[20] = (3)
end

end
::p345::
do
do
registers[21] = (12)
end

end
goto p729
::p347::
tick(347)
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
if branch_taken then goto p23 end
::p348::
do
do
registers[16] = (7)
end

end
::p349::
do
do
registers[17] = (4)
end

end
::p350::
do
do
registers[18] = (5)
end

end
::p351::
do
do
registers[19] = (2)
end

end
goto p405
::p353::
do
do
registers[37] = (2)
end

end
::p354::
do
do
registers[38] = (1)
end

end
::p355::
do
do
registers[39] = (0)
end

end
::p356::
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
::p357::
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
::p358::
do
do
a = (D.f54)
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
goto p570
::p365::
tick(365)
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
::p368::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p369::
do
do
a = (D.f55)
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
goto p245
::p371::
do
do
registers[26] = (13)
end

end
::p372::
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
::p373::
do
do
registers[12] = new_frame(15)
end

end
::p374::
do
do
registers[12][0] = 3
end

end
goto p229
::p384::
tick(384)
do
do
registers[14] = (4)
end

end
::p385::
do
do
registers[15] = (5)
end

end
::p386::
do
do
registers[16] = (6)
end

end
::p387::
do
do
registers[17] = (7)
end

end
::p388::
do
do
registers[18] = (8)
end

end
::p389::
do
do
registers[19] = (9)
end

end
::p390::
do
do
registers[20] = (10)
end

end
::p391::
do
do
registers[21] = (11)
end

end
goto p722
::p393::
do
do
(registers)[7] = environment["getmetatable"]
end

end
::p394::
do
do
(registers)[8] = environment["next"]
end

end
::p395::
do
do
registers[9] = new_frame(15)
end

end
goto p619
::p397::
do
do
registers[32] = (7)
end

end
::p398::
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
::p399::
do
do
registers[18] = new_frame(15)
end

end
::p400::
do
do
registers[18][0] = 9
end

end
::p401::
do
do
registers[19] = (8)
end

end
goto p577
::p405::
do
do
registers[20] = (3)
end

end
::p406::
do
do
registers[21] = (0)
end

end
::p407::
do
do
registers[22] = (1)
end

end
::p408::
do
do
registers[23] = (14)
end

end
::p409::
do
do
registers[24] = (15)
end

end
::p410::
do
do
registers[25] = (12)
end

end
::p411::
do
do
registers[26] = (13)
end

end
::p412::
do
do
registers[27] = (10)
end

end
::p413::
do
do
registers[28] = (11)
end

end
goto p809
::p415::
tick(415)
do
do
registers[13]["__eq"] = (registers[12])
end

end
::p416::
do
do
registers[13]["__lt"] = (registers[12])
end

end
::p417::
do
do
registers[13]["__le"] = (registers[12])
end

end
goto p11
::p422::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p423::
do
do
registers[13] = (registers[12][3])
end

end
::p424::
do
do
registers[14] = (registers[12][1])
end

end
goto p759
::p445::
tick(445)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p446::
do
do
registers[18] = (0)
end

end
::p447::
do
do
registers[19] = (0)
end

end
::p448::
do
do
registers[20] = (255)
end

end
::p449::
do
do
registers[21] = (1)
end

end
goto p347
::p451::
tick(451)
do
do
registers[26] = registers[19] + 1
end

end
::p452::
do
do
registers[19] = registers[26] % 256
end

end
::p453::
do
do
(registers)[26] = registers[17][registers[19]]
end

end
goto p593
::p455::
do
do
registers[2] = (345)
end

end
goto p536
::p457::
do
do
registers[28] = (11)
end

end
::p458::
do
do
registers[29] = (4)
end

end
::p459::
do
do
registers[30] = (5)
end

end
::p460::
do
do
registers[31] = (6)
end

end
::p461::
do
do
registers[32] = (7)
end

end
goto p3
::p464::
do
do
registers[16] = registers[14] > registers[14]
end

end
goto p662
::p466::
do
do
registers[18] = registers[23] % 256
end

end
::p467::
do
do
(registers)[23] = registers[17][registers[18]]
end

end
::p468::
do
do
(registers)[25] = registers[17][registers[22]]
end

end
::p469::
do
do
(registers[17])[registers[18]] = registers[25]
end

end
::p470::
do
do
(registers[17])[registers[22]] = registers[23]
end

end
goto p23
::p472::
tick(472)
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
if branch_taken then goto p716 end
goto p445
::p474::
tick(474)
do
do
registers[15] = (1)
end

end
::p475::
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
if branch_taken then goto p148 end
::p476::
do
do
registers[28] = (11)
end

end
::p477::
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
::p478::
do
do
registers[14] = new_frame(15)
end

end
::p479::
do
do
registers[14][0] = 5
end

end
::p480::
do
do
registers[15] = (4)
end

end
goto p221
::p484::
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
::p485::
do
do
registers[22] = new_frame(15)
end

end
::p486::
do
do
registers[22][0] = 13
end

end
::p487::
do
do
registers[23] = (12)
end

end
goto p87
::p489::
branch_taken=false
do
do
if registers[13] == registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p307
::p501::
do
do
_, Q = pack_returns(...)
end

end
::p502::
do
do
registers[1] = Q[W]
end

end
::p503::
do
do
(registers)[2] = environment["string"]
end

end
::p504::
do
do
registers[2] = (registers[2]["len"])
end

end
goto p122
::p513::
tick(513)
do
do
(registers[14])[registers[14]] = registers[14]
end

end
::p514::
do
do
(registers)[16] = registers[14][registers[14]]
end

end
::p515::
do
do
(registers[14])[registers[14]] = registers[16]
end

end
::p516::
do
do
(registers)[12] = registers[3]
end

end
::p517::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p209 end
goto p606
::p519::
tick(519)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p520::
do
do
registers[2] = (registers[2] ~= registers[3])
end

end
::p521::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p219 end
goto p39
::p523::
do
do
registers[13] = (0)
end

end
::p524::
do
do
registers[14] = (1)
end

end
::p525::
do
do
registers[15] = (6)
end

end
::p526::
do
do
registers[16] = (7)
end

end
::p527::
do
do
registers[17] = (4)
end

end
::p528::
do
do
registers[18] = (5)
end

end
goto p755
::p531::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p532::
do
do
registers[19] = (0)
end

end
::p533::
do
do
registers[20] = (0)
end

end
goto p557
::p536::
do
do
registers[2] = registers[2] + 277
end

end
::p537::
do
do
(registers)[2] = (registers[2] - 357)
end

end
::p538::
do
do
registers[2] = registers[2] + 178
end

end
goto p259
::p540::
do
do
registers[25] = (14)
end

end
::p541::
do
do
registers[26] = (13)
end

end
::p542::
do
do
registers[27] = (12)
end

end
::p543::
do
do
registers[28] = (3)
end

end
::p544::
do
do
registers[29] = (2)
end

end
::p545::
do
do
registers[30] = (1)
end

end
::p546::
do
do
registers[31] = (0)
end

end
::p547::
do
do
registers[32] = (7)
end

end
::p548::
do
do
registers[33] = (6)
end

end
::p549::
do
do
registers[34] = (5)
end

end
::p550::
do
do
registers[35] = (4)
end

end
goto p625
::p552::
tick(552)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p553::
do
do
(registers)[22] = registers[21]
end

end
::p554::
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
::p555::
tick(555)
do
do
(registers)[18] = nil
end

end
::p556::
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
if branch_taken then goto p81 end
::p557::
do
do
registers[21] = ("")
end

end
::p558::
do
do
registers[22] = (5)
end

end
::p559::
do
do
registers[23] = (#registers[1])
end

end
::p560::
do
do
registers[24] = (1)
end

end
::p561::
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
if branch_taken then goto p672 end
::p562::
do
do
registers[15] = {
}
end

end
::p563::
do
do
(registers)[16] = registers[13]
end

end
::p564::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p565::
do
do
(registers)[15] = registers[14]
end

end
::p566::
do
do
(registers)[16] = registers[14]
end

end
goto p365
::p568::
branch_taken=false
do
do
if registers[13] ~= registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p694
::p570::
do
do
a = (D.f56)
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
::p571::
do
do
a = (D.f58)
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
::p572::
do
do
registers[13] = {
}
end

end
::p573::
do
do
registers[13]["__tostring"] = (registers[11])
end

end
::p574::
do
do
registers[13]["__call"] = (registers[12])
end

end
::p575::
do
do
registers[13]["__add"] = (registers[12])
end

end
goto p674
::p577::
do
do
registers[20] = (11)
end

end
::p578::
do
do
registers[21] = (10)
end

end
::p579::
do
do
registers[22] = (13)
end

end
goto p319
::p581::
do
do
(registers)[23] = registers[17][registers[22]]
end

end
::p582::
do
do
(registers)[23] = registers[18] + registers[23]
end

end
::p583::
do
do
registers[24] = registers[22] % 8
end

end
goto p336
::p593::
do
do
(registers)[26] = registers[20] + registers[26]
end

end
::p594::
do
do
registers[20] = registers[26] % 256
end

end
::p595::
do
do
(registers)[26] = registers[17][registers[20]]
end

end
::p596::
do
do
(registers)[28] = registers[17][registers[19]]
end

end
::p597::
do
do
a = (registers)
z = 17
end

end
::p598::
do
do
a = (a[z])
z = registers
q = (20)
end

end
::p599::
do
do
z = z[q]
end

end
::p600::
do
do
q = registers
m = 28
end

end
::p601::
do
do
q = (q[m])
a[z] = q
end

end
::p602::
do
do
(registers[17])[registers[19]] = registers[26]
end

end
::p603::
do
do
(registers)[26] = registers[10]
end

end
::p604::
do
do
(registers)[27] = registers[5]
end

end
goto p74
::p606::
do
do
(registers)[13] = environment["type"]
end

end
::p607::
do
do
a = (registers)
z = 14
end

end
::p608::
do
do
q = registers
m = 12
q = (q[m])
end

end
::p609::
do
do
(a)[z] = q
end

end
::p610::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p611::
branch_taken=false
do
do
if registers[13] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p209 end
goto p139
::p613::
tick(613)
do
do
(registers)[26] = registers[16][registers[26]]
end

end
::p614::
do
do
registers[21] = (registers[21] .. registers[26])
end

end
goto p672
::p616::
tick(616)
do
do
registers[19] = (255)
end

end
::p617::
do
do
registers[20] = (1)
end

end
::p618::
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
if branch_taken then goto p472 end
::p619::
do
do
registers[10] = new_frame(15)
end

end
::p620::
do
do
registers[10][0] = 0
end

end
::p621::
do
do
registers[11] = (1)
end

end
::p622::
do
do
registers[12] = (2)
end

end
::p623::
do
do
registers[13] = (3)
end

end
goto p384
::p625::
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
::p626::
do
do
registers[21] = new_frame(15)
end

end
::p627::
do
do
registers[21][0] = 12
end

end
::p628::
do
do
registers[22] = (13)
end

end
::p629::
do
do
registers[23] = (14)
end

end
::p630::
do
do
registers[24] = (15)
end

end
goto p269
::p645::
tick(645)
do
do
registers[16] = (registers[14] >= registers[14])
end

end
goto p254
::p653::
tick(653)
do
do
registers[14] = (5)
end

end
::p654::
do
do
registers[15] = (4)
end

end
::p655::
do
do
registers[16] = (7)
end

end
::p656::
do
do
registers[17] = (6)
end

end
goto p309
::p658::
do
do
registers[28] = registers[28] % 256
end

end
::p659::
do
do
(registers)[28] = registers[17][registers[28]]
end

end
::p660::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p613
::p662::
do
do
(registers)[15] = registers[16]
end

end
::p663::
do
do
registers[16] = (registers[14] <= registers[14])
end

end
::p664::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p254 end
goto p645
::p666::
do
do
(registers)[16] = registers[14]
end

end
goto p137
::p668::
do
do
registers[11] = (0)
end

end
::p669::
do
do
registers[12] = (3)
end

end
::p670::
do
do
registers[13] = (2)
end

end
goto p653
::p672::
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
if branch_taken then goto p451 end
goto p552
::p674::
do
do
registers[13]["__sub"] = (registers[12])
end

end
::p675::
do
do
registers[13]["__mul"] = (registers[12])
end

end
::p676::
do
do
registers[13]["__div"] = (registers[12])
end

end
::p677::
do
do
registers[13]["__mod"] = (registers[12])
end

end
::p678::
do
do
registers[13]["__pow"] = (registers[12])
end

end
goto p415
::p680::
do
do
registers[3] = (registers[3]["ceil"])
end

end
::p681::
do
do
(registers)[4] = environment["math"]
end

end
::p682::
do
do
registers[4] = (registers[4]["pi"])
end

end
goto p519
::p694::
do
do
registers[15] = (true)
end

end
::p695::
do
do
(registers[12])[registers[17]] = registers[14]
end

end
goto p81
::p697::
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
::p698::
do
do
registers[20] = new_frame(15)
end

end
::p699::
do
do
registers[20][0] = 11
end

end
::p700::
do
do
registers[21] = (10)
end

end
goto p328
::p704::
do
do
(registers)[19] = registers[14]
end

end
::p705::
do
do
(registers)[20] = registers[14]
end

end
::p706::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p707::
do
do
(registers)[20] = registers[14]
end

end
::p708::
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
::p709::
do
do
a = 16;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p710::
do
do
(registers)[16] = registers[14]
end

end
::p711::
do
do
registers[17] = (registers[14] .. registers[14])
end

end
::p712::
do
do
registers[18] = registers[14] .. ""
end

end
::p713::
do
do
registers[19] = "" .. registers[14]
end

end
::p714::
do
do
a = (16)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p513
::p716::
do
do
(registers)[22] = registers[4]
end

end
::p717::
do
do
(registers)[23] = registers[13]
end

end
::p718::
do
do
a = (22);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p150
::p722::
do
do
registers[22] = (12)
end

end
::p723::
do
do
registers[23] = (13)
end

end
::p724::
do
do
registers[24] = (14)
end

end
::p725::
do
do
registers[25] = (15)
end

end
::p726::
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
goto p92
::p729::
do
do
registers[22] = (13)
end

end
::p730::
do
do
registers[23] = (14)
end

end
::p731::
do
do
registers[24] = (15)
end

end
goto p35
::p733::
do
do
(registers)[18] = (registers[14] ^ registers[14])
end

end
::p734::
do
do
registers[17] = registers[17] % registers[18]
end

end
::p735::
do
do
registers[15] = (registers[16] - registers[17])
end

end
::p736::
do
do
registers[16] = registers[14] == registers[14]
end

end
goto p114
::p738::
do
do
registers[13] = new_frame(15)
end

end
::p739::
do
do
registers[13][0] = 4
end

end
::p740::
do
do
registers[14] = (5)
end

end
::p741::
do
do
registers[15] = (6)
end

end
goto p340
::p743::
do
do
registers[28] = (11)
end

end
::p744::
do
do
registers[29] = (10)
end

end
::p745::
do
do
registers[30] = (9)
end

end
::p746::
do
do
registers[31] = (8)
end

end
::p747::
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
::p748::
do
do
registers[17] = new_frame(15)
end

end
goto p60
::p750::
do
do
registers[20] = (11)
end

end
::p751::
do
do
registers[21] = (12)
end

end
::p752::
do
do
registers[22] = (13)
end

end
::p753::
do
do
registers[23] = (14)
end

end
goto p108
::p755::
do
do
registers[19] = (10)
end

end
::p756::
do
do
registers[20] = (11)
end

end
::p757::
do
do
registers[21] = (8)
end

end
goto p55
::p759::
do
do
registers[14] = registers[14] % 64
end

end
::p760::
do
do
(registers)[14] = 4 * registers[14]
end

end
::p761::
do
do
a = (registers)
end

end
::p762::
do
do
z = (14)
q = (registers)
end

end
::p763::
do
do
m = 14
end

end
::p764::
do
do
q = q[m]
m = 1
end

end
::p765::
do
do
q = (q + m);
(a)[z] = (q)
end

end
::p766::
do
do
registers[15] = (registers[12][2])
end

end
::p767::
do
do
registers[15] = registers[15] % 128
end

end
::p768::
do
do
(registers)[15] = 2 * registers[15]
end

end
::p769::
do
do
(registers)[15] = (registers[15] - 1)
end

end
::p770::
do
do
registers[16] = {
}
end

end
::p771::
do
do
registers[17] = {
}
end

end
::p772::
do
do
registers[18] = (0)
end

end
goto p616
::p774::
do
do
registers[19] = (1)
end

end
::p775::
do
do
registers[20] = (4)
end

end
::p776::
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
::p777::
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
::p778::
do
do
registers[13] = (1)
end

end
::p779::
do
do
registers[14] = (4)
end

end
goto p474
::p782::
do
do
registers[28] = (11)
end

end
::p783::
do
do
registers[29] = (10)
end

end
::p784::
do
do
registers[30] = (5)
end

end
::p785::
do
do
registers[31] = (4)
end

end
::p786::
do
do
registers[32] = (7)
end

end
::p787::
do
do
registers[33] = (6)
end

end
::p788::
do
do
registers[34] = (1)
end

end
::p789::
do
do
registers[35] = (0)
end

end
::p790::
do
do
registers[36] = (3)
end

end
goto p301
::p798::
do
do
(registers)[13] = registers[6]
end

end
::p799::
do
do
(registers)[14] = registers[12]
end

end
::p800::
do
do
(registers)[15] = nil
end

end
::p801::
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p802::
do
do
registers[13] = {
}
end

end
::p803::
do
do
registers[14] = {
}
end

end
::p804::
do
do
registers[15] = (false)
end

end
::p805::
do
do
(registers)[16] = registers[8]
end

end
::p806::
do
do
(registers)[17] = registers[12]
end

end
goto p555
::p809::
do
do
registers[29] = (8)
end

end
::p810::
do
do
registers[30] = (9)
end

end
::p811::
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
goto p199
end
end
