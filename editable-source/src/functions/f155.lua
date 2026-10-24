
-- Function f155; 344 recovered instruction blocks.
F.f155=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f155",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f155 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p129
::p2::
tick(2)
do
do
registers[13] = (registers[7] == "Right")
end

end
::p3::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p276 end
goto p229
::p5::
tick(5)
do
do
registers[14] = ("\226\174\156")
end

end
::p6::
do
do
registers[15] = ("\226\174\158")
end

end
::p7::
branch_taken=false
do
do
if registers[8] ~= "Second" then
    branch_taken=true
end
end

end
if branch_taken then goto p349 end
goto p573
::p9::
tick(9)
do
do
registers[13] = (registers[7] == "Forward")
end

end
goto p585
::p12::
tick(12)
do
do
registers[28] = registers[6] + 9
end

end
::p13::
do
do
registers[29] = (registers[18][1])
end

end
::p14::
do
do
registers[30] = (registers[18][2])
end

end
::p15::
do
do
registers[31] = (registers[18][3])
end

end
goto p595
::p22::
tick(22)
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p23::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p24::
do
do
registers[12] = (upvalues[6])
end

end
goto p69
::p26::
tick(26)
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p27::
do
do
registers[13] = new_frame(4)
end

end
::p28::
do
do
registers[14] = (35)
end

end
::p29::
do
do
registers[15] = (35)
end

end
goto p77
::p31::
tick(31)
do
do
(registers)[20] = registers[12]
end

end
goto p317
::p34::
tick(34)
do
do
registers[21] = (registers[15][1])
end

end
::p35::
do
do
registers[22] = (registers[15][2])
end

end
::p36::
do
do
registers[23] = (registers[15][3])
end

end
::p37::
do
do
registers[24] = (registers[15][4])
end

end
::p38::
do
do
registers[25] = ("+c")
end

end
::p39::
do
do
registers[26] = (0)
end

end
goto p180
::p41::
tick(41)
do
do
registers[16] = (registers[16] - registers[14])
end

end
::p42::
do
do
registers[17] = (registers[7] == "Right")
end

end
::p43::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p489 end
goto p324
::p45::
tick(45)
do
do
registers[12] = (upvalues[7])
end

end
::p46::
do
do
registers[13] = (registers[5] - registers[9])
end

end
::p47::
do
do
(registers)[14] = registers[6]
end

end
::p48::
do
do
(registers)[15] = registers[11]
end

end
::p49::
do
do
a = (12)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p61
::p51::
tick(51)
do
do
(registers)[19] = upvalues[9]["body_yaw"]
end

end
::p52::
do
do
registers[19] = (registers[19] ~= registers[0])
end

end
goto p227
::p54::
tick(54)
branch_taken=false
do
do
if registers[21] then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p518
::p56::
tick(56)
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p138 end
goto p147
::p58::
tick(58)
do
do
registers[16] = (registers[7] == "Right")
end

end
::p59::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p295 end
goto p198
::p61::
tick(61)
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
::p63::
tick(63)
do
do
(registers)[25] = (registers[15] - 13)
end

end
::p64::
do
do
(registers)[26] = (registers[6] - 9)
end

end
::p65::
do
do
(registers)[27] = (registers[15] - 13)
end

end
::p66::
do
do
registers[28] = registers[6] + 9
end

end
::p67::
do
do
registers[29] = (registers[17][1])
end

end
goto p353
::p69::
do
do
registers[13] = (registers[1]["manual_arrows_ts_cl2"])
end

end
::p70::
do
do
registers[14] = new_frame(4)
end

end
::p71::
do
do
registers[15] = (0)
end

end
::p72::
do
do
registers[16] = (200)
end

end
::p73::
do
do
registers[17] = (255)
end

end
::p74::
do
do
registers[18] = (255)
end

end
::p75::
do
do
a = (14)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p26
::p77::
do
do
registers[16] = (35)
end

end
::p78::
do
do
registers[17] = (150)
end

