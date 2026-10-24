
-- Function f408; 346 recovered instruction blocks.
F.f408=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f408",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f408 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p286
::p2::
tick(2)
do
do
registers[14] = (registers[1]["pitch"])
end

end
::p3::
do
do
registers[14]["type"] = "Custom"
end

end
::p4::
do
do
registers[14] = (registers[1]["pitch"])
end

end
::p5::
do
do
(registers)[15] = upvalues[9]["clamp"]
end

end
::p6::
do
do
(registers)[16] = registers[13]
end

end
::p7::
do
do
registers[17] = (-89)
end

end
goto p139
::p9::
tick(9)
do
do
(registers)[6] = upvalues[2]["is_double_tap"]
end

end
::p10::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p11::
do
do
(registers)[7] = upvalues[2]["is_on_shot_antiaim"]
end

end
::p12::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p13::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p474 end
goto p181
::p15::
tick(15)
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p17::
tick(17)
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p170 end
goto p255
::p19::
tick(19)
do
do
registers[6] = (false)
end

end
::p20::
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
return registers[6]
end

end
::p21::
tick(21)
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p22::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p23::
do
do
registers[17] = (registers[4]["def_pitch_refraction_down"])
end

end
::p24::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p25::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p573
::p28::
tick(28)
do
do
registers[22] = (registers[4]["def_yaw_delayed_randomize"])
end

end
::p29::
do
do
a = (22)
z = registers[22]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p30::
do
do
a = 22
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
::p31::
do
do
a = 17
z = (0)
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
::p32::
branch_taken=false
do
do
if registers[16] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p431 end
goto p347
::p37::
tick(37)
do
do
registers[12] = (registers[4]["def_pitch"])
end

end
::p38::
do
do
a = (12)
z = registers[12]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p39::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p472
::p42::
tick(42)
do
do
registers[15] = (registers[4]["def_yaw_left_value"])
end

end
::p43::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p44::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p421
::p46::
tick(46)
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p597
::p48::
tick(48)
do
do
registers[18] = (registers[4]["def_pitch_fluctuate_mode"])
end

end
::p49::
do
do
a = (18)
z = registers[18]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p50::
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
::p51::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p52::
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p54::
tick(54)
do
do
a = (19)
z = registers[19]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p55::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p56::
do
do
registers[20] = (registers[4]["def_yaw_delayed_right"])
end

end
::p57::
do
do
a = (20)
z = registers[20]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p312
::p59::
tick(59)
do
do
registers[11] = (registers[9]["left"])
end

end
::p60::
do
do
(registers)[11] = registers[11] < registers[10]
end

end
goto p205
::p62::
tick(62)
do
do
a = (18)
z = registers[18]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p63::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p64::
do
do
registers[19] = (registers[4]["def_yaw_refraction_spin"])
end

end
::p65::
do
do
a = (19)
z = registers[19]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p340
::p67::
tick(67)
do
do
registers[14] = (upvalues[4])
end

end
::p68::
do
do
(registers)[15] = registers[12]
end

end
::p69::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p46
::p73::
tick(73)
do
do
registers[14] = (upvalues[6])
end

end
::p74::
do
do
registers[15] = (registers[4]["def_pitch_sway_left_value"])
end

end
::p75::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p76::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p77::
do
do
registers[16] = (registers[4]["def_pitch_sway_right_value"])
end

end
::p78::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p651
::p81::
tick(81)
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p82::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p411 end
goto p179
::p84::
tick(84)
do
do
registers[20] = (registers[1]["body_yaw"])
end

end
::p85::
do
do
registers[20]["value"] = (registers[19])
end

end
::p86::
do
do
registers[20] = (registers[1]["yaw"])
end

end
goto p409
::p88::
tick(88)
do
do
registers[14] = (upvalues[5])
end

end
::p89::
do
do
registers[15] = (registers[4]["def_pitch_spin_left_value"])
end

end
::p90::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p91::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p92::
do
do
registers[16] = (registers[4]["def_pitch_spin_right_value"])
end

end
::p93::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p240
::p115::
tick(115)
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p117::
tick(117)
branch_taken=false
do
do
if registers[12] ~= "Refraction" then
    branch_taken=true
end
end

end
if branch_taken then goto p353 end
goto p251
::p119::
tick(119)
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p359
::p121::
tick(121)
do
do
(registers)[5] = upvalues[1]["builder"]
end

