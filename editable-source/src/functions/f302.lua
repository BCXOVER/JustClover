
-- Function f302; 221 recovered instruction blocks.
F.f302=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f302",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f302 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p353
::p2::
tick(2)
do
do
(registers)[17] = upvalues[2][141]
end

end
::p3::
do
do
(registers)[18] = registers[1]
end

end
::p4::
do
do
registers[19] = ("Force body yaw")
end

end
::p5::
do
do
registers[20] = (true)
end

end
goto p420
::p7::
tick(7)
do
do
registers[14] = (registers[14] ~= registers[0])
end

end
::p8::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p269 end
goto p156
::p18::
tick(18)
do
do
registers[16] = (0)
end

end
::p19::
branch_taken=false
do
do
if registers[13] ~= "JITTER" then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p121
::p21::
tick(21)
do
do
registers[16] = (58)
end

end
goto p307
::p23::
tick(23)
do
do
a = 22
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p24::
branch_taken=false
do
do
if registers[21] == registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p365 end
goto p99
::p26::
tick(26)
do
do
registers[13] = ("JITTER[2]")
end

end
goto p127
::p31::
tick(31)
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p32::
do
do
(registers)[3] = upvalues[0]["wraith"]
end

end
::p33::
do
do
registers[3] = (registers[3]["prev"])
end

end
::p34::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
goto p104
::p36::
tick(36)
do
do
registers[6] = (upvalues[1])
end

end
::p37::
do
do
(registers)[7] = registers[1]
end

end
::p38::
do
do
a = (6)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p204
::p40::
do
do
registers[17] = (registers[3]["yaw"])
end

end
::p41::
do
do
registers[18] = (upvalues[3])
end

end
::p42::
do
do
registers[19] = (registers[2]["yaw"])
end

end
::p43::
do
do
registers[19] = (registers[19] - registers[6])
end

end
::p44::
do
do
registers[20] = (180)
end

end
::p45::
do
do
a = 18
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p46::
branch_taken=false
do
do
if registers[17] == registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p321 end
goto p372
::p49::
tick(49)
do
do
registers[10] = (registers[4]["yaw"])
end

end
::p50::
do
do
registers[9] = (registers[9] - registers[10])
end

end
::p51::
do
do
registers[10] = (180)
end

end
goto p227
::p63::
tick(63)
do
do
registers[27] = (registers[4]["yaw"])
end

end
::p64::
do
do
registers[28] = (registers[2]["yaw"])
end

end
::p65::
branch_taken=false
do
do
if registers[27] ~= registers[28] then
    branch_taken=true
end
end

end
if branch_taken then goto p288 end
goto p370
::p67::
tick(67)
do
do
registers[10] = (upvalues[3])
end

end
::p68::
do
do
registers[11] = (registers[3]["yaw"])
end

end
::p69::
do
do
registers[12] = (registers[4]["yaw"])
end

end
goto p263
::p84::
tick(84)
do
do
registers[16] = (upvalues[1])
end

end
::p85::
do
do
(registers)[17] = registers[1]
end

end
::p86::
do
do
a = (16)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p203
::p95::
tick(95)
do
do
(registers)[17] = upvalues[2][161]
end

end
::p96::
do
do
(registers)[18] = registers[9]
end

end
::p97::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p109
::p99::
do
do
registers[23] = (registers[4]["yaw"])
end

end
::p100::
do
do
registers[24] = (registers[2]["yaw"])
end

end
::p101::
branch_taken=false
do
do
if registers[23] ~= registers[24] then
    branch_taken=true
end
end

end
if branch_taken then goto p288 end
goto p365
::p103::
tick(103)
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
::p104::
do
do
(registers)[4] = upvalues[0]["wraith"]
end

end
::p105::
do
do
registers[4] = (registers[4]["pre_prev"])
end

end
::p106::
do
do
(registers)[4] = registers[4][registers[1]]
end

end
::p107::
do
do
(registers)[5] = upvalues[0]["wraith"]
end