end
::p79::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p80::
do
do
registers[14] = (0)
end

end
::p81::
branch_taken=false
do
do
if registers[8] ~= "Fourth" then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p437
::p83::
tick(83)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p310
::p85::
tick(85)
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
::p86::
tick(86)
do
do
registers[12] = (registers[11][4])
end

end
goto p525
::p88::
tick(88)
branch_taken=false
do
do
if registers[8] ~= "First" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p463 end
goto p614
::p90::
tick(90)
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p91::
do
do
registers[1] = (registers[1]["stubs"])
end

end
goto p83
::p108::
tick(108)
do
do
(registers)[16] = registers[12]
end

end
goto p288
::p110::
tick(110)
do
do
registers[14] = (255)
end

end
::p111::
do
do
registers[15] = (0)
end

end
::p112::
do
do
registers[16] = (0)
end

end
::p113::
do
do
registers[17] = (255)
end

end
::p114::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p297
::p116::
tick(116)
do
do
(registers)[22] = upvalues[3][135]
end

end
::p117::
do
do
(registers)[23] = registers[15]
end

end
::p118::
do
do
(registers)[24] = registers[6]
end

end
goto p63
::p120::
tick(120)
do
do
(registers)[19] = upvalues[9]["body_yaw"]
end

end
::p121::
do
do
registers[19] = (registers[19]["inverter"])
end

end
goto p379
::p129::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p130::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p131::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p210 end
goto p85
::p133::
tick(133)
do
do
registers[29] = (registers[21][3])
end

end
::p134::
do
do
registers[30] = (registers[21][4])
end

end
::p135::
do
do
a = (22)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p136::
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
::p138::
tick(138)
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
::p139::
tick(139)
do
do
a = (11)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p140::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p141::
do
do
(registers)[12] = environment["type"]
end

end
::p142::
do
do
(registers)[13] = registers[11]
end

end
::p143::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p150
::p145::
tick(145)
branch_taken=false
do
do
if registers[8] ~= "Fifth" then
    branch_taken=true
end
end

end
if branch_taken then goto p237 end
goto p441
::p147::
do
do
registers[2] = (registers[1]["manual_arrows"])
end

end
::p148::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p138 end
goto p291
::p150::
branch_taken=false
do
do
if registers[12] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p396 end
goto p242
::p160::
tick(160)
do
do
registers[15] = (100)
end

end
::p161::
do
do
registers[16] = (255)
end

end
::p162::
do
do
a = (12)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p163::
do
do
registers[13] = (registers[7] == "Left")
end

end
goto p423
::p165::
tick(165)
do
do
a = 16
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
::p166::
do
do
registers[18] = (upvalues[8])
end

end
::p167::
do
do
registers[19] = ("+")
end

end
::p168::
do
do
(registers)[20] = registers[15]
end

end
goto p558
::p171::
tick(171)
do
do
a = (22)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p172::
do
do
(registers)[22] = upvalues[3][135]
end

end
::p173::
do
do
(registers)[23] = registers[16]
end

end
::p174::
do
do
(registers)[24] = registers[6]
end

end
goto p445
::p176::
tick(176)
do
do
(registers)[15] = registers[5] + registers[9]
end

end
::p177::
do
do
(registers)[15] = registers[15] + registers[14]
end

end
::p178::
do
do
registers[16] = (registers[5] - registers[9])
end

end
goto p41
::p180::
do
do
registers[27] = ("\226\174\156")
end

end
::p181::
do
do
a = (18)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p182::
do
do
(registers)[18] = upvalues[3][131]
end

end
::p183::
do
do
(registers)[19] = registers[5] + registers[9]
end

end
::p184::
do
do
(registers)[20] = (registers[6] - 1)
end

end
::p185::
do
do
registers[21] = (registers[16][1])
end

end
::p186::
do
do
registers[22] = (registers[16][2])
end

end
::p187::
do
do
registers[23] = (registers[16][3])
end