end
::p122::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p123::
do
do
registers[5] = (registers[5]["force_defensive"])
end

end
goto p268
::p126::
tick(126)
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p127::
do
do
registers[19] = (registers[4]["def_yaw_distortion_minus"])
end

end
::p128::
do
do
a = (19)
z = registers[19]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p129::
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
::p130::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p131::
do
do
(registers)[14] = registers[15]
end

end
goto p229
::p133::
branch_taken=false
do
do
if registers[12] ~= "Delay" then
    branch_taken=true
end
end

end
if branch_taken then goto p215 end
goto p391
::p135::
tick(135)
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p136::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p137::
do
do
registers[18] = (registers[4]["def_yaw_refraction_right"])
end

end
goto p62
::p139::
do
do
registers[18] = (89)
end

end
::p140::
do
do
a = 15
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p141::
do
do
registers[14]["value"] = (registers[15])
end

end
goto p331
::p158::
tick(158)
do
do
registers[15] = (upvalues[5])
end

end
::p159::
do
do
registers[16] = (registers[4]["def_yaw_spin_left_value"])
end

end
::p160::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p522
::p168::
tick(168)
do
do
(registers)[16] = nil
end

end
goto p435
::p170::
tick(170)
do
do
registers[16] = (registers[15] ~= registers[0])
end

end
::p171::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p306 end
goto p505
::p173::
tick(173)
do
do
registers[15] = (registers[4]["def_yaw_right_value"])
end

end
::p174::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p175::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p188
::p179::
do
do
registers[9] = (false)
end

end
::p180::
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
return registers[9]
end

end
::p181::
do
do
(registers)[7] = not registers[6]
end

end
goto p474
::p183::
tick(183)
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p433 end
goto p227
::p188::
tick(188)
do
do
(registers)[14] = registers[15]
end

end
goto p229
::p196::
tick(196)
do
do
(registers)[5] = nil
end

end
goto p265
::p198::
tick(198)
do
do
(registers)[15] = upvalues[1]["builder"]
end

end
::p199::
do
do
(registers)[15] = registers[15][registers[3]]
end

end
goto p17
::p201::
tick(201)
do
do
a = (15)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_left_side"]
end

end
::p202::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p203::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p421 end
goto p42
::p205::
tick(205)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p375
::p215::
branch_taken=false
do
do
if registers[12] ~= "Spin" then
    branch_taken=true
end
end

end
if branch_taken then goto p460 end
goto p88
::p217::
tick(217)
do
do
registers[5] = (false)
end

end
::p218::
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
return registers[5]
end

end
::p220::
tick(220)
do
do
(registers)[8] = registers[7]
end

end
goto p441
::p222::
tick(222)
do
do
registers[20]["type"] = "Static"
end

end
::p223::
do
do
registers[20] = (registers[1]["body_yaw"])
end

end
::p224::
do
do
registers[20]["freestanding"] = false
end

end
::p225::
branch_taken=false
do
do
if registers[19] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p302 end
goto p397
::p227::
do
do
(registers)[8] = registers[6]
end

end
goto p433
::p229::
tick(229)
do
do
registers[15] = (registers[1]["yaw"])
end

end
::p230::
do
do
(registers)[16] = upvalues[9]["normalize"]
end

end
::p231::
do
do
registers[17] = (registers[1]["yaw"])
end

end
::p232::
do
do
registers[17] = (registers[17]["add"])
end

end
goto p499
::p240::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p241::
do
do
registers[17] = (registers[4]["def_pitch_spin_speed"])
end

end
::p242::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p243::
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
::p244::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p245::
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p251::
do
do
registers[14] = (upvalues[8])
end

end
::p252::
do
do
registers[15] = (registers[1]["defensive_refraction_pitch_state"])
end

end
::p253::
do
do
registers[16] = (registers[4]["def_pitch_refraction_up"])
end

end
goto p21
::p255::
do
do
(registers)[15] = nil
end

end
goto p170
::p265::
tick(265)
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p19
::p268::
tick(268)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p265 end
goto p196
::p270::
tick(270)
do
do
registers[13] = (0)
end

end
::p271::
branch_taken=false
do
do
if registers[12] ~= "Custom" then
    branch_taken=true
end
end