end
goto p161
::p109::
branch_taken=false
do
do
if not (not (registers[17] < 15)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p165
::p112::
tick(112)
branch_taken=false
do
do
if registers[19] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p167
::p114::
tick(114)
branch_taken=false
do
do
if registers[13] ~= "JITTER[2]" then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p18
::p116::
tick(116)
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p117::
do
do
(registers)[13] = nil
end

end
::p118::
do
do
registers[14] = (registers[2]["last_shot_time"])
end

end
goto p7
::p121::
branch_taken=false
do
do
if not (0 < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p225 end
goto p239
::p125::
tick(125)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p311
::p127::
tick(127)
do
do
(registers)[16] = upvalues[0]["wraith"]
end

end
::p128::
do
do
registers[16] = (registers[16]["flags"])
end

end
::p129::
do
do
(registers[16])[registers[1]] = registers[13]
end

end
::p130::
do
do
registers[16] = (registers[2]["pitch"])
end

end
::p131::
branch_taken=false
do
do
if not (not (78 <= registers[16])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p417
::p134::
tick(134)
do
do
(registers)[16] = upvalues[2][154]
end

end
::p135::
do
do
(registers)[17] = upvalues[2][28]
end

end
::p136::
do
do
top = 17;
(registers)[top] = registers[top]()
end

end
goto p358
::p139::
tick(139)
do
do
registers[12] = (upvalues[3])
end

end
::p140::
do
do
registers[13] = (registers[5]["yaw"])
end

end
::p141::
do
do
registers[14] = (registers[2]["yaw"])
end

end
::p142::
do
do
registers[13] = (registers[13] - registers[14])
end

end
::p143::
do
do
registers[14] = (180)
end

end
goto p116
::p145::
tick(145)
do
do
registers[9] = (180)
end

end
::p146::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p147::
do
do
registers[8] = (upvalues[3])
end

end
::p148::
do
do
registers[9] = (registers[2]["yaw"])
end

end
goto p49
::p151::
tick(151)
do
do
(registers)[6] = upvalues[2][161]
end

end
::p152::
do
do
registers[7] = (upvalues[3])
end

end
::p153::
do
do
registers[8] = (registers[2]["yaw"])
end

end
::p154::
do
do
registers[9] = (registers[3]["yaw"])
end

end
goto p392
::p156::
do
do
(registers)[14] = upvalues[2][26]
end

end
::p157::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p158::
do
do
registers[15] = (registers[2]["last_shot_time"])
end

end
::p159::
do
do
registers[14] = (registers[14] - registers[15])
end

end
goto p269
::p161::
do
do
registers[5] = (registers[5]["pre_pre_prev"])
end

end
::p162::
do
do
(registers)[5] = registers[5][registers[1]]
end

end
::p163::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p346
::p165::
do
do
registers[13] = ("JITTER")
end

end
goto p127
::p167::
do
do
(registers)[17] = upvalues[0]["wraith"]
end

end
::p168::
do
do
registers[17] = (registers[17]["miss_side"])
end

end
::p169::
do
do
(registers)[16] = registers[17][registers[1]]
end

end
goto p2
::p171::
tick(171)
do
do
(registers)[15] = upvalues[2][28]
end

end
::p172::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p173::
do
do
registers[15] = (registers[14] / registers[15])
end

end
goto p134
::p175::
tick(175)
do
do
(registers)[16] = upvalues[2][161]
end

end
::p176::
do
do
(registers)[17] = registers[7]
end

end
::p177::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p178::
branch_taken=false
do
do
if 15 < registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p278
::p180::
tick(180)
do
do
(registers)[14] = nil
end

end
goto p222
::p191::
tick(191)
do
do
(registers)[21] = registers[21] + registers[6]
end

end
::p192::
do
do
registers[22] = (180)
end

end
::p193::
do
do
a = 20
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p194::
branch_taken=false
do
do
if registers[19] ~= registers[20] then
    branch_taken=true
end
end

end
if branch_taken then goto p288 end
goto p321
::p196::
tick(196)
branch_taken=false
do
do
if registers[13] ~= "JITTER" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p114
::p198::
tick(198)
do
do
(registers)[16] = upvalues[2][161]
end

end
::p199::
do
do
(registers)[17] = registers[8]
end

end
::p200::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p201::
branch_taken=false
do
do
if not (not (registers[16] < 15)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p95
::p203::
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
::p204::
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
::p222::
tick(222)
do
do
registers[15] = (registers[14] ~= registers[0])
end

end
::p223::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
goto p171
::p225::
branch_taken=false
do
do
if not (not (registers[7] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p307 end
goto p399
::p227::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p228::
do
do
registers[9] = (upvalues[3])
end

end
::p229::
do
do
registers[10] = (registers[3]["yaw"])
end

end
goto p301
::p231::
tick(231)
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p376
::p239::
do
do
registers[16] = (58)
end

end
goto p307
::p241::
tick(241)
do
do
registers[17] = (registers[2]["pitch"])
end

end
::p242::
do
do
registers[18] = (registers[3]["pitch"])
end

end
::p243::
branch_taken=false
do
do
if not (registers[17] < registers[18]) then
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p271
::p252::
tick(252)
do
do
registers[8] = (registers[2]["yaw"])
end

end
::p253::
do
do
registers[9] = (registers[3]["yaw"])
end

end
::p254::
do
do
registers[8] = (registers[8] - registers[9])
end

end
goto p145
::p256::
tick(256)
do
do
(registers)[16] = upvalues[2][161]
end

end
::p257::
do
do
registers[17] = (registers[2]["pitch"])
end

end
::p258::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p259::
branch_taken=false
do
do
if not (60 < registers[16]) then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p407
::p263::
do
do
registers[11] = (registers[11] - registers[12])
end

end
::p264::
do
do
registers[12] = (180)
end

end
::p265::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p334
::p267::
tick(267)
branch_taken=false
do
do
if registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p282 end
goto p351
::p269::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p222 end
goto p180
::p271::
do
do
registers[13] = ("ON SHOT")
end

end
goto p127
::p278::
do
do
(registers)[17] = upvalues[2][161]
end

end
::p279::
do
do
(registers)[18] = registers[10]
end

end
::p280::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p286
::p282::
tick(282)
do
do
(registers)[18] = upvalues[2][23]
end

end
::p283::
do
do
top = 18;
(registers)[top] = registers[top]()
end

end
::p284::
branch_taken=false
do
do
if not (not (registers[18] <= registers[17])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p297
::p286::
branch_taken=false
do
do
if 15 < registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p402
::p288::
do
do
registers[17] = (registers[2]["yaw"])
end

end
::p289::
branch_taken=false
do
do
if not (not (registers[17] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p306 end
goto p21
::p297::
do
do
(registers)[19] = upvalues[0]["wraith"]
end

end
::p298::
do
do
registers[19] = (registers[19]["miss_side"])
end

end
::p299::
do
do
(registers)[19] = registers[19][registers[1]]
end

end
goto p112
::p301::
do
do
registers[11] = (registers[5]["yaw"])
end

end
::p302::
do
do
registers[10] = (registers[10] - registers[11])
end

end
::p303::
do
do
registers[11] = (180)
end

end
::p304::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p67
::p306::
do
do
registers[16] = (-58)
end

end
::p307::
tick(307)
do
do
(registers)[17] = upvalues[0]["wraith"]
end

end
::p308::
do
do
registers[17] = (registers[17]["miss_until"])
end

end
::p309::
do
do
(registers)[17] = registers[17][registers[1]]
end

end
goto p267
::p311::
do
do
(registers)[16] = upvalues[2][161]
end

end
::p312::
do
do
(registers)[17] = upvalues[2][161]
end

end
::p313::
do
do
registers[18] = (registers[2]["pitch"])
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
(registers)[18] = upvalues[2][161]
end

end
::p316::
do
do
registers[19] = (registers[3]["pitch"])
end

end
::p317::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p318::
do
do
registers[17] = (registers[17] - registers[18])
end

end
::p319::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p349
::p321::
do
do
registers[21] = (registers[4]["yaw"])
end

end
::p322::
do
do
registers[22] = (upvalues[3])
end

end
::p323::
do
do
registers[23] = (registers[2]["yaw"])
end

end
::p324::
do
do
(registers)[23] = registers[23] + registers[6]
end

end
::p325::
do
do
registers[24] = (180)
end

end
goto p23
::p327::
tick(327)
do
do
(registers)[19] = upvalues[2][161]
end

end
::p328::
do
do
(registers)[20] = registers[12]
end

end
::p329::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p330::
branch_taken=false
do
do
if not (15 < registers[19]) then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p26
::p334::
do
do
registers[11] = (upvalues[3])
end

end
::p335::
do
do
registers[12] = (registers[4]["yaw"])
end

end
::p336::
do
do
registers[13] = (registers[5]["yaw"])
end

end
::p337::
do
do
registers[12] = (registers[12] - registers[13])
end

end
::p338::
do
do
registers[13] = (180)
end

end
::p339::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p139
::p341::
tick(341)
do
do
registers[17] = (registers[17]["last_value"])
end

end
::p342::
do
do
(registers[17])[registers[1]] = registers[16]
end

end
::p343::
do
do
(registers)[17] = upvalues[0]["applied"]
end

end
::p344::
do
do
registers[17][registers[1]] = true
end

end
goto p103
::p346::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p231
::p349::
branch_taken=false
do
do
if not (30 < registers[16]) then
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p241
::p351::
do
do
registers[17] = (0)
end

end
goto p282
::p353::
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
::p354::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p355::
do
do
registers[2] = (registers[2]["cur"])
end

end
goto p31
::p358::
do
do
(registers)[17] = 0.2 / registers[17]
end

end
::p359::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p360::
do
do
registers[15] = (registers[15] <= registers[16])
end

end
goto p125
::p365::
do
do
registers[25] = (registers[4]["yaw"])
end

end
::p366::
do
do
registers[26] = (upvalues[3])
end

end
::p367::
do
do
registers[27] = (registers[2]["yaw"])
end

end
::p368::
do
do
(registers)[27] = registers[27] + registers[6]
end

end
goto p378
::p370::
tick(370)
do
do
registers[16] = (0)
end

end
goto p307
::p372::
do
do
registers[19] = (registers[3]["yaw"])
end

end
::p373::
do
do
registers[20] = (upvalues[3])
end

end
::p374::
do
do
registers[21] = (registers[2]["yaw"])
end

end
goto p191
::p376::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p36
::p378::
do
do
registers[28] = (180)
end

end
::p379::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p380::
branch_taken=false
do
do
if registers[25] == registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p370 end
goto p63
::p392::
do
do
registers[8] = (registers[8] - registers[9])
end

end
::p393::
do
do
registers[9] = (180)
end

end
::p394::
do
do
a = 7
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
::p395::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p396::
do
do
registers[7] = (upvalues[3])
end

end
goto p252
::p399::
do
do
registers[16] = (-58)
end

end
goto p307
::p402::
do
do
(registers)[18] = upvalues[2][161]
end

end
::p403::
do
do
(registers)[19] = registers[11]
end

end
::p404::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p405::
branch_taken=false
do
do
if 15 < registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p327
::p407::
branch_taken=false
do
do
if not (30 < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p198
::p417::
do
do
registers[17] = (registers[3]["pitch"])
end

end
::p418::
branch_taken=false
do
do
if not (78 < registers[17]) then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p196
::p420::
do
do
a = (17)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p421::
do
do
(registers)[17] = upvalues[2][141]
end

end
::p422::
do
do
(registers)[18] = registers[1]
end

end
::p423::
do
do
registers[19] = ("Force body yaw value")
end

end
::p424::
do
do
(registers)[20] = registers[16]
end

end
::p425::
do
do
a = (17)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p426::
do
do
(registers)[17] = upvalues[0]["wraith"]
end

end
goto p341
end
end