end
::p188::
do
do
registers[24] = (registers[16][4])
end

end
::p189::
do
do
registers[25] = ("+c")
end

end
::p190::
do
do
registers[26] = (0)
end

end
::p191::
do
do
registers[27] = ("\226\174\158")
end

end
::p192::
do
do
a = (18)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p193::
do
do
(registers)[18] = upvalues[3][131]
end

end
::p194::
do
do
registers[19] = registers[5] + 1
end

end
::p195::
do
do
(registers)[20] = registers[6] + registers[14]
end

end
::p196::
do
do
registers[21] = (registers[17][1])
end

end
goto p279
::p198::
do
do
(registers)[16] = registers[11]
end

end
goto p295
::p200::
tick(200)
do
do
registers[29] = (registers[20][3])
end

end
::p201::
do
do
registers[30] = (registers[20][4])
end

end
::p202::
do
do
a = (22)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p203::
do
do
(registers)[22] = upvalues[3][128]
end

end
goto p467
::p205::
tick(205)
do
do
(registers)[18] = environment["type"]
end

end
::p206::
do
do
(registers)[19] = registers[16]
end

end
::p207::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p208::
branch_taken=false
do
do
if registers[18] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p223
::p210::
do
do
registers[1] = (upvalues[1])
end

end
::p211::
do
do
registers[2] = ("paint:manual_arrows")
end

end
::p212::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p213::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p485 end
goto p488
::p215::
tick(215)
do
do
registers[11] = (upvalues[6])
end

end
::p216::
do
do
registers[12] = (registers[1]["manual_arrows_cs2_color"])
end

end
::p217::
do
do
registers[13] = new_frame(4)
end

end
::p218::
do
do
registers[14] = (235)
end

end
::p219::
do
do
registers[15] = (90)
end

end
goto p578
::p221::
tick(221)
branch_taken=false
do
do
if registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p358 end
goto p255
::p223::
do
do
(registers)[17] = upvalues[3][155]
end

end
::p224::
do
do
(registers)[18] = registers[15] * registers[15]
end

end
::p225::
do
do
(registers)[19] = registers[16] * registers[16]
end

end
goto p313
::p227::
tick(227)
branch_taken=false
do
do
if not registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p379 end
goto p120
::p229::
do
do
registers[13] = (registers[11][4])
end

end
goto p276
::p231::
tick(231)
do
do
(registers)[17] = registers[12]
end

end
goto p474
::p233::
tick(233)
do
do
(registers)[2] = upvalues[3][32]
end

end
::p234::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p235::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p548 end
goto p413
::p237::
do
do
registers[11] = (upvalues[6])
end

end
::p238::
do
do
registers[12] = (registers[1]["manual_arrows_ts_cl1"])
end

end
::p239::
do
do
registers[13] = new_frame(4)
end

end
::p240::
do
do
registers[14] = (175)
end

end
goto p305
::p242::
do
do
(registers)[12] = upvalues[3][151]
end

end
::p243::
do
do
registers[13] = (30)
end

end
::p244::
do
do
(registers)[14] = upvalues[3][162]
end

end
::p245::
do
do
registers[15] = (140)
end

end
::p246::
do
do
(registers)[16] = registers[11]
end

end
::p247::
do
do
a = 14
z = (3)
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
::p248::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p249::
do
do
(registers)[9] = registers[12]
end

end
goto p396
::p253::
tick(253)
do
do
registers[13] = (0)
end

end
goto p5
::p255::
do
do
(registers)[18] = registers[13]
end

end
goto p358
::p257::
tick(257)
do
do
a = 15
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
::p258::
do
do
(registers)[17] = environment["type"]
end

end
::p259::
do
do
(registers)[18] = registers[15]
end

end
::p260::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p326
::p262::
tick(262)
do
do
(registers)[21] = registers[13]
end

end
goto p54
::p264::
tick(264)
do
do
registers[12] = (upvalues[7])
end