end
if branch_taken then goto p67 end
goto p514
::p274::
tick(274)
do
do
registers[2]["force_defensive"] = true
end

end
::p275::
do
do
registers[9] = (registers[4]["toggle_builder"])
end

end
::p276::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p81
::p278::
tick(278)
do
do
registers[14] = (registers[4]["def_pitch_right_value"])
end

end
::p279::
do
do
a = (14)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p280::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p115
::p282::
tick(282)
do
do
(registers)[4] = upvalues[1]["defensive"]
end

end
::p283::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
::p284::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p647 end
goto p217
::p286::
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
::p287::
do
do
registers[3] = (registers[1]["safehead_active"])
end

end
::p288::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p355 end
goto p555
::p302::
tick(302)
do
do
registers[20] = (registers[1]["body_yaw"])
end

end
::p303::
do
do
registers[20] = (registers[20]["inverter"])
end

end
::p304::
branch_taken=false
do
do
if registers[20] then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p658
::p306::
tick(306)
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p435 end
goto p168
::p308::
tick(308)
do
do
(registers)[14] = upvalues[9]["random_int"]
end

end
::p309::
do
do
registers[15] = (-65)
end

end
::p310::
do
do
registers[16] = (-45)
end

end
goto p317
::p312::
do
do
a = (20);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p313::
do
do
registers[21] = (registers[4]["def_yaw_delayed_delay"])
end

end
::p314::
do
do
a = (21)
z = registers[21]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p315::
do
do
a = (21);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p28
::p317::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p318::
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p320::
tick(320)
do
do
registers[14] = (registers[4]["def_pitch_left_value"])
end

end
::p321::
do
do
a = (14)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p322::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p666
::p331::
tick(331)
do
do
registers[13] = (registers[4]["def_yaw"])
end

end
::p332::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p333::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p334::
branch_taken=false
do
do
if registers[13] ~= "Disabled" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p457 end
goto p496
::p336::
tick(336)
do
do
registers[19] = (registers[16]["value"])
end

end
::p337::
do
do
a = (19)
z = registers[19]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p338::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p622
::p340::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p341::
do
do
registers[20] = (registers[4]["def_yaw_refraction_timer"])
end

end
::p342::
do
do
a = (20)
z = registers[20]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p343::
do
do
a = 20
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
::p344::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p345::
do
do
(registers)[14] = registers[15]
end

end
goto p229
::p347::
do
do
registers[19] = (registers[16]["type"])
end

end
::p348::
do
do
a = (19)
z = registers[19]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p349::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p439
::p353::
branch_taken=false
do
do
if registers[12] ~= "Up Switch" then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p308
::p355::
do
do
registers[3] = (upvalues[0])
end

end
::p356::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p357::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p282 end
goto p468
::p359::
do
do
registers[14] = (registers[4]["def_pitch_right_delay_value"])
end

end
::p360::
do
do
a = (14)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p361::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p15
::p371::
tick(371)
do
do
registers[11] = (registers[9]["left"])
end

end
::p372::
do
do
(registers)[11] = registers[11] > 0
end

end
goto p407
::p375::
do
do
registers[12] = (false)
end

end
::p376::
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
return registers[12]
end

end
::p377::
tick(377)
branch_taken=false
do
do
if registers[13] ~= "Refraction" then
    branch_taken=true
end
end

end
if branch_taken then goto p565 end
goto p447
::p379::
tick(379)
branch_taken=false
do
do
if registers[13] ~= "Sway" then
    branch_taken=true
end
end

end
if branch_taken then goto p493 end
goto p423
::p381::
tick(381)
do
do
registers[15] = (upvalues[4])
end

end
::p382::
do
do
(registers)[16] = registers[13]
end

end
::p383::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p384::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p551 end
goto p201
::p386::
tick(386)
do
do
a = (18)
z = registers[18]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p387::
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
::p388::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p389::
do
do
(registers)[14] = registers[15]
end

end
goto p229
::p391::
do
do
registers[14] = (registers[1]["defensive_pitch_delay_side"])
end

end
::p392::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
::p393::
do
do
registers[14] = (registers[4]["def_pitch_left_delay_value"])
end

end
::p394::
do
do
a = (14)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p395::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p119
::p397::
do
do
registers[19] = (-1)
end

end
goto p302
::p400::
tick(400)
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p401::
do
do
registers[18] = (registers[4]["def_yaw_sway_speed"])
end

