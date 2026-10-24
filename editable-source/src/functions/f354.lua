
-- Function f354; 190 recovered instruction blocks.
F.f354=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f354",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f354 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p222
::p11::
tick(11)
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
::p19::
tick(19)
do
do
(registers)[24] = registers[21]
end

end
::p20::
do
do
top = (24)
registers[top]()
top = top - 1
end

end
goto p25
::p23::
tick(23)
do
do
registers[11] = (1)
end

end
goto p34
::p25::
tick(25)
do
do
a = upvalues[2];
(registers)[24] = (a[2][a[1]]["packets"])
end

end
::p26::
do
do
registers[25] = (registers[9]["next_switch_packet"])
end

end
::p27::
branch_taken=false
do
do
if not (not (registers[25] <= registers[24])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p380
::p29::
tick(29)
branch_taken=false
do
do
if registers[6] ~= "Double" then
    branch_taken=true
end
end

end
if branch_taken then goto p365 end
goto p151
::p31::
tick(31)
do
do
a = upvalues[0];
(registers)[8] = (a[2][a[1]]["current"])
end

end
::p32::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p316 end
goto p247
::p34::
tick(34)
do
do
(registers)[12] = upvalues[3]["is_double_tap"]
end

end
::p35::
do
do
registers[13] = ("key")
end

end
::p36::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p37::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p191
::p39::
tick(39)
do
do
(registers)[13] = registers[12]
end

end
::p40::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p340 end
goto p178
::p42::
tick(42)
branch_taken=false
do
do
if registers[7] ~= "Solo" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p331
::p44::
do
do
registers[24] = (registers[1]["body_yaw"])
end

end
::p45::
do
do
registers[25] = (registers[9]["side"])
end

end
::p46::
do
do
registers[25] = (registers[25] == true)
end

end
::p47::
do
do
registers[24]["inverter"] = (registers[25])
end

end
::p48::
do
do
registers[24] = (registers[9]["switch_count"])
end

end
::p49::
do
do
registers[1]["delay_switch_count"] = (registers[24])
end

end
goto p203
::p51::
tick(51)
do
do
registers[9]["side"] = (registers[23])
end

end
::p52::
do
do
registers[1]["delay_packets"] = 0
end

end
::p53::
do
do
registers[23] = (registers[9]["switch_count"])
end

end
::p54::
do
do
registers[1]["delay_switch_count"] = (registers[23])
end

end
::p55::
do
do
a = upvalues[2];
(registers)[23] = (a[2][a[1]]["packets"])
end

end
::p56::
do
do
registers[23] = registers[23] + 1
end

end
::p57::
do
do
registers[1]["delay_next_switch_packet"] = (registers[23])
end

end
goto p215
::p66::
tick(66)
do
do
a = (12)
z = registers[12]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p67::
do
do
a = 12
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
::p68::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p69::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p23
::p83::
tick(83)
do
do
registers[9]["signature"] = (registers[23])
end

end
::p84::
do
do
registers[9]["switch_count"] = 0
end

end
::p85::
do
do
registers[24] = (registers[1]["body_yaw"])
end

end
goto p359
::p103::
tick(103)
do
do
registers[1]["delay_switch_count"] = (registers[23])
end

end
::p104::
do
do
(registers)[23] = registers[21]
end

end
::p105::
do
do
top = (23)
registers[top]()
top = top - 1
end

end
::p106::
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
::p108::
tick(108)
do
do
(registers)[23] = registers[20]
end

end
::p109::
do
do
top = 23;
(registers)[top] = registers[top]()
end

end
::p110::
do
do
registers[24] = (registers[9]["signature"])
end

end
::p111::
branch_taken=false
do
do
if registers[24] == registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p314 end
goto p83
::p121::
tick(121)
do
do
registers[1]["inverts"] = (registers[24])
end

end
::p122::
do
do
(registers)[24] = registers[21]
end

end
::p123::
do
do
top = (24)
registers[top]()
top = top - 1
end

end
goto p11
::p125::
tick(125)
do
do
registers[24] = (registers[2]["chokedcommands"])
end

end
::p126::
branch_taken=false
do
do
if registers[24] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p396 end
goto p198
::p128::
tick(128)
do
do
registers[6] = ("Default")
end

end
goto p278
::p130::
tick(130)
do
do
registers[23] = (registers[1]["body_yaw"])
end

end
::p131::
do
do
registers[23] = (registers[23]["inverter"])
end

end
::p132::
do
do
registers[23] = (registers[23] == true)
end

end
goto p51
::p134::
tick(134)
do
do
registers[25] = (registers[25] == true)
end

end
::p135::
do
do
registers[24]["inverter"] = (registers[25])
end

end
::p136::
do
do
registers[1]["delay_packets"] = 0
end

end
goto p293
::p143::
tick(143)
do
do
registers[11] = registers[11] + 1
end

end
::p144::
do
do
registers[10]["next_switch_packet"] = (registers[11])
end

end
::p145::
do
do
registers[10]["switch_count"] = 0
end

end
::p146::
do
do
registers[10]["signature"] = (registers[0])
end

end
::p147::
do
do
(registers)[9] = registers[10]
end

end
goto p372
::p151::
do
do
registers[6] = ("Fluctuate")
end

end
goto p278
::p165::
tick(165)
do
do
registers[6] = (registers[5]["type"])
end

end
::p166::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p167::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p168::
branch_taken=false
do
do
if registers[6] ~= "Solo" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p245
::p178::
do
do
a = upvalues[2];
(registers)[13] = (a[2][a[1]]["exploits"])
end

end
::p179::
do
do
registers[13] = (registers[13]["charged"])
end

end
::p180::
do
do
registers[13] = (registers[13] == true)
end

end
goto p340
::p182::
tick(182)
do
do
a = upvalues[2];
(registers)[10] = (a[2][a[1]]["exploits"])
end

end
::p183::
do
do
registers[10] = (registers[10]["charged"])
end

end
::p184::
do
do
registers[10] = (registers[10] == true)
end

end
::p185::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p264 end
goto p324
::p187::
tick(187)
do
do
registers[22] = (registers[1]["last_exploit_key_active"])
end

end
::p188::
do
do
registers[22] = (registers[22] ~= registers[0])
end

end
::p189::
branch_taken=false
do
do
if not registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p408 end
goto p346
::p191::
do
do
(registers)[12] = upvalues[3]["is_on_shot_antiaim"]
end

end
::p192::
do
do
registers[13] = ("no dt")
end

end
::p193::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p39
::p198::
do
do
registers[24] = (registers[1]["body_yaw"])
end

end
::p199::
do
do
registers[25] = (registers[9]["side"])
end

end
::p200::
do
do
registers[25] = (registers[25] == true)
end

end
::p201::
do
do
registers[24]["inverter"] = (registers[25])
end

end
goto p339
::p203::
do
do
registers[24] = (registers[9]["next_switch_packet"])
end

end
::p204::
do
do
registers[1]["delay_next_switch_packet"] = (registers[24])
end

end
::p205::
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
::p215::
do
do
registers[1]["delay_signature"] = (registers[0])
end

end
::p216::
do
do
a = upvalues[2];
(registers)[23] = (a[2][a[1]]["packets"])
end

end
::p217::
do
do
registers[23] = registers[23] + 1
end

end
::p218::
do
do
registers[9]["next_switch_packet"] = (registers[23])
end

end
::p219::
do
do
registers[9]["signature"] = (registers[0])
end

end
::p220::
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
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p223::
do
do
registers[4] = (registers[3]["delay"])
end

end
::p224::
do
do
registers[5] = (registers[4]["builder_type"])
end

end
::p225::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p320
::p227::
tick(227)
do
do
registers[7] = ("Solo")
end

end
goto p42
::p230::
tick(230)
do
do
registers[22] = (registers[1]["last_exploit_charged"])
end

end
::p231::
do
do
registers[22] = (registers[22] ~= registers[13])
end

end
goto p408
::p234::
tick(234)
do
do
registers[6] = ("Default")
end

end
goto p278
::p245::
branch_taken=false
do
do
if registers[6] ~= "Static" then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p128
::p247::
do
do
(registers)[8] = upvalues[1][1]
end

end
goto p316
::p249::
tick(249)
branch_taken=false
do
do
if registers[7] ~= "Custom" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p306
::p260::
tick(260)
do
do
registers[1]["delay_packets"] = 0
end

end
::p261::
do
do
(registers)[24] = registers[21]
end

end
::p262::
do
do
top = (24)
registers[top]()
top = top - 1
end

end
::p263::
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
::p264::
tick(264)
do
do
(registers)[11] = environment["tonumber"]
end

end
::p265::
do
do
(registers)[12] = upvalues[3]["ragebot"]
end

end
::p266::
do
do
registers[12] = (registers[12]["double_tap_fl"])
end

end
goto p66
::p276::
tick(276)
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p399
::p278::
tick(278)
do
do
registers[7] = (registers[5]["values"])
end

end
::p279::
do
do
registers[7] = (registers[7] ~= registers[0])
end

end
::p280::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p328 end
goto p375
::p283::
tick(283)
do
do
registers[10] = {
}
end

end
::p284::
do
do
registers[11] = (registers[1]["body_yaw"])
end

end
::p285::
do
do
registers[11] = (registers[11]["inverter"])
end

end
::p286::
do
do
registers[11] = (registers[11] == true)
end

end
::p287::
do
do
registers[10]["side"] = (registers[11])
end

end
::p288::
do
do
a = upvalues[2];
(registers)[11] = (a[2][a[1]]["packets"])
end

end
goto p143
::p290::
tick(290)
do
do
(registers)[10] = upvalues[3]["is_on_shot_antiaim"]
end

end
::p291::
do
do
top = 10;
(registers)[top] = registers[top]()
end

end
goto p264
::p293::
do
do
registers[24.0] = (registers[9]["switch_count"])
end

end
::p294::
do
do
registers[24] = registers[24] + 1
end

end
::p295::
do
do
registers[9]["switch_count"] = (registers[24])
end

end
goto p403
::p300::
tick(300)
do
do
registers[23] = (registers[1]["body_yaw"])
end

end
::p301::
do
do
registers[23] = (registers[23]["inverter"])
end

end
::p302::
do
do
registers[23] = (registers[23] == true)
end

end
goto p352
::p306::
do
do
registers[7] = ("Solo")
end

end
goto p31
::p314::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p396 end
goto p125
::p316::
do
do
registers[9] = (registers[1]["delay_states"])
end

end
::p317::
do
do
(registers)[9] = registers[9][registers[8]]
end

end
::p318::
branch_taken=false
do
do
if registers[9] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p182 end
goto p283
::p320::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p321::
do
do
registers[5] = (registers[5] == "Hidden")
end

end
::p322::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p350 end
goto p388
::p324::
do
do
(registers)[10] = upvalues[3]["is_double_tap"]
end

end
::p325::
do
do
top = 10;
(registers)[top] = registers[top]()
end

end
::p326::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p264 end
goto p290
::p328::
tick(328)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p227
::p331::
branch_taken=false
do
do
if registers[7] ~= "Double" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p249
::p339::
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
::p340::
do
do
a = (D.f355)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[14] = x
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
::p341::
do
do
a = (D.f356)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[15] = x
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
::p342::
do
do
a = (D.f357)
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
::p343::
do
do
a = (D.f358)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[17] = x
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
::p344::
do
do
a = (D.f359)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[18] = x
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
goto p367
::p346::
do
do
registers[22] = (registers[1]["last_exploit_key_active"])
end

end
::p347::
do
do
registers[22] = (registers[22] ~= registers[12])
end

end
::p348::
branch_taken=false
do
do
if registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p408 end
goto p230
::p350::
tick(350)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p165 end
goto p386
::p352::
do
do
registers[9]["side"] = (registers[23])
end

end
::p353::
do
do
registers[23] = (registers[1]["body_yaw"])
end

end
::p354::
do
do
registers[24] = (registers[9]["side"])
end

end
::p355::
do
do
registers[24] = (registers[24] == true)
end

end
::p356::
do
do
registers[23]["inverter"] = (registers[24])
end

end
::p357::
do
do
registers[23] = (registers[9]["switch_count"])
end

end
goto p103
::p359::
do
do
registers[24] = (registers[24]["inverter"])
end

end
::p360::
do
do
registers[24] = (registers[24] == true)
end

end
::p361::
do
do
registers[9]["side"] = (registers[24])
end

end
::p362::
do
do
registers[1]["delay_signature"] = (registers[23])
end

end
::p363::
do
do
registers[1]["delay_switch_count"] = 0
end

end
goto p260
::p365::
branch_taken=false
do
do
if registers[6] ~= "Custom" then
    branch_taken=true
end
end

end
if branch_taken then goto p278 end
goto p234
::p367::
do
do
a = (D.f360)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[19] = x
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
::p368::
do
do
a = (D.f361)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[20] = x
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
::p369::
do
do
a = (D.f362)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[21] = x
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
goto p187
::p372::
do
do
registers[10] = (registers[1]["delay_states"])
end

end
::p373::
do
do
(registers[10])[registers[8]] = registers[9]
end

end
goto p182
::p375::
do
do
registers[7] = (registers[5]["values"])
end

end
::p376::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p377::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p328
::p380::
do
do
registers[24] = (registers[9]["side"])
end

end
::p381::
do
do
(registers)[24] = not registers[24]
end

end
::p382::
do
do
registers[9]["side"] = (registers[24])
end

end
::p383::
do
do
registers[24] = (registers[1]["body_yaw"])
end

end
::p384::
do
do
registers[25] = (registers[9]["side"])
end

end
goto p134
::p386::
do
do
(registers)[5] = registers[4]
end

end
goto p165
::p388::
do
do
registers[5] = (registers[4]["hidden"])
end

end
goto p350
::p396::
do
do
registers[24] = (registers[9]["next_switch_packet"])
end

end
::p397::
branch_taken=false
do
do
if registers[24] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p19
::p399::
do
do
a = upvalues[2];
(registers)[23] = (a[2][a[1]]["fakelag"])
end

end
::p400::
branch_taken=false
do
do
if not (registers[11] < registers[23]) then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p130
::p403::
do
do
registers[24] = (registers[9]["switch_count"])
end

end
::p404::
do
do
registers[1]["delay_switch_count"] = (registers[24])
end

end
::p405::
do
do
registers[24] = (registers[1]["inverts"])
end

end
::p406::
do
do
registers[24] = registers[24] + 1
end

end
goto p121
::p408::
do
do
registers[1]["last_exploit_key_active"] = (registers[12])
end

end
::p409::
do
do
registers[1]["last_exploit_charged"] = (registers[13])
end

end
::p410::
branch_taken=false
do
do
if not registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p276 end
goto p300
end
end