end
::p265::
do
do
(registers)[13] = registers[5]
end

end
::p266::
do
do
registers[14] = (registers[6] - registers[9])
end

end
::p267::
do
do
(registers)[15] = registers[11]
end

end
::p268::
do
do
a = (12)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p61
::p276::
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p253
::p279::
do
do
registers[22] = (registers[17][2])
end

end
::p280::
do
do
registers[23] = (registers[17][3])
end

end
::p281::
do
do
registers[24] = (registers[17][4])
end

end
::p283::
do
do
registers[25] = ("+c")
end

end
::p284::
do
do
registers[26] = (0)
end

end
::p285::
do
do
registers[27] = ("\226\174\159")
end

end
::p286::
do
do
a = (18)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p287::
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
::p288::
tick(288)
do
do
(registers)[17] = registers[13]
end

end
::p289::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p474 end
goto p231
::p291::
do
do
registers[3] = (registers[1]["manual_arrows"])
end

end
::p292::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p293::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p347
::p295::
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p288 end
goto p108
::p297::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p298::
do
do
registers[12] = new_frame(4)
end

end
::p299::
do
do
registers[13] = (100)
end

end
::p300::
do
do
registers[14] = (100)
end

end
goto p160
::p302::
tick(302)
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p449
::p305::
do
do
registers[15] = (255)
end

end
::p306::
do
do
registers[16] = (0)
end

end
::p307::
do
do
registers[17] = (255)
end

end
goto p22
::p310::
do
do
(registers)[1] = nil
end

end
goto p56
::p313::
do
do
(registers)[18] = registers[18] + registers[19]
end

end
::p314::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p315::
do
do
registers[14] = registers[17] / 6
end

end
goto p176
::p317::
tick(317)
branch_taken=false
do
do
if registers[20] then
    branch_taken=true
end
end

end
if branch_taken then goto p418 end
goto p476
::p319::
tick(319)
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p320::
do
do
registers[8] = (upvalues[5])
end

end
::p321::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
goto p492
::p324::
do
do
(registers)[17] = registers[11]
end

end
goto p489
::p326::
branch_taken=false
do
do
if registers[17] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p205
::p333::
tick(333)
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p585 end
goto p9
::p335::
tick(335)
do
do
registers[12] = (registers[7] == "Left")
end

end
::p336::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p525 end
goto p86
::p339::
tick(339)
do
do
registers[25] = (registers[11][3])
end

end
::p340::
do
do
(registers)[26] = registers[12]
end

end
::p341::
do
do
registers[27] = ("+")
end

end
goto p500
::p343::
tick(343)
do
do
registers[19] = (false)
end

end
goto p382
::p345::
tick(345)
do
do
(registers)[15] = registers[11]
end

end
goto p302
::p347::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p233 end
goto p138
::p349::
tick(349)
do
do
registers[16] = (upvalues[8])
end

end
::p350::
do
do
registers[17] = ("+")
end

end
::p351::
do
do
(registers)[18] = registers[14]
end

end
goto p165
::p353::
do
do
registers[30] = (registers[17][2])
end

end
::p354::
do
do
registers[31] = (registers[17][3])
end

end
::p355::
do
do
registers[32] = (registers[17][4])
end

end
goto p171
::p358::
do
do
registers[19] = (upvalues[9])
end

end
::p359::
do
do
registers[19] = (registers[19] ~= registers[0])
end

end
::p360::
branch_taken=false
do
do
if not registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p227 end
goto p51
::p362::
tick(362)
do
do
(registers)[18] = upvalues[3][131]
end

end
::p363::
do
do
registers[19] = (registers[5] - registers[9])
end

end
::p364::
do
do
(registers)[20] = (registers[6] - 1)
end

end
goto p34
::p372::
tick(372)
do
do
registers[12] = (0)
end

end
goto p2
::p374::
tick(374)
branch_taken=false
do
do
if registers[7] ~= "Right" then
    branch_taken=true
end
end

