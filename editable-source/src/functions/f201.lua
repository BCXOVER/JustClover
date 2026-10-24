
-- Function f201; 501 recovered instruction blocks.
F.f201=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f201",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f201 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p560
::p4::
tick(4)
do
do
(registers)[1] = upvalues[8]["ragebot"]
end

end
::p5::
do
do
registers[1] = (registers[1]["log_spread"])
end

end
::p6::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p258 end
goto p249
::p10::
tick(10)
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p762 end
goto p595
::p12::
tick(12)
do
do
registers[10] = (registers[9] == "Onetap")
end

end
goto p241
::p14::
tick(14)
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p850
::p16::
tick(16)
do
do
(registers)[11] = registers[2]
end

end
::p17::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p18::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p360
::p20::
tick(20)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p814 end
goto p40
::p23::
tick(23)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p24::
branch_taken=false
do
do
if registers[2] ~= "Configs" then
    branch_taken=true
end
end

end
if branch_taken then goto p299 end
goto p679
::p26::
tick(26)
do
do
(registers)[11] = registers[7]
end

end
goto p493
::p28::
tick(28)
do
do
(registers)[11] = registers[2]
end

end
::p29::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p30::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p614
::p40::
do
do
registers[9] = ("CS2")
end

end
goto p814
::p42::
tick(42)
do
do
(registers)[1] = upvalues[10]["switch_type"]
end

end
::p43::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p44::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p45::
do
do
registers[1] = (registers[1] == "Gamesense")
end

end
goto p636
::p47::
tick(47)
do
do
registers[9] = (registers[5]["native_indicators"])
end

end
::p48::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p870 end
goto p791
::p50::
tick(50)
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p923 end
goto p662
::p52::
tick(52)
do
do
registers[9] = (registers[5]["manual_arrows_offset"])
end

end
::p53::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p54::
do
do
(registers)[11] = registers[4]
end

end
::p55::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p185 end
goto p821
::p65::
tick(65)
do
do
registers[9] = (registers[5]["aimbot_logs_gradient"])
end

end
::p66::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p67::
do
do
(registers)[11] = registers[3]
end

end
goto p714
::p69::
tick(69)
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p70::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p71::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p20
::p73::
tick(73)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p926 end
goto p151
::p78::
tick(78)
do
do
registers[9] = (registers[5]["thirdperson"])
end

end
::p79::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p499 end
goto p629
::p81::
tick(81)
do
do
registers[9] = (registers[5]["feature_indicators_offset"])
end

end
::p82::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p428 end
goto p597
::p84::
tick(84)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p440 end
goto p535
::p87::
tick(87)
do
do
registers[10] = (registers[9] == 5)
end

end
goto p764
::p90::
tick(90)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p380 end
goto p875
::p95::
tick(95)
do
do
(registers)[12] = registers[6]
end

end
goto p735
::p97::
tick(97)
do
do
(registers)[11] = registers[6]
end

end
goto p404
::p99::
tick(99)
do
do
registers[9] = (registers[5]["native_indicators_gradient"])
end

end
::p100::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p101::
do
do
(registers)[11] = registers[3]
end

end
goto p724
::p103::
tick(103)
do
do
registers[9] = (registers[5]["aimbot_logs"])
end

end
::p104::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p105::
do
do
(registers)[11] = registers[3]
end

end
::p106::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p411
::p108::
tick(108)
do
do
(registers)[11] = registers[2]
end

end
::p109::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p110::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p388
::p112::
tick(112)
do
do
(registers)[11] = registers[6]
end

end
goto p397
::p114::
tick(114)
do
do
registers[10] = (registers[9] == "First")
end

end
goto p775
::p116::
tick(116)
do
do
(registers)[11] = registers[6]
end

end
goto p163
::p118::
tick(118)
do
do
a = 10;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p482
::p120::
tick(120)
do
do
registers[9] = (registers[5]["viewmodel_offset_z"])
end

end
::p121::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p122::
do
do
(registers)[11] = registers[3]
end

end
::p123::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p809 end
goto p886
::p125::
tick(125)
do
do
registers[9] = (registers[5]["aimbot_logs_hit_label"])
end

end
::p126::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p127::
do
do
(registers)[11] = registers[3]
end