end
::p402::
do
do
a = (18)
z = registers[18]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p403::
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
::p404::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p405::
do
do
(registers)[14] = registers[15]
end

end
goto p229
::p407::
tick(407)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p205 end
goto p59
::p409::
do
do
registers[20]["body"] = 0
end

end
goto p431
::p411::
do
do
a = upvalues[3];
(registers)[9] = (a[2][a[1]]["exploits"])
end

end
::p412::
do
do
registers[9] = (registers[9]["defensive"])
end

end
::p413::
do
do
registers[10] = (registers[4]["duration"])
end

end
::p414::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p415::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p570
::p417::
tick(417)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p268 end
goto p121
::p421::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p188 end
goto p173
::p423::
do
do
registers[15] = (upvalues[6])
end

end
::p424::
do
do
registers[16] = (registers[4]["def_yaw_sway_left_value"])
end

end
::p425::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p426::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p427::
do
do
registers[17] = (registers[4]["def_yaw_sway_right_value"])
end

end
::p428::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p400
::p431::
tick(431)
do
do
registers[14] = -registers[17]
end

end
goto p229
::p433::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p441 end
goto p488
::p435::
do
do
registers[17] = (upvalues[13])
end

end
::p436::
do
do
registers[18] = (registers[1]["defensive_yaw_delayed_state"])
end

end
::p437::
do
do
registers[19] = (registers[4]["def_yaw_delayed_left"])
end

end
goto p54
::p439::
branch_taken=false
do
do
if registers[19] ~= "Jitter" then
    branch_taken=true
end
end

end
if branch_taken then goto p431 end
goto p336
::p441::
tick(441)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p274 end
goto p595
::p443::
tick(443)
do
do
(registers)[5] = upvalues[1]["builder"]
end

end
::p444::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p445::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
goto p417
::p447::
do
do
registers[15] = (upvalues[12])
end

end
::p448::
do
do
registers[16] = (registers[1]["defensive_refraction_yaw_state"])
end

end
::p449::
do
do
registers[17] = (registers[4]["def_yaw_refraction_left"])
end

end
goto p135
::p452::
tick(452)
do
do
registers[17] = (registers[4]["def_pitch_fluctuate_speed"])
end

end
::p453::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p454::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p48
::p457::
tick(457)
do
do
registers[14] = (true)
end

end
::p458::
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
return registers[14]
end

end
::p460::
branch_taken=false
do
do
if registers[12] ~= "Sway" then
    branch_taken=true
end
end

end
if branch_taken then goto p519 end
goto p73
::p462::
tick(462)
do
do
(registers)[18] = upvalues[10][30]
end

end
::p463::
do
do
top = 18;
(registers)[top] = registers[top]()
end

end
::p464::
do
do
(registers)[18] = registers[18] * registers[15]
end

end
::p465::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p512
::p468::
do
do
registers[4] = (false)
end

end
::p469::
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
return registers[4]
end

end
::p472::
branch_taken=false
do
do
if registers[12] ~= "Disabled" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p270
::p474::
do
do
a = (8)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p475::
do
do
registers[10] = ("Double tap")
end

end
::p476::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p183
::p478::
tick(478)
do
do
registers[14] = (upvalues[7])
end

end
::p479::
do
do
registers[15] = (registers[4]["def_pitch_fluctuate_value1"])
end

end
::p480::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p481::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p590
::p488::
do
do
a = (8)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p489::
do
do
registers[10] = ("On shot anti-aim")
end

end
::p490::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p491::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p441 end
goto p220
::p493::
branch_taken=false
do
do
if registers[13] ~= "Zurab" then
    branch_taken=true
end
end

end
if branch_taken then goto p553 end
goto p603
::p496::
do
do
registers[14] = (0)
end

end
::p497::
branch_taken=false
do
do
if registers[13] ~= "Custom" then
    branch_taken=true
end
end

end
if branch_taken then goto p381 end
goto p634
::p499::
do
do
(registers)[17] = registers[17] + registers[14]
end

end
::p500::
do
do
registers[18] = (-180)
end

end
::p501::
do
do
registers[19] = (180)
end

end
::p502::
do
do
a = 16
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p503::
do
do
registers[15]["add"] = (registers[16])
end

end
goto p457
::p505::
do
do
registers[16] = (registers[15]["body_yaw"])
end