end
if branch_taken then goto p571 end
goto p478
::p376::
tick(376)
do
do
(registers)[29] = registers[15]
end

end
::p377::
do
do
a = (20)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p378::
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
::p379::
branch_taken=false
do
do
if registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p382 end
goto p343
::p382::
do
do
(registers)[20] = registers[19]
end

end
::p383::
branch_taken=false
do
do
if not registers[20] then
    branch_taken=true
end
end

end
if branch_taken then goto p317 end
goto p31
::p396::
tick(396)
branch_taken=false
do
do
if registers[8] ~= "CS2" then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p215
::p411::
tick(411)
do
do
(registers)[17] = registers[13]
end

end
goto p555
::p413::
do
do
(registers)[3] = upvalues[3][50]
end

end
::p414::
do
do
(registers)[4] = registers[2]
end

end
::p415::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p416::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p425 end
goto p548
::p418::
tick(418)
do
do
(registers)[21] = registers[19]
end

end
::p419::
branch_taken=false
do
do
if not registers[21] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p262
::p423::
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p333 end
goto p452
::p425::
do
do
(registers)[3] = upvalues[3][57]
end

end
::p426::
do
do
a = 3
z = (1)
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
::p427::
do
do
registers[5] = (registers[3] * 0.5)
end

end
::p428::
do
do
registers[6] = (registers[4] * 0.5)
end

end
::p429::
do
do
registers[7] = (upvalues[4])
end

end
goto p319
::p437::
do
do
(registers)[15] = upvalues[3][47]
end

end
::p438::
do
do
(registers)[16] = registers[2]
end

end
::p439::
do
do
registers[17] = ("m_vecVelocity")
end

end
goto p257
::p441::
do
do
registers[11] = (upvalues[6])
end

end
::p442::
do
do
registers[12] = (registers[1]["manual_arrows_color"])
end

end
::p443::
do
do
registers[13] = new_frame(4)
end

end
goto p110
::p445::
do
do
registers[25] = registers[16] + 13
end

end
::p446::
do
do
(registers)[26] = (registers[6] - 9)
end

end
::p447::
do
do
registers[27] = registers[16] + 13
end

end
goto p12
::p449::
do
do
(registers)[15] = registers[12]
end

end
goto p58
::p452::
do
do
registers[13] = (registers[7] == "Right")
end

end
goto p333
::p454::
tick(454)
do
do
registers[22] = (registers[6] - registers[22])
end

end
::p455::
do
do
registers[23] = (registers[11][1])
end

end
::p456::
do
do
registers[24] = (registers[11][2])
end

end
goto p339
::p463::
tick(463)
do
do
registers[11] = (upvalues[6])
end

end
::p464::
do
do
registers[12] = (registers[1]["manual_arrows_color"])
end

end
::p465::
do
do
registers[13] = new_frame(4)
end

end
goto p496
::p467::
do
do
registers[23] = registers[16] + 13
end

end
::p468::
do
do
(registers)[24] = (registers[6] - 9)
end

end
::p469::
do
do
registers[25] = (2)
end

end
::p470::
do
do
registers[26] = (18)
end

end
::p471::
do
do
registers[27] = (registers[21][1])
end

end
::p472::
do
do
registers[28] = (registers[21][2])
end

end
goto p133
::p474::
branch_taken=false
do
do
if registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p362 end
goto p527
::p476::
do
do
(registers)[20] = registers[13]
end

end
goto p418
::p478::
do
do
registers[12] = (upvalues[7])
end

end
::p479::
do
do
(registers)[13] = registers[5] + registers[9]
end

end
::p480::
do
do
(registers)[14] = registers[6]
end

end
goto p520
::p482::
tick(482)
do
do
registers[11] = (registers[10]["get"])
end

end
::p483::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p396 end
goto p139
::p485::
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p486::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p90
::p488::
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
::p489::
branch_taken=false
do
do
if registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p555 end
goto p411
::p492::
do
do
registers[9] = (55)
end