end
goto p784
::p129::
tick(129)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p823
::p131::
tick(131)
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p132::
do
do
(registers)[1] = upvalues[10]["switch"]
end

end
::p133::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p244
::p135::
tick(135)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p375 end
goto p719
::p138::
tick(138)
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p139::
do
do
(registers)[7] = registers[2]
end

end
::p140::
do
do
registers[8] = (registers[5]["feature_indicators"])
end

end
::p141::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p142::
do
do
(registers)[8] = registers[2]
end

end
::p143::
do
do
registers[9] = (registers[5]["manual_arrows"])
end

end
::p144::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p145::
do
do
registers[9] = (registers[5]["watermark"])
end

end
goto p899
::p147::
tick(147)
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p148::
do
do
(registers)[1] = upvalues[8]["ragebot"]
end

end
::p149::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p258 end
goto p4
::p151::
do
do
(registers)[11] = registers[2]
end

end
::p152::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p153::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p926
::p155::
tick(155)
do
do
registers[9] = (registers[5]["watermark"])
end

end
::p156::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p157::
do
do
(registers)[11] = registers[3]
end

end
goto p634
::p159::
tick(159)
do
do
(registers)[12] = registers[6]
end

end
goto p407
::p161::
tick(161)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p766 end
goto p347
::p163::
tick(163)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p759
::p165::
tick(165)
do
do
registers[12] = (registers[9] == "CS2")
end

end
goto p710
::p167::
tick(167)
do
do
registers[11] = (registers[9] == "TeamSkeet")
end

end
goto p344
::p175::
tick(175)
do
do
(registers)[15] = registers[12]
end

end
goto p14
::p177::
tick(177)
do
do
a = (D.f202)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[2] = x
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
::p178::
do
do
(registers)[3] = upvalues[10]["switch"]
end

end
::p179::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p180::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p181::
do
do
registers[3] = (registers[3] == "Other")
end

end
::p182::
do
do
(registers)[4] = upvalues[10]["switch"]
end

end
::p183::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p423
::p185::
tick(185)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p469
::p187::
tick(187)
do
do
(registers)[11] = registers[2]
end

end
::p188::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p189::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p933
::p191::
tick(191)
do
do
registers[9] = (registers[5]["feature_indicators"])
end

end
::p192::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p689
::p194::
tick(194)
do
do
registers[13] = (registers[5]["manual_arrows_ts_cl2"])
end

end
::p195::
branch_taken=false
do
do
if registers[13] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p721 end
goto p928
::p198::
tick(198)
do
do
registers[9] = (registers[5]["viewmodel_options"])
end

end
::p199::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p607 end
goto p207
::p201::
tick(201)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p786 end
goto p224
::p203::
tick(203)
do
do
registers[9] = (registers[5]["aimbot_logs_miss_color"])
end

end
::p204::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p341 end
goto p226
::p207::
do
do
registers[9] = (registers[5]["viewmodel_options"])
end

end
::p208::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p209::
do
do
(registers)[11] = registers[3]
end

end
::p210::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p905 end
goto p807
::p212::
tick(212)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p201 end
goto p616
::p214::
tick(214)
do
do
(registers)[2] = upvalues[9]["traverse"]
end

end
::p215::
do
do
(registers)[3] = upvalues[8]["antiaim"]
end

end
::p216::
do
do
registers[3] = (registers[3]["other"])
end

end
goto p706
::p218::
tick(218)
do
do
registers[9] = (registers[5]["aimbot_logs_got_label"])
end

end
::p219::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p220::
do
do
a = (registers)
z = 11
end

end
::p221::
do
do
q = registers
m = 3
q = (q[m])
end

end
::p222::
do
do
(a)[z] = q
end

end
goto p911
::p224::
do
do
(registers)[15] = registers[10]
end

end
goto p786
::p226::
do
do
registers[9] = (registers[5]["aimbot_logs_miss_color"])
end

end
::p227::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p228::
do
do
(registers)[11] = registers[3]
end

end
goto p537
::p230::
tick(230)
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p231::
do
do
(registers)[8] = registers[2]
end

end
::p232::
do
do
registers[9] = (registers[5]["viewmodel"])
end

end
::p233::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p234::
do
do
registers[9] = (registers[5]["aspect_ratio"])
end

end
goto p50
::p237::
tick(237)
do
do
(registers)[11] = registers[2]
end

