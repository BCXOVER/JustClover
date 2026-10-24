
-- Function f345; 379 recovered instruction blocks.
F.f345=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f345",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f345 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p585
::p2::
tick(2)
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p581 end
goto p144
::p5::
tick(5)
do
do
a = (27);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p6::
branch_taken=false
do
do
if not (not (2 <= registers[27])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p649 end
goto p652
::p8::
tick(8)
do
do
registers[30] = (0)
end

end
goto p642
::p10::
tick(10)
branch_taken=false
do
do
a = (4)
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
if branch_taken then goto p563 end
goto p448
::p13::
tick(13)
do
do
registers[27] = registers[27] + 1
end

end
::p14::
do
do
registers[28] = (8)
end

end
::p15::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p373
::p17::
tick(17)
do
do
(registers)[27] = upvalues[1][161]
end

end
::p18::
do
do
registers[28] = (registers[18]["cur_yaw"])
end

end
::p19::
do
do
a = (27);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p620
::p21::
tick(21)
do
do
(registers)[26] = registers[26] + registers[27]
end

end
::p22::
do
do
registers[27] = (12)
end

end
::p23::
do
do
a = 25
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p24::
do
do
registers[14]["jitter_ticks"] = (registers[25])
end

end
goto p91
::p26::
tick(26)
do
do
registers[13] = (upvalues[9])
end

end
::p27::
do
do
(registers)[14] = registers[6]
end

end
::p28::
do
do
a = (13)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p10
::p31::
tick(31)
do
do
registers[16] = (registers[16] * 120)
end

end
::p32::
do
do
(registers)[16] = (registers[16] - 59)
end

end
::p33::
do
do
registers[17] = {
}
end

end
::p34::
do
do
registers[18] = (upvalues[12])
end

end
::p35::
do
do
(registers)[19] = registers[6]
end

end
::p36::
do
do
(registers)[20] = registers[11]
end

end
::p37::
do
do
a = 18
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p66
::p39::
tick(39)
do
do
registers[23] = (registers[18]["eye_yaw"])
end

end
::p40::
do
do
registers[22] = (registers[22] - registers[23])
end

end
::p41::
do
do
registers[22] = registers[22] + 180
end

end
::p42::
do
do
registers[23] = (180)
end

end
::p43::
do
do
a = 21
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p44::
do
do
registers[21] = (registers[21] * -1)
end

end
::p45::
do
do
registers[22] = (registers[14]["n_yaw"])
end

end
::p46::
branch_taken=false
do
do
if registers[22] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p664 end
goto p289
::p48::
tick(48)
do
do
registers[14]["negative_votes"] = (registers[26])
end

end
goto p126
::p50::
tick(50)
do
do
(registers)[32] = upvalues[1][161]
end

end
::p51::
do
do
registers[33] = (registers[14]["last_angle"])
end

end
::p52::
do
do
registers[33] = (registers[30] - registers[33])
end

end
::p53::
do
do
a = (32);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p54::
branch_taken=false
do
do
if not (not (registers[32] < 7)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p574 end
goto p318
::p61::
tick(61)
do
do
(registers)[27] = (registers[27] - 1)
end

end
::p62::
do
do
registers[28] = (0)
end

end
::p63::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p64::
do
do
registers[14]["positive_votes"] = (registers[26])
end

end
goto p138
::p66::
do
do
registers[17]["max_yaw"] = (registers[18])
end

end
::p67::
do
do
registers[17]["cur_yaw"] = (registers[16])
end

end
::p68::
do
do
registers[17]["head"] = (registers[12])
end

end
::p69::
do
do
registers[18] = (registers[11]["eye_angles_y"])
end

end
::p70::
branch_taken=false
do
do
if registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p173 end
goto p392
::p72::
tick(72)
do
do
registers[14]["stable_side"] = (registers[27])
end

end
goto p649
::p74::
tick(74)
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p407 end
goto p579
::p76::
tick(76)
do
do
registers[27] = (-1)
end

end
goto p72
::p81::
tick(81)
do
do
(registers)[26] = (registers[26] - 1)
end

end
::p82::
do
do
registers[27] = (0)
end

end
::p83::
do
do
a = 25
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p180
::p85::
tick(85)
do
do
registers[13]["force_body"] = (registers[32])
end

end
::p86::
do
do
registers[14]["last_angle"] = (registers[30])
end

end
::p87::
do
do
registers[14]["n_yaw"] = (registers[21])
end

end
goto p10
::p89::
tick(89)
branch_taken=false
do
do
if registers[11] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p601 end
goto p655
::p91::
tick(91)
do
do
registers[25] = (registers[14]["yaw_update_tick"])
end

end
::p92::
do
do
(registers)[26] = upvalues[1][23]
end

end
::p93::
do
do
top = 26;
(registers)[top] = registers[top]()
end

end
::p94::
do
do
registers[25] = registers[25] > registers[26]
end

end
::p95::
branch_taken=false
do
do
if registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p209 end
goto p201
::p97::
tick(97)
do
do
registers[25] = (0)
end

end
goto p500
::p100::
tick(100)
do
do
registers[27] = (registers[14]["last_side"])
end

end
goto p346
::p103::
tick(103)
do
do
(registers)[3] = upvalues[6]["ragebot"]
end

end
::p104::
do
do
registers[3] = (registers[3]["enemy_resolver_generate"])
end

end
::p105::
do
do
registers[3] = registers[3] == registers[0]
end

end
::p106::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p494 end
goto p386
::p108::
tick(108)
do
do
registers[13]["yaw"] = (registers[30])
end

end
::p109::
do
do
(registers)[30] = upvalues[18]["clamp"]
end

end
::p110::
do
do
registers[31] = (registers[18]["max_yaw"])
end

end
::p111::
do
do
(registers)[31] = registers[31] * registers[27]
end

end
goto p506
::p115::
tick(115)
do
do
registers[30] = (registers[18]["eye_yaw"])
end

end
::p116::
do
do
registers[31] = (registers[20]["y"])
end

end
::p117::
do
do
registers[30] = (registers[30] - registers[31])
end

end
goto p108
::p120::
tick(120)
branch_taken=false
do
do
if not (not (registers[20] < 1)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p680 end
goto p246
::p122::
tick(122)
do
do
(registers)[32] = registers[31] <= 55
end

end
goto p266
::p124::
tick(124)
do
do
registers[27] = (0)
end

end
goto p450
::p126::
tick(126)
do
do
registers[26] = (registers[14]["positive_votes"])
end

end
::p127::
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p632 end
goto p396
::p136::
tick(136)
do
do
registers[31] = (registers[31] >= 3)
end

end
goto p645
::p138::
do
do
(registers)[26] = upvalues[1][151]
end

end
::p139::
do
do
registers[27] = (registers[14]["negative_votes"])
end

end
::p140::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p466 end
goto p238
::p142::
tick(142)
do
do
(registers)[31] = registers[22] > 1
end

end
goto p569
::p144::
tick(144)
do
do
(registers)[3] = upvalues[3]["reset"]
end

end
::p145::
do
do
top = (3)
registers[top]()
top = top - 1
end

end
::p146::
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
::p148::
tick(148)
do
do
registers[28] = (upvalues[15])
end

end
::p149::
do
do
(registers)[29] = registers[6]
end

end
::p150::
do
do
a = (28);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p151::
do
do
(registers)[27] = registers[28]
end

end
goto p613
::p169::
tick(169)
do
do
registers[27] = (0)
end

end
goto p672
::p171::
tick(171)
do
do
registers[26] = (14)
end

end
goto p17
::p173::
tick(173)
do
do
registers[17]["eye_yaw"] = (registers[18])
end

end
::p174::
do
do
(registers[15])[registers[8]] = registers[17]
end

end
::p175::
do
do
(registers)[17] = registers[15][registers[9]]
end

end
::p176::
do
do
(registers)[18] = registers[15][registers[8]]
end

end
::p177::
do
do
registers[19] = (registers[18]["head"])
end

end
::p178::
branch_taken=false
do
do
if registers[17] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p680 end
goto p332
::p180::
do
do
registers[14]["jitter_ticks"] = (registers[25])
end

end
goto p91
::p182::
tick(182)
do
do
registers[31] = (registers[31] >= 5)
end

end
::p183::
branch_taken=false
do
do
if registers[31] then
    branch_taken=true
end
end

end
if branch_taken then goto p645 end
goto p272
::p185::
tick(185)
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p186::
branch_taken=false
do
do
if registers[12] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p228 end
goto p26
::p188::
tick(188)
do
do
(registers)[29] = upvalues[1][161]
end

end
::p189::
do
do
registers[30] = (registers[28] - registers[21])
end

end
::p190::
do
do
a = (29);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p191::
do
do
(registers)[30] = upvalues[1][161]
end

end
::p192::
do
do
registers[31] = (registers[18]["cur_yaw"])
end

end
goto p282
::p194::
tick(194)
do
do
registers[26] = (9)
end

end
goto p240
::p197::
tick(197)
do
do
registers[27] = (upvalues[15])
end

end
::p198::
do
do
(registers)[28] = registers[6]
end

end
::p199::
do
do
a = (27);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p260
::p201::
do
do
registers[25] = (registers[14]["jitter_ticks"])
end

end
::p202::
branch_taken=false
do
do
if registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p500 end
goto p97
::p209::
tick(209)
do
do
(registers)[26] = upvalues[1][161]
end

end
::p210::
do
do
(registers)[27] = registers[21]
end

end
::p211::
do
do
a = (26);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p567
::p213::
tick(213)
do
do
(registers)[29] = (registers[22] - 1)
end

end
::p214::
do
do
registers[30] = (upvalues[17])
end

end
::p215::
do
do
registers[30] = (#registers[30])
end

end
::p216::
do
do
registers[29] = registers[29] % registers[30]
end

end
::p217::
do
do
registers[29] = registers[29] + 1
end

end
::p218::
do
do
registers[30] = (registers[14]["stored_eye_angles"])
end

end
::p219::
do
do
(registers)[30] = registers[30][registers[28]]
end

end
::p220::
branch_taken=false
do
do
if registers[30] then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p115
::p222::
tick(222)
do
do
registers[14]["yaw_update_tick"] = (registers[25])
end

end
::p223::
do
do
(registers)[25] = upvalues[1][162]
end

end
::p224::
do
do
registers[26] = (registers[14]["jitter_ticks"])
end

end
goto p74
::p228::
do
do
registers[13] = (upvalues[11])
end

end
::p229::
do
do
(registers)[14] = registers[6]
end

end
::p230::
do
do
a = 13
z = (2)
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
::p231::
do
do
(registers)[16] = upvalues[1][47]
end

end
goto p543
::p238::
do
do
registers[27] = (0)
end

end
goto p466
::p240::
tick(240)
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p171
::p242::
tick(242)
do
do
(registers)[27] = 0.1879 / registers[27]
end

end
::p243::
do
do
a = (26);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p244::
do
do
(registers)[25] = registers[25] + registers[26]
end

end
goto p222
::p246::
do
do
registers[21] = (registers[18]["head"])
end

end
::p247::
do
do
registers[22] = (registers[17]["head"])
end

end
::p248::
do
do
registers[21] = (registers[21] - registers[22])
end

end
::p249::
do
do
registers[21] = (registers[21] / registers[20])
end

end
goto p596
::p251::
tick(251)
do
do
a = 25
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
::p252::
do
do
a = 24
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p253::
do
do
registers[14]["last_yaw_delta"] = (registers[24])
end

end
::p254::
do
do
(registers)[25] = upvalues[1][151]
end

end
::p255::
do
do
(registers)[26] = registers[22] > 1
end

end
::p256::
branch_taken=false
do
do
if not registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p240 end
goto p194
::p258::
tick(258)
branch_taken=false
do
do
if registers[3] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p2
::p260::
tick(260)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p613 end
goto p390
::p262::
tick(262)
do
do
(registers)[26] = upvalues[1][162]
end

end
::p263::
do
do
registers[27] = (registers[14]["negative_votes"])
end

end
::p264::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p672 end
goto p169
::p266::
tick(266)
branch_taken=false
do
do
if registers[32] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p640
::p270::
tick(270)
do
do
registers[22] = (1)
end

end
goto p291
::p272::
do
do
(registers)[31] = upvalues[1][161]
end

end
::p273::
do
do
(registers)[32] = registers[26]
end

end
::p274::
do
do
a = (31);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p136
::p277::
tick(277)
do
do
(registers)[32] = upvalues[1][161]
end

end
::p278::
do
do
(registers)[33] = registers[30]
end

end
::p279::
do
do
a = (32);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p280::
do
do
(registers)[32] = registers[32] > 52
end

end
goto p659
::p282::
do
do
a = (30);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p283::
do
do
registers[30] = (registers[30] * 0.46)
end

end
::p284::
branch_taken=false
do
do
if not (registers[30] < registers[29]) then
    branch_taken=true
end
end

end
if branch_taken then goto p516 end
goto p334
::p286::
tick(286)
do
do
registers[27] = (registers[14]["stable_side"])
end

end
::p287::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p346 end
goto p100
::p289::
do
do
registers[14]["n_yaw"] = (registers[21])
end

end
goto p664
::p291::
tick(291)
do
do
(registers)[23] = registers[22] > 1
end

end
::p292::
branch_taken=false
do
do
if not registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p432 end
goto p429
::p294::
tick(294)
do
do
(registers)[19] = registers[22] + registers[23]
end

end
goto p680
::p296::
tick(296)
do
do
registers[27] = (0)
end

end
::p301::
tick(301)
do
do
(registers)[27] = (registers[27] - 1)
end

end
::p302::
do
do
registers[28] = (0)
end

end
::p303::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p304::
do
do
registers[14]["positive_votes"] = (registers[26])
end

end
goto p126
::p306::
tick(306)
do
do
registers[27] = (0)
end

end
goto p61
::p308::
tick(308)
do
do
registers[8] = (registers[7][1])
end

end
::p309::
do
do
registers[9] = (registers[7][2])
end

end
::p310::
do
do
registers[10] = (upvalues[8])
end

end
::p311::
do
do
(registers)[11] = registers[6]
end

end
::p312::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p637
::p314::
tick(314)
do
do
registers[31] = (registers[14]["jitter_ticks"])
end

end
::p315::
branch_taken=false
do
do
if registers[31] then
    branch_taken=true
end
end

end
if branch_taken then goto p182 end
goto p483
::p318::
do
do
registers[30] = (registers[14]["last_angle"])
end

end
goto p574
::p322::
tick(322)
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p76
::p332::
branch_taken=false
do
do
if registers[18] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p680 end
goto p361
::p334::
tick(334)
do
do
registers[29] = (registers[14]["stored_eye_angles"])
end

end
::p335::
do
do
registers[30] = (registers[18]["eye_yaw"])
end

end
::p336::
do
do
registers[31] = (registers[20]["y"])
end

end
goto p368
::p339::
tick(339)
do
do
(registers)[24] = upvalues[1][161]
end

end
::p340::
do
do
registers[25] = (upvalues[14])
end

end
::p341::
do
do
registers[26] = (registers[14]["n_yaw"])
end

end
::p342::
do
do
registers[26] = (registers[21] - registers[26])
end

end
::p343::
do
do
registers[27] = (180)
end

end
goto p251
::p346::
tick(346)
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p260 end
goto p197
::p348::
tick(348)
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p661
::p350::
tick(350)
do
do
registers[16] = (0.5)
end

end
goto p31
::p354::
tick(354)
do
do
registers[30] = (#registers[30])
end

end
::p355::
do
do
registers[30] = registers[30] + 1
end

end
::p356::
do
do
(registers[29])[registers[30]] = registers[21]
end

end
::p357::
do
do
(registers)[28] = registers[21]
end

end
goto p213
::p359::
tick(359)
do
do
registers[27] = (0)
end

end
goto p13
::p361::
do
do
registers[20] = (registers[8] - registers[9])
end

end
::p362::
branch_taken=false
do
do
if not (0 < registers[20]) then
    branch_taken=true
end
end

end
if branch_taken then goto p680 end
goto p120
::p364::
tick(364)
do
do
registers[26] = (registers[26] - registers[27])
end

end
::p365::
do
do
(registers)[27] = upvalues[1][161]
end

end
::p366::
do
do
(registers)[28] = registers[26]
end

end
goto p5
::p368::
do
do
registers[30] = (registers[30] - registers[31])
end

end
::p369::
do
do
(registers[29])[registers[21]] = registers[30]
end

end
::p370::
do
do
registers[29] = (registers[14]["stored_yaw_sp"])
end

end
goto p523
::p373::
do
do
registers[14]["positive_votes"] = (registers[26])
end

end
::p374::
do
do
(registers)[26] = upvalues[1][151]
end

end
::p375::
do
do
registers[27] = (registers[14]["negative_votes"])
end

end
::p376::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p450 end
goto p124
::p386::
do
do
(registers)[3] = upvalues[6]["ragebot"]
end

end
::p387::
do
do
registers[3] = (registers[3]["enemy_resolver_generate"])
end

end
::p388::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p513
::p390::
branch_taken=false
do
do
if registers[25] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p613 end
goto p148
::p392::
do
do
registers[18] = (0)
end

end
goto p173
::p394::
tick(394)
do
do
registers[27] = (1)
end

end
goto p322
::p396::
do
do
registers[26] = (0)
end

end
goto p632
::p398::
tick(398)
do
do
(registers)[32] = registers[25]
end

end
::p399::
branch_taken=false
do
do
if not registers[32] then
    branch_taken=true
end
end

end
if branch_taken then goto p659 end
goto p277
::p401::
tick(401)
do
do
a = 31
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p402::
branch_taken=false
do
do
if registers[31] then
    branch_taken=true
end
end

end
if branch_taken then goto p470 end
goto p611
::p405::
tick(405)
do
do
(registers)[11] = nil
end

end
goto p89
::p407::
tick(407)
do
do
(registers)[27] = registers[22] > 1
end

end
::p408::
branch_taken=false
do
do
if not registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p348 end
goto p521
::p410::
tick(410)
do
do
registers[27] = (0)
end

end
goto p364
::p413::
tick(413)
branch_taken=false
do
do
if not (0 < registers[21]) then
    branch_taken=true
end
end

end
if branch_taken then goto p262 end
goto p455
::p415::
tick(415)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p405
::p417::
tick(417)
do
do
(registers)[1] = upvalues[1][32]
end

end
::p418::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p419::
do
do
registers[2] = (upvalues[2])
end

end
::p420::
do
do
(registers)[3] = registers[1]
end

end
::p421::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p594
::p423::
tick(423)
do
do
(registers)[25] = upvalues[1][23]
end

end
::p424::
do
do
top = 25;
(registers)[top] = registers[top]()
end

end
::p425::
do
do
(registers)[26] = upvalues[1][154]
end

end
::p426::
do
do
(registers)[27] = upvalues[1][28]
end

end
::p427::
do
do
top = 27;
(registers)[top] = registers[top]()
end

end
goto p242
::p429::
do
do
registers[23] = (0.34)
end

end
::p432::
branch_taken=false
do
do
if registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p339 end
goto p477
::p434::
tick(434)
do
do
a = 30
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p435::
do
do
registers[31] = (registers[14]["last_angle"])
end

end
::p436::
branch_taken=false
do
do
if registers[31] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p574 end
goto p50
::p445::
tick(445)
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
::p448::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p449::
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
::p450::
do
do
(registers)[27] = (registers[27] - 1)
end

end
::p451::
do
do
registers[28] = (0)
end

end
::p452::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p453::
do
do
registers[14]["negative_votes"] = (registers[26])
end

end
goto p126
::p455::
do
do
(registers)[26] = upvalues[1][162]
end

end
::p456::
do
do
registers[27] = (registers[14]["positive_votes"])
end

end
::p457::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p359
::p466::
do
do
(registers)[27] = (registers[27] - 1)
end

end
::p467::
do
do
registers[28] = (0)
end

end
::p468::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p48
::p470::
tick(470)
do
do
registers[32] = (registers[22] >= 4)
end

end
::p471::
branch_taken=false
do
do
if registers[32] then
    branch_taken=true
end
end

end
if branch_taken then goto p266 end
goto p398
::p473::
tick(473)
do
do
registers[3] = (upvalues[5])
end

end
::p474::
do
do
(registers)[4] = registers[1]
end

end
::p475::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p445
::p477::
do
do
registers[23] = (0.52)
end

end
goto p339
::p479::
tick(479)
do
do
(registers)[25] = upvalues[1][151]
end

end
::p480::
do
do
registers[26] = (registers[14]["jitter_ticks"])
end

end
::p481::
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p635
::p483::
do
do
registers[31] = (0)
end

end
goto p182
::p494::
tick(494)
do
do
(registers)[4] = environment["ipairs"]
end

end
::p495::
do
do
registers[5] = (upvalues[7])
end

end
::p496::
do
do
a = 5
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
::p497::
do
do
a = 4
z = (0)
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
::p498::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (4)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p10 end
goto p413
::p500::
do
do
(registers)[25] = registers[25] > 1
end

end
goto p209
::p502::
tick(502)
do
do
(registers)[26] = upvalues[1][151]
end

end
::p503::
do
do
registers[27] = (registers[14]["positive_votes"])
end

end
::p504::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p306
::p506::
do
do
(registers)[32] = upvalues[17][registers[29]]
end

end
::p507::
do
do
(registers)[31] = registers[31] * registers[32]
end

end
::p508::
do
do
registers[32] = (-58)
end

end
::p509::
do
do
registers[33] = (58)
end

end
goto p434
::p513::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p514::
do
do
registers[3] = (registers[3] == "Adaptive")
end

end
goto p494
::p516::
do
do
registers[29] = (registers[14]["stored_yaw_sp"])
end

end
::p517::
do
do
registers[30] = (registers[14]["stored_yaw_sp"])
end

end
::p518::
do
do
(registers)[30] = registers[30][registers[28]]
end

end
::p519::
branch_taken=false
do
do
if registers[30] then
    branch_taken=true
end
end

end
if branch_taken then goto p642 end
goto p8
::p521::
do
do
registers[27] = (3)
end

end
goto p348
::p523::
do
do
registers[29][registers[21]] = 1
end

end
::p524::
do
do
registers[29] = (registers[14]["stored_yaw_angles"])
end

end
::p525::
do
do
registers[30] = (registers[14]["stored_yaw_angles"])
end

end
goto p354
::p534::
tick(534)
do
do
a = (11)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_state"]
end

end
::p535::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p415
::p543::
do
do
(registers)[17] = registers[6]
end

end
::p544::
do
do
registers[18] = ("m_flPoseParameter")
end

end
::p545::
do
do
registers[19] = (11)
end

end
goto p668
::p563::
do
do
(registers)[7] = upvalues[3]["sim_store"]
end

end
::p564::
do
do
(registers)[7] = registers[7][registers[6]]
end

end
::p565::
branch_taken=false
do
do
if registers[7] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p308 end
goto p10
::p567::
branch_taken=false
do
do
if not (6 < registers[26]) then
    branch_taken=true
end
end

end
if branch_taken then goto p502 end
goto p413
::p569::
tick(569)
do
do
registers[13]["active"] = (registers[31])
end

end
::p570::
do
do
(registers)[31] = upvalues[1][47]
end

end
::p571::
do
do
(registers)[32] = registers[6]
end

end
::p572::
do
do
registers[33] = ("m_iHealth")
end

end
goto p401
::p574::
do
do
registers[13]["angle"] = (registers[30])
end

end
::p575::
do
do
registers[13]["jitter"] = (registers[25])
end

end
::p576::
do
do
(registers)[31] = registers[25]
end

end
::p577::
branch_taken=false
do
do
if not registers[31] then
    branch_taken=true
end
end

end
if branch_taken then goto p645 end
goto p314
::p579::
do
do
registers[26] = (0)
end

end
goto p407
::p581::
do
do
registers[3] = (upvalues[4])
end

end
::p582::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p583::
branch_taken=false
do
do
if registers[3] ~= "Auto" then
    branch_taken=true
end
end

end
if branch_taken then goto p103 end
goto p473
::p585::
do
do
registers[1] = (upvalues[0])
end

end
::p586::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p587::
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p417 end
goto p625
::p594::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p605
::p596::
do
do
registers[22] = (registers[18]["head"])
end

end
::p597::
do
do
(registers)[23] = upvalues[1][28]
end

end
::p598::
do
do
top = 23;
(registers)[top] = registers[top]()
end

end
::p599::
do
do
(registers)[23] = registers[21] * registers[23]
end

end
goto p294
::p601::
do
do
registers[12] = (upvalues[10])
end

end
::p602::
do
do
(registers)[13] = registers[6]
end

end
::p603::
do
do
registers[14] = (0)
end

end
goto p185
::p605::
do
do
(registers)[3] = upvalues[1][50]
end

end
::p606::
do
do
(registers)[4] = registers[1]
end

end
::p607::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p258
::p611::
do
do
registers[31] = (100)
end

end
goto p470
::p613::
do
do
registers[14]["last_side"] = (registers[27])
end

end
::p614::
do
do
registers[28] = (upvalues[16])
end

end
::p615::
do
do
registers[29] = (registers[14]["stored_yaw_angles"])
end

end
::p616::
do
do
(registers)[30] = registers[21]
end

end
::p617::
do
do
a = 28
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p618::
branch_taken=false
do
do
if registers[28] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p334 end
goto p188
::p620::
do
do
(registers)[27] = registers[27] * registers[23]
end

end
::p621::
do
do
a = 25
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p622::
branch_taken=false
do
do
if not (registers[25] < registers[24]) then
    branch_taken=true
end
end

end
if branch_taken then goto p479 end
goto p423
::p625::
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
::p632::
do
do
registers[27] = (registers[14]["negative_votes"])
end

end
::p633::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p364 end
goto p410
::p635::
do
do
registers[26] = (0)
end

end
goto p81
::p637::
do
do
registers[11] = (registers[10] ~= registers[0])
end

end
::p638::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p415 end
goto p534
::p640::
do
do
(registers)[32] = registers[31] <= 35
end

end
goto p85
::p642::
do
do
registers[30] = registers[30] + 1
end

end
::p643::
do
do
(registers[29])[registers[28]] = registers[30]
end

end
goto p213
::p645::
do
do
registers[13]["high_confidence"] = (registers[31])
end

end
::p646::
do
do
registers[31] = (registers[13]["high_confidence"])
end

end
::p647::
branch_taken=false
do
do
if registers[31] then
    branch_taken=true
end
end

end
if branch_taken then goto p569 end
goto p142
::p649::
do
do
(registers)[27] = registers[25]
end

end
::p650::
branch_taken=false
do
do
if not registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p346 end
goto p286
::p652::
do
do
(registers)[27] = registers[26] > 0
end

end
::p653::
branch_taken=false
do
do
if not registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p322 end
goto p394
::p655::
do
do
registers[12] = (upvalues[9])
end

end
::p656::
do
do
(registers)[13] = registers[6]
end

end
::p657::
do
do
a = (12)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p10
::p659::
branch_taken=false
do
do
if not registers[32] then
    branch_taken=true
end
end

end
if branch_taken then goto p266 end
goto p122
::p661::
do
do
registers[27] = (2)
end

end
goto p21
::p664::
do
do
(registers)[22] = upvalues[3]["miss_counter"]
end

end
::p665::
do
do
(registers)[22] = registers[22][registers[6]]
end

end
::p666::
branch_taken=false
do
do
if registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p291 end
goto p270
::p668::
do
do
a = 16
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p669::
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p350
::p672::
do
do
registers[27] = registers[27] + 1
end

end
::p673::
do
do
registers[28] = (8)
end

end
::p674::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p675::
do
do
registers[14]["negative_votes"] = (registers[26])
end

end
::p676::
do
do
(registers)[26] = upvalues[1][151]
end

end
::p677::
do
do
registers[27] = (registers[14]["positive_votes"])
end

end
::p678::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p301 end
goto p296
::p680::
do
do
registers[20] = (upvalues[13])
end

end
::p681::
do
do
(registers)[21] = registers[2]
end

end
::p682::
do
do
(registers)[22] = registers[19]
end

end
::p683::
do
do
a = 20
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p684::
do
do
registers[21] = (upvalues[14])
end

end
::p685::
do
do
registers[22] = (registers[20]["y"])
end

end
goto p39
end
end