end
::p493::
do
do
registers[10] = (registers[1]["manual_arrows_offset"])
end

end
::p494::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p396 end
goto p482
::p496::
do
do
registers[14] = (138)
end

end
::p497::
do
do
registers[15] = (207)
end

end
::p498::
do
do
registers[16] = (255)
end

end
goto p621
::p500::
do
do
registers[28] = (0)
end

end
::p501::
do
do
(registers)[29] = registers[14]
end

end
::p502::
do
do
a = (20)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p503::
do
do
(registers)[20] = upvalues[3][131]
end

end
::p504::
do
do
(registers)[21] = registers[5] + registers[9]
end

end
::p505::
do
do
registers[22] = (registers[18] * 0.5)
end

end
::p506::
do
do
registers[21] = (registers[21] - registers[22])
end

end
::p507::
do
do
registers[22] = (registers[19] * 0.5)
end

end
::p508::
do
do
registers[22] = (registers[6] - registers[22])
end

end
::p509::
do
do
registers[23] = (registers[11][1])
end

end
goto p549
::p518::
do
do
(registers)[21] = registers[12]
end

end
goto p116
::p520::
do
do
(registers)[15] = registers[11]
end

end
::p521::
do
do
a = (12)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p61
::p525::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p372
::p527::
do
do
(registers)[17] = registers[11]
end

end
goto p362
::p548::
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
::p549::
do
do
registers[24] = (registers[11][2])
end

end
::p550::
do
do
registers[25] = (registers[11][3])
end

end
::p551::
do
do
(registers)[26] = registers[13]
end

end
::p552::
do
do
registers[27] = ("+")
end

end
::p553::
do
do
registers[28] = (0)
end

end
goto p376
::p555::
do
do
registers[18] = (registers[7] == "Left")
end

end
::p556::
branch_taken=false
do
do
if not registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p619
::p558::
do
do
a = 18
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
::p559::
do
do
(registers)[20] = upvalues[3][131]
end

end
::p560::
do
do
registers[21] = (registers[5] - registers[9])
end

end
::p561::
do
do
registers[22] = (registers[16] * 0.5)
end

end
::p562::
do
do
registers[21] = (registers[21] - registers[22])
end

end
::p563::
do
do
registers[22] = (registers[17] * 0.5)
end

end
goto p454
::p571::
branch_taken=false
do
do
if registers[7] ~= "Forward" then
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p264
::p573::
do
do
registers[15] = ("\226\175\136")
end

end
::p574::
do
do
registers[14] = ("\226\175\135")
end

end
goto p349
::p578::
do
do
registers[16] = (170)
end

end
::p579::
do
do
registers[17] = (255)
end

end
::p580::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p581::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p582::
branch_taken=false
do
do
if registers[7] ~= "Left" then
    branch_taken=true
end
end

end
if branch_taken then goto p374 end
goto p45
::p585::
do
do
(registers)[14] = (registers[9] - 5)
end

end
::p586::
do
do
registers[15] = (registers[7] == "Left")
end

end
::p587::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p302 end
goto p345
::p595::
do
do
registers[32] = (registers[18][4])
end

end
::p596::
do
do
a = (22)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p597::
do
do
(registers)[22] = upvalues[3][128]
end

end
::p598::
do
do
(registers)[23] = (registers[15] - 15)
end

end
::p599::
do
do
(registers)[24] = (registers[6] - 9)
end

end
::p600::
do
do
registers[25] = (2)
end

end
::p601::
do
do
registers[26] = (18)
end

end
::p602::
do
do
registers[27] = (registers[20][1])
end

end
::p603::
do
do
registers[28] = (registers[20][2])
end

end
goto p200
::p614::
branch_taken=false
do
do
if registers[8] ~= "Second" then
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p463
::p619::
do
do
(registers)[18] = registers[11]
end

end
goto p221
::p621::
do
do
registers[17] = (255)
end

end
::p622::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p623::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p335
end
end