end
::p238::
do
do
registers[12] = (registers[5]["native_indicators"])
end

end
::p239::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p129
::p241::
tick(241)
do
do
registers[11] = (registers[9] == 3)
end

end
::p242::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p502 end
goto p582
::p244::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p245::
do
do
registers[1] = (registers[1] == "Anti-Aim")
end

end
::p246::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p826 end
goto p853
::p248::
tick(248)
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
::p249::
do
do
(registers)[1] = upvalues[8]["ragebot"]
end

end
::p250::
do
do
registers[1] = (registers[1]["log_spread"])
end

end
::p251::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p252::
do
do
registers[3] = (false)
end

end
::p253::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p258
::p255::
tick(255)
do
do
registers[9] = (registers[5]["manual_arrows_offset"])
end

end
::p256::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p469 end
goto p52
::p258::
do
do
(registers)[1] = upvalues[9]["traverse"]
end

end
::p259::
do
do
(registers)[2] = upvalues[8]["antiaim"]
end

end
::p260::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p261::
do
do
a = (D.f203)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
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
goto p131
::p263::
tick(263)
do
do
registers[9] = (registers[5]["watermark_cs2_gradient"])
end

end
::p264::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p716 end
goto p846
::p266::
tick(266)
do
do
registers[1] = (upvalues[4])
end

end
::p267::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p268::
do
do
registers[1] = (upvalues[5])
end

end
::p269::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p270::
do
do
registers[1] = (upvalues[6])
end

end
::p271::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p272::
do
do
registers[1] = (upvalues[7])
end

end
goto p147
::p274::
tick(274)
do
do
(registers)[11] = registers[8]
end

end
goto p584
::p276::
tick(276)
do
do
(registers)[5] = upvalues[10]["visuals"]
end

end
::p277::
do
do
registers[5] = (registers[5]["stubs"])
end

end
::p278::
do
do
(registers)[6] = registers[2]
end

end
::p279::
do
do
registers[7] = (registers[5]["watermark"])
end

end
goto p138
::p281::
tick(281)
do
do
registers[6] = ("4E4E4EFF")
end

end
::p282::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p283::
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
::p291::
tick(291)
do
do
registers[9] = ("CS2")
end

end
goto p779
::p293::
tick(293)
do
do
(registers)[15] = registers[8]
end

end
goto p305
::p295::
tick(295)
do
do
registers[13] = (registers[5]["manual_arrows_ts_cl1"])
end

end
::p296::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p297::
do
do
(registers)[15] = registers[4]
end

end
goto p489
::p299::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p177 end
goto p214
::p301::
tick(301)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p308 end
goto p612
::p303::
tick(303)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p203
::p305::
tick(305)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p373 end
goto p564
::p308::
tick(308)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p452
::p310::
tick(310)
do
do
registers[10] = (registers[9] == "Fifth")
end

end
goto p90
::p314::
tick(314)
do
do
registers[9] = (registers[5]["aimbot_logs_got_color"])
end

end
::p315::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p316::
do
do
(registers)[11] = registers[3]
end

end
goto p73
::p318::
tick(318)
do
do
registers[1] = (upvalues[2])
end

end
::p319::
do
do
registers[2] = (true)
end

end
::p320::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p321::
do
do
registers[1] = (upvalues[3])
end

end
::p322::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
goto p266
::p341::
tick(341)
do
do
registers[9] = (registers[5]["aimbot_logs_got_label"])
end

end
::p342::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p362 end
goto p218
::p344::
tick(344)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p603 end
goto p677
::p347::
do
do
(registers)[9] = nil
end

end
goto p766
::p349::
tick(349)
do
do
registers[11] = (registers[9] == "Third")
end

end
goto p84
::p351::
tick(351)
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p352::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p353::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p135
::p355::
tick(355)
do
do
registers[9] = (registers[5]["viewmodel_offset_x"])
end

end
::p356::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p357::
do
do
(registers)[11] = registers[3]
end

end
::p358::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p584 end
goto p274
::p360::
tick(360)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p390
::p362::
tick(362)
do
do
registers[9] = (registers[5]["aimbot_logs_got_color"])
end

end
::p363::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p732 end
goto p314
::p365::
tick(365)
do
do
registers[9] = (registers[5]["viewmodel_fov"])
end