end
goto p306
::p512::
do
do
(registers)[14] = registers[17] * registers[16]
end

end
goto p229
::p514::
do
do
registers[14] = (registers[4]["def_pitch_static_value"])
end

end
::p515::
do
do
a = (14)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p516::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p517::
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p519::
branch_taken=false
do
do
if registers[12] ~= "Fluctuate" then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p478
::p522::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p523::
do
do
registers[17] = (registers[4]["def_yaw_spin_right_value"])
end

end
::p524::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p525::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p526::
do
do
registers[18] = (registers[4]["def_yaw_spin_speed"])
end

end
goto p386
::p530::
tick(530)
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p531::
do
do
registers[17] = (registers[4]["def_yaw_distortion_randomize"])
end

end
::p532::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p533::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p534::
do
do
registers[18] = (registers[4]["def_yaw_distortion_plus"])
end

end
::p535::
do
do
a = (18)
z = registers[18]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p126
::p551::
branch_taken=false
do
do
if registers[13] ~= "Spin" then
    branch_taken=true
end
end

end
if branch_taken then goto p379 end
goto p158
::p553::
branch_taken=false
do
do
if registers[13] ~= "Distortion" then
    branch_taken=true
end
end

end
if branch_taken then goto p377 end
goto p668
::p555::
do
do
registers[1]["force_defensive_active"] = false
end

end
::p556::
do
do
registers[2]["force_defensive"] = false
end

end
::p557::
do
do
registers[3] = (false)
end

end
::p558::
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
return registers[3]
end

end
::p565::
branch_taken=false
do
do
if registers[13] ~= "Delayed" then
    branch_taken=true
end
end

end
if branch_taken then goto p229 end
goto p618
::p570::
do
do
(registers)[11] = registers[9]
end

end
::p571::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p407 end
goto p371
::p573::
do
do
registers[18] = (registers[4]["def_pitch_refraction_spin"])
end

end
::p574::
do
do
a = (18)
z = registers[18]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p575::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p576::
do
do
registers[19] = (registers[4]["def_pitch_refraction_timer"])
end

end
::p577::
do
do
a = (19)
z = registers[19]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p578::
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
::p579::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p580::
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p590::
do
do
registers[16] = (registers[4]["def_pitch_fluctuate_value2"])
end

end
::p591::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p592::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p452
::p595::
do
do
registers[9] = (false)
end

end
::p596::
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
return registers[9]
end

end
::p597::
do
do
a = (14)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_left_side"]
end

end
::p598::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p599::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p666 end
goto p320
::p603::
do
do
registers[15] = (registers[4]["def_yaw_zurab_speed"])
end

end
::p604::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p605::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p606::
do
do
registers[16] = (registers[4]["def_yaw_zurab_range"])
end

end
::p607::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p608::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p609::
do
do
(registers)[17] = upvalues[10][163]
end

end
goto p462
::p618::
do
do
(registers)[15] = upvalues[1]["builder"]
end

end
::p619::
do
do
registers[15] = (registers[15] ~= registers[0])
end

end
::p620::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p198
::p622::
do
do
registers[20] = (registers[1]["body_yaw"])
end

end
::p623::
do
do
registers[21] = (registers[18] == true)
end

end
::p624::
do
do
registers[20]["inverter"] = (registers[21])
end

end
::p625::
do
do
registers[20] = (registers[1]["body_yaw"])
end

end
goto p222
::p634::
do
do
registers[15] = (registers[4]["def_yaw_static_value"])
end

end
::p635::
do
do
a = (15)
z = registers[15]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p636::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p637::
do
do
(registers)[14] = registers[15]
end

end
goto p229
::p647::
do
do
(registers)[5] = upvalues[1]["builder"]
end

end
::p648::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
::p649::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p417 end
goto p443
::p651::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p652::
do
do
registers[17] = (registers[4]["def_pitch_sway_speed"])
end

end
::p653::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p654::
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
::p655::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p656::
do
do
(registers)[13] = registers[14]
end

end
goto p2
::p658::
do
do
registers[19] = -registers[19]
end

end
goto p84
::p666::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p115 end
goto p278
::p668::
do
do
registers[15] = (upvalues[11])
end

end
::p669::
do
do
registers[16] = (registers[4]["def_yaw_distortion"])
end

end
::p670::
do
do
a = (16)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p530
end
end