end
::p366::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p367::
do
do
(registers)[11] = registers[3]
end

end
::p368::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p393 end
goto p777
::p370::
tick(370)
do
do
registers[9] = (registers[5]["viewmodel_fov"])
end

end
::p371::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p737 end
goto p365
::p373::
tick(373)
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p194
::p375::
tick(375)
do
do
registers[10] = (registers[5]["watermark_display"])
end

end
::p376::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p377::
do
do
(registers)[12] = registers[3]
end

end
::p378::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p407 end
goto p159
::p380::
tick(380)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p525 end
goto p513
::p382::
tick(382)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p528 end
goto p467
::p384::
tick(384)
do
do
registers[9] = (registers[5]["aimbot_logs_miss_label"])
end

end
::p385::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p386::
do
do
(registers)[11] = registers[3]
end

end
goto p495
::p388::
tick(388)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p655
::p390::
tick(390)
do
do
registers[9] = (registers[5]["aimbot_logs_hit_label"])
end

end
::p391::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p626 end
goto p125
::p393::
tick(393)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p737
::p395::
tick(395)
do
do
registers[10] = (registers[9] == "Second")
end

end
goto p586
::p397::
tick(397)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p78
::p399::
tick(399)
do
do
registers[9] = (registers[5]["thirdperson_distance"])
end

end
::p400::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p401::
do
do
(registers)[11] = registers[3]
end

end
goto p301
::p404::
tick(404)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p191
::p407::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p844
::p411::
tick(411)
do
do
registers[9] = (registers[5]["aimbot_logs_gradient"])
end

end
::p412::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p390 end
goto p65
::p414::
tick(414)
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p415::
do
do
registers[9] = (registers[9] ~= registers[0])
end

end
::p416::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p909 end
goto p531
::p418::
tick(418)
do
do
registers[9] = (registers[5]["damage_indicator"])
end

end
::p419::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p420::
do
do
(registers)[11] = registers[3]
end

end
::p421::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p47
::p423::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p424::
do
do
registers[4] = (registers[4] == "Anti-Aim")
end

end
::p425::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p740 end
goto p541
::p428::
tick(428)
do
do
registers[9] = (registers[5]["damage_indicator"])
end

end
::p429::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p418
::p431::
tick(431)
do
do
registers[9] = (registers[5]["manual_arrows_style"])
end

end
::p432::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p433::
do
do
(registers)[11] = registers[4]
end

end
goto p895
::p436::
tick(436)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p175
::p440::
tick(440)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p344 end
goto p167
::p450::
tick(450)
do
do
(registers)[11] = registers[8]
end

end
goto p465
::p452::
tick(452)
do
do
registers[9] = (registers[5]["viewmodel"])
end

end
::p453::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p370 end
goto p588
::p460::
tick(460)
do
do
(registers)[11] = registers[2]
end

end
::p461::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p462::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p497
::p465::
tick(465)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p857
::p467::
do
do
(registers)[15] = registers[11]
end

end
goto p528
::p469::
do
do
registers[9] = (registers[5]["manual_arrows_style"])
end

end
::p470::
do
do
registers[9] = (registers[9] ~= registers[0])
end

end
::p471::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
goto p658
::p482::
tick(482)
do
do
registers[9] = (registers[5]["watermark_accent_color"])
end

end
::p483::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p263 end
goto p414
::p489::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p305 end
goto p293
::p492::
tick(492)
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
::p493::
tick(493)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p428
::p495::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p303 end
goto p913
::p497::
tick(497)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p626
::p499::
tick(499)
do
do
registers[9] = (registers[5]["thirdperson_distance"])
end

end
::p500::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p452 end
goto p399
::p502::
tick(502)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p349
::p504::
tick(504)
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p505::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p759 end
goto p672
::p509::
tick(509)
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p510::
do
do
registers[9] = (registers[9] ~= registers[0])
end

end
::p511::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p351
::p513::
do
do
registers[10] = (registers[9] == "Invictus")
end

end
goto p525
::p515::
tick(515)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p516::
do
do
(registers)[2] = upvalues[9]["traverse"]
end

end
::p517::
do
do
(registers)[3] = upvalues[8]["antiaim"]
end

end
goto p917
::p525::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p241 end
goto p12
::p528::
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p721
::p531::
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p532::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p533::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p909
::p535::
do
do
registers[11] = (registers[9] == "Fourth")
end

end
goto p440
::p537::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p933 end
goto p187
::p541::
do
do
registers[4] = (upvalues[11])
end

end
::p542::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
goto p740
::p544::
tick(544)
do
do
(registers)[15] = registers[8]
end

end
goto p436
::p560::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p561::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p562::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p666 end
goto p492
::p564::
do
do
(registers)[15] = registers[11]
end

end
goto p373
::p566::
tick(566)
do
do
(registers)[5] = upvalues[10]["visuals"]
end

end
::p567::
do
do
registers[5] = (registers[5]["widgets"])
end

end
::p568::
do
do
(registers)[6] = registers[2]
end

end
::p569::
do
do
registers[7] = (registers[5]["aspect_ratio"])
end

end
::p570::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p571::
do
do
(registers)[7] = registers[2]
end

end
::p572::
do
do
registers[8] = (registers[5]["thirdperson"])
end

end
goto p230
::p574::
tick(574)
do
do
(registers)[5] = upvalues[10]["visuals"]
end

end
::p575::
do
do
registers[5] = (registers[5]["stubs"])
end

end
::p576::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p721 end
goto p276
::p578::
tick(578)
do
do
(registers)[15] = registers[8]
end

end
goto p382
::p580::
tick(580)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p177
::p582::
do
do
registers[11] = (registers[9] == 4)
end

end
goto p502
::p584::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p694
::p586::
tick(586)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p310
::p588::
do
do
registers[9] = (registers[5]["viewmodel"])
end

end
::p589::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p590::
do
do
(registers)[11] = registers[3]
end

end
::p591::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p370
::p593::
tick(593)
do
do
registers[12] = (registers[9] == "CS2")
end

end
goto p861
::p595::
do
do
registers[12] = (registers[9] == "CS2")
end

end
goto p762
::p597::
do
do
registers[9] = (registers[5]["feature_indicators_offset"])
end

end
::p598::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p599::
do
do
(registers)[11] = registers[3]
end

end
::p600::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p493 end
goto p26
::p603::
tick(603)
do
do
registers[12] = (registers[9] == 6)
end

end
::p604::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p861 end
goto p593
::p607::
tick(607)
do
do
(registers)[5] = upvalues[12]["new"]
end

end
::p608::
do
do
registers[6] = ("00000078")
end

end
::p609::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p610::
do
do
(registers)[5] = upvalues[12]["new"]
end

end
goto p281
::p612::
do
do
(registers)[11] = registers[7]
end

end
goto p308
::p614::
tick(614)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p362
::p616::
do
do
(registers)[15] = registers[8]
end

end
goto p201
::p619::
tick(619)
do
do
(registers)[2] = upvalues[9]["traverse"]
end

end
::p620::
do
do
(registers)[3] = upvalues[8]["antiaim"]
end

end
::p621::
do
do
registers[3] = (registers[3]["other"])
end

end
::p622::
do
do
registers[3] = (registers[3]["slow_motion"])
end

end
::p623::
do
do
a = (D.f204)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
::p624::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p177
::p626::
do
do
registers[9] = (registers[5]["aimbot_logs_hit_color"])
end

end
::p627::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p655 end
goto p697
::p629::
do
do
registers[9] = (registers[5]["thirdperson"])
end

end
::p630::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p631::
do
do
(registers)[11] = registers[3]
end

end
::p632::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p499
::p634::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p504
::p636::
tick(636)
do
do
(registers)[2] = upvalues[9]["traverse"]
end

end
::p637::
do
do
(registers)[3] = upvalues[8]["antiaim"]
end

end
::p638::
do
do
a = registers
z = (3)
q = (registers)
end

end
::p639::
do
do
m = 3
q = q[m]
end

end
::p640::
do
do
m = ("fakelag")
q = q[m]
end

end
::p641::
do
do
(a)[z] = q
end

end
::p642::
do
do
a = (D.f205)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
goto p515
::p655::
do
do
registers[9] = (registers[5]["aimbot_logs_miss_label"])
end

end
::p656::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p203 end
goto p384
::p658::
do
do
registers[9] = (registers[5]["manual_arrows_style"])
end

end
::p659::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p660::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p161
::p662::
do
do
registers[9] = (registers[5]["aspect_ratio"])
end

end
::p663::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p664::
do
do
(registers)[11] = registers[3]
end

end
goto p789
::p666::
do
do
(registers)[1] = upvalues[1][108]
end

end
::p667::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p668::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p318 end
goto p248
::p670::
tick(670)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p255
::p672::
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p673::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p674::
do
do
(registers)[11] = registers[3]
end

end
::p675::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p163 end
goto p116
::p677::
do
do
registers[11] = (registers[9] == "TeamSkeet Velocity")
end

end
goto p603
::p679::
do
do
(registers)[2] = upvalues[9]["traverse"]
end

end
::p680::
do
do
(registers)[3] = upvalues[8]["antiaim"]
end

end
::p681::
do
do
registers[3] = (registers[3]["other"])
end

end
::p682::
do
do
a = (D.f206)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
goto p580
::p684::
tick(684)
do
do
registers[9] = (registers[5]["aspect_ratio_value"])
end

end
::p685::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p686::
do
do
(registers)[11] = registers[3]
end

end
::p687::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p397 end
goto p112
::p689::
do
do
registers[9] = (registers[5]["feature_indicators"])
end

end
::p690::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p691::
do
do
(registers)[11] = registers[3]
end

end
::p692::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p81
::p694::
tick(694)
do
do
registers[9] = (registers[5]["viewmodel_offset_y"])
end

end
::p695::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p857 end
goto p881
::p697::
do
do
registers[9] = (registers[5]["aimbot_logs_hit_color"])
end

end
::p698::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p699::
do
do
(registers)[11] = registers[3]
end

end
::p700::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p388 end
goto p108
::p704::
tick(704)
do
do
(registers)[11] = registers[8]
end

end
goto p670
::p706::
do
do
registers[3] = (registers[3]["on_shot_antiaim"])
end

end
::p707::
do
do
a = (D.f207)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
::p708::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p619
::p710::
tick(710)
do
do
a = 10;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p263
::p712::
tick(712)
do
do
registers[10] = (registers[9] == 2)
end

end
goto p828
::p714::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p360 end
goto p16
::p716::
tick(716)
do
do
registers[9] = (registers[5]["watermark_position"])
end

end
::p717::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p191 end
goto p727
::p719::
do
do
registers[9] = ("CS2")
end

end
goto p375
::p721::
tick(721)
do
do
(registers)[5] = upvalues[10]["visuals"]
end

end
::p722::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p607 end
goto p935
::p724::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p237
::p727::
do
do
registers[9] = (registers[5]["watermark_position"])
end

end
::p728::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p729::
do
do
(registers)[11] = registers[3]
end

end
::p730::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p404 end
goto p97
::p732::
tick(732)
do
do
registers[9] = (registers[5]["manual_arrows"])
end

end
::p733::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p749 end
goto p888
::p735::
tick(735)
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p710 end
goto p165
::p737::
do
do
registers[9] = (registers[5]["viewmodel_offset_x"])
end

end
::p738::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p694 end
goto p355
::p740::
do
do
(registers)[5] = upvalues[10]["visuals"]
end

end
::p741::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p721 end
goto p574
::p749::
tick(749)
do
do
registers[9] = (registers[5]["manual_arrows_style"])
end

end
::p750::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p255 end
goto p431
::p753::
tick(753)
do
do
registers[13] = (registers[5]["manual_arrows_cs2_color"])
end

end
::p754::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p755::
do
do
(registers)[15] = registers[4]
end

end
::p756::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p436 end
goto p544
::p759::
do
do
registers[9] = (registers[5]["watermark_display"])
end

end
::p760::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p482 end
goto p509
::p762::
do
do
a = 10;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p716
::p764::
tick(764)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p775 end
goto p114
::p766::
do
do
registers[10] = (registers[9] == 1)
end

end
::p767::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p828 end
goto p712
::p775::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p586 end
goto p395
::p777::
do
do
(registers)[11] = registers[8]
end

end
goto p393
::p779::
tick(779)
do
do
registers[10] = (registers[5]["watermark_accent_color"])
end

end
::p780::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p781::
do
do
(registers)[12] = registers[3]
end

end
::p782::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p735 end
goto p95
::p784::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p497 end
goto p460
::p786::
do
do
a = 13;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p811
::p789::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p923
::p791::
do
do
registers[9] = (registers[5]["native_indicators"])
end

end
::p792::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p793::
do
do
(registers)[11] = registers[3]
end

end
::p794::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p870
::p796::
tick(796)
do
do
(registers)[12] = registers[6]
end

end
goto p10
::p807::
do
do
(registers)[11] = registers[8]
end

end
goto p905
::p809::
tick(809)
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p198
::p811::
tick(811)
do
do
registers[13] = (registers[5]["manual_arrows_cs2_color"])
end

end
::p812::
branch_taken=false
do
do
if registers[13] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p850 end
goto p753
::p814::
do
do
registers[10] = (registers[5]["watermark_cs2_gradient"])
end

end
::p815::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p816::
do
do
a = (registers)
z = 12
end

end
::p817::
do
do
q = registers
m = 3
q = (q[m])
end

end
::p818::
do
do
(a)[z] = q
end

end
::p819::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p796
::p821::
do
do
(registers)[11] = registers[8]
end

end
goto p185
::p823::
tick(823)
do
do
registers[9] = (registers[5]["aimbot_logs"])
end

end
::p824::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p411 end
goto p103
::p826::
tick(826)
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p636 end
goto p42
::p828::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p764 end
goto p87
::p844::
do
do
registers[12] = (registers[9] == "CS2")
end

end
goto p118
::p846::
do
do
registers[9] = (registers[5]["watermark_style"])
end

end
::p847::
do
do
registers[9] = (registers[9] ~= registers[0])
end

end
::p848::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p69
::p850::
do
do
registers[13] = (registers[5]["manual_arrows_ts_cl1"])
end

end
::p851::
branch_taken=false
do
do
if registers[13] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p194 end
goto p295
::p853::
do
do
(registers)[1] = upvalues[10]["switch_type"]
end

end
::p854::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
goto p826
::p857::
do
do
registers[9] = (registers[5]["viewmodel_offset_z"])
end

end
::p858::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p198 end
goto p120
::p861::
do
do
registers[13] = (registers[5]["manual_arrows_color"])
end

end
::p862::
branch_taken=false
do
do
if registers[13] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p811 end
goto p901
::p870::
do
do
registers[9] = (registers[5]["native_indicators_gradient"])
end

end
::p871::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p823 end
goto p99
::p875::
do
do
registers[10] = (registers[9] == "Triangle")
end

end
goto p380
::p881::
do
do
registers[9] = (registers[5]["viewmodel_offset_y"])
end

end
::p882::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p883::
do
do
(registers)[11] = registers[3]
end

end
::p884::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p465 end
goto p450
::p886::
do
do
(registers)[11] = registers[8]
end

end
goto p809
::p888::
do
do
registers[9] = (registers[5]["manual_arrows"])
end

end
::p889::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p890::
do
do
(registers)[11] = registers[4]
end

end
::p891::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p749
::p895::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p670 end
goto p704
::p899::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p504 end
goto p155
::p901::
do
do
registers[13] = (registers[5]["manual_arrows_color"])
end

end
::p902::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p903::
do
do
(registers)[15] = registers[4]
end

end
goto p212
::p905::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p607
::p909::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p779 end
goto p291
::p911::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p614 end
goto p28
::p913::
do
do
(registers)[11] = registers[2]
end

end
::p914::
do
do
registers[12] = (registers[5]["aimbot_logs"])
end

end
::p915::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p303
::p917::
do
do
registers[3] = (registers[3]["other"])
end

end
::p918::
do
do
a = (D.f208)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
::p919::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p920::
do
do
(registers)[2] = upvalues[10]["switch"]
end

end
::p921::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p23
::p923::
do
do
registers[9] = (registers[5]["aspect_ratio_value"])
end

end
::p924::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p684
::p926::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p732
::p928::
do
do
registers[13] = (registers[5]["manual_arrows_ts_cl2"])
end

end
::p929::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p930::
do
do
(registers)[15] = registers[4]
end

end
::p931::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p382 end
goto p578
::p933::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p341
::p935::
do
do
(registers)[5] = upvalues[10]["visuals"]
end

end
::p936::
do
do
registers[5] = (registers[5]["widgets"])
end

end
::p937::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p607 end
goto p566
end
end
