
-- Function f493; 156 recovered instruction blocks.
F.f493=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f493",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f493 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p39
::p11::
tick(11)
do
do
(registers)[6] = registers[7]
end

end
::p12::
do
do
registers[7] = (registers[1]["defensive_yaw_double_states"])
end

end
::p13::
do
do
(registers)[7] = registers[7][registers[5]]
end

end
goto p302
::p18::
tick(18)
do
do
registers[15] = (registers[7]["side"])
end

end
::p19::
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
return registers[15]
end

end
::p21::
tick(21)
do
do
registers[13] = (registers[1]["body_yaw"])
end

end
::p22::
do
do
registers[13] = (registers[13]["inverter"])
end

end
::p23::
do
do
registers[13] = (registers[13] == true)
end

end
::p24::
do
do
registers[7]["side"] = (registers[13])
end

end
::p25::
do
do
registers[13] = (registers[1]["body_yaw"])
end

end
::p26::
do
do
registers[14] = (registers[7]["side"])
end

end
goto p104
::p35::
tick(35)
do
do
registers[15] = (registers[1]["body_yaw"])
end

end
::p36::
do
do
registers[16] = (registers[7]["side"])
end

end
::p37::
do
do
registers[16] = (registers[16] == true)
end

end
goto p238
::p39::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p40::
do
do
(registers)[5] = registers[3]
end

end
::p41::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
::p52::
do
do
a = upvalues[0];
(registers)[5] = (a[2][a[1]]["current"])
end

end
goto p98
::p54::
tick(54)
do
do
registers[15] = (registers[1]["body_yaw"])
end

end
::p55::
do
do
registers[16] = (registers[7]["side"])
end

end
::p56::
do
do
registers[16] = (registers[16] == true)
end

end
goto p314
::p59::
tick(59)
do
do
registers[9] = (1)
end

end
goto p242
::p68::
tick(68)
do
do
a = upvalues[4];
(registers)[13] = (a[2][a[1]]["exploits"])
end

end
::p69::
do
do
registers[13] = (registers[13]["charged"])
end

end
::p70::
do
do
registers[13] = (registers[13] == true)
end

end
::p71::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p163 end
goto p224
::p75::
tick(75)
do
do
a = upvalues[4];
(registers)[10] = (a[2][a[1]]["exploits"])
end

end
::p76::
do
do
registers[10] = (registers[10]["charged"])
end

end
::p77::
do
do
registers[10] = (registers[10] == true)
end

end
goto p100
::p95::
tick(95)
do
do
registers[13] = (0)
end

end
goto p269
::p98::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p325 end
goto p281
::p100::
tick(100)
do
do
registers[11] = (registers[7]["last_exploit_key_active"])
end

end
::p101::
do
do
registers[11] = (registers[11] ~= registers[0])
end

end
::p102::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p341 end
goto p292
::p104::
do
do
registers[14] = (registers[14] == true)
end

end
::p105::
do
do
registers[13]["inverter"] = (registers[14])
end

end
::p106::
do
do
registers[13] = (registers[7]["switch_count"])
end

end
::p107::
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p269 end
goto p95
::p115::
tick(115)
do
do
registers[15] = (registers[2]["chokedcommands"])
end

end
::p116::
branch_taken=false
do
do
if registers[15] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p319
::p123::
tick(123)
do
do
registers[15] = (registers[1]["body_yaw"])
end

end
::p124::
do
do
registers[15] = (registers[15]["inverter"])
end

end
::p125::
do
do
registers[15] = (registers[15] == true)
end

end
goto p207
::p127::
tick(127)
do
do
registers[15] = (registers[7]["next_switch_packet"])
end

end
::p128::
branch_taken=false
do
do
if registers[15] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p250 end
goto p289
::p130::
tick(130)
do
do
registers[7]["signature"] = (registers[12])
end

end
::p131::
do
do
registers[7]["switch_count"] = 0
end

end
::p132::
do
do
registers[15] = (registers[1]["body_yaw"])
end

end
::p133::
do
do
registers[15] = (registers[15]["inverter"])
end

end
::p134::
do
do
registers[15] = (registers[15] == true)
end

end
::p135::
do
do
registers[7]["side"] = (registers[15])
end

end
goto p54
::p157::
tick(157)
do
do
registers[11] = (registers[7]["last_exploit_charged"])
end

end
::p158::
do
do
registers[11] = (registers[11] ~= registers[10])
end

end
goto p341
::p160::
tick(160)
do
do
(registers)[10] = registers[9]
end

end
::p161::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p75
::p163::
tick(163)
do
do
(registers)[14] = upvalues[5]["ragebot"]
end

end
::p164::
do
do
registers[14] = (registers[14]["double_tap_fl"])
end

end
::p165::
do
do
a = (14)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p166::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p167::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p266 end
goto p307
::p175::
tick(175)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p160 end
goto p191
::p187::
tick(187)
do
do
registers[15] = (registers[7]["switch_count"])
end

end
::p188::
do
do
registers[15] = registers[15] + 1
end

end
::p189::
do
do
registers[7]["switch_count"] = (registers[15])
end

end
goto p247
::p191::
do
do
(registers)[9] = upvalues[5]["is_on_shot_antiaim"]
end

end
::p192::
do
do
registers[10] = ("no dt")
end

end
::p193::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p160
::p195::
tick(195)
do
do
registers[8]["signature"] = (registers[0])
end

end
::p196::
do
do
registers[8]["last_exploit_key_active"] = (registers[0])
end

end
::p197::
do
do
registers[8]["last_exploit_charged"] = (registers[0])
end

end
::p198::
do
do
(registers)[7] = registers[8]
end

end
::p199::
do
do
registers[8] = (registers[1]["defensive_yaw_double_states"])
end

end
::p200::
do
do
(registers[8])[registers[5]] = registers[7]
end

end
::p202::
tick(202)
do
do
a = (D.f494)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[8] = x
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
::p203::
do
do
(registers)[9] = upvalues[5]["is_double_tap"]
end

end
::p204::
do
do
registers[10] = ("key")
end

end
::p205::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p175
::p207::
do
do
registers[7]["side"] = (registers[15])
end

end
::p208::
do
do
a = upvalues[4];
(registers)[15] = (a[2][a[1]]["packets"])
end

end
::p209::
do
do
registers[15] = registers[15] + 1
end

end
::p210::
do
do
registers[7]["next_switch_packet"] = (registers[15])
end

end
::p211::
do
do
registers[7]["signature"] = (registers[0])
end

end
goto p18
::p214::
tick(214)
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p115
::p217::
tick(217)
do
do
registers[13] = (registers[7]["side"])
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
return registers[13]
end

end
::p219::
tick(219)
do
do
registers[15] = (registers[1]["body_yaw"])
end

end
::p220::
do
do
registers[16] = (registers[7]["side"])
end

end
::p221::
do
do
registers[16] = (registers[16] == true)
end

end
::p222::
do
do
registers[15]["inverter"] = (registers[16])
end

end
goto p187
::p224::
do
do
(registers)[13] = upvalues[5]["is_double_tap"]
end

end
::p225::
do
do
top = 13;
(registers)[top] = registers[top]()
end

end
::p226::
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p163 end
goto p310
::p234::
tick(234)
do
do
registers[15] = (registers[7]["side"])
end

end
::p235::
do
do
(registers)[15] = not registers[15]
end

end
::p236::
do
do
registers[7]["side"] = (registers[15])
end

end
goto p219
::p238::
do
do
registers[15]["inverter"] = (registers[16])
end

end
::p239::
do
do
registers[15] = (registers[7]["side"])
end

end
::p240::
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
return registers[15]
end

end
::p242::
tick(242)
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p243::
do
do
registers[9] = (1)
end

end
::p244::
do
do
registers[10] = (16)
end

end
::p245::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p11
::p247::
do
do
(registers)[15] = registers[8]
end

end
::p248::
do
do
top = (15)
registers[top]()
top = top - 1
end

end
goto p35
::p250::
tick(250)
do
do
a = upvalues[4];
(registers)[15] = (a[2][a[1]]["packets"])
end

end
::p251::
do
do
registers[16] = (registers[7]["next_switch_packet"])
end

end
::p252::
branch_taken=false
do
do
if not (not (registers[16] <= registers[15])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p234
::p254::
tick(254)
do
do
registers[8] = {
}
end

end
::p255::
do
do
registers[9] = (registers[1]["body_yaw"])
end

end
::p256::
do
do
registers[9] = (registers[9]["inverter"])
end

end
::p257::
do
do
registers[9] = (registers[9] == true)
end

end
::p258::
do
do
registers[8]["side"] = (registers[9])
end

end
::p259::
do
do
a = upvalues[4];
(registers)[9] = (a[2][a[1]]["packets"])
end

end
::p262::
do
do
registers[9] = registers[9] + 1
end

end
::p263::
do
do
registers[8]["next_switch_packet"] = (registers[9])
end

end
::p264::
do
do
registers[8]["switch_count"] = 0
end

end
goto p195
::p266::
tick(266)
do
do
registers[15] = (registers[7]["signature"])
end

end
::p267::
branch_taken=false
do
do
if registers[15] == registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p214 end
goto p130
::p269::
do
do
registers[7]["switch_count"] = (registers[13])
end

end
::p270::
do
do
(registers)[13] = registers[8]
end

end
::p271::
do
do
top = (13)
registers[top]()
top = top - 1
end

end
goto p217
::p281::
do
do
(registers)[5] = upvalues[1][1]
end

end
goto p325
::p289::
do
do
(registers)[15] = registers[8]
end

end
::p290::
do
do
top = (15)
registers[top]()
top = top - 1
end

end
goto p250
::p292::
do
do
registers[11] = (registers[7]["last_exploit_key_active"])
end

end
::p293::
do
do
registers[11] = (registers[11] ~= registers[9])
end

end
::p294::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p341 end
goto p157
::p302::
branch_taken=false
do
do
if registers[7] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p202 end
goto p254
::p304::
tick(304)
do
do
registers[15] = (registers[7]["side"])
end

end
::p305::
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
return registers[15]
end

end
::p307::
do
do
a = upvalues[4];
(registers)[15] = (a[2][a[1]]["fakelag"])
end

end
::p308::
branch_taken=false
do
do
if not (registers[14] < registers[15]) then
    branch_taken=true
end
end

end
if branch_taken then goto p266 end
goto p123
::p310::
do
do
(registers)[13] = upvalues[5]["is_on_shot_antiaim"]
end

end
::p311::
do
do
top = 13;
(registers)[top] = registers[top]()
end

end
goto p163
::p314::
do
do
registers[15]["inverter"] = (registers[16])
end

end
::p315::
do
do
(registers)[15] = registers[8]
end

end
::p316::
do
do
top = (15)
registers[top]()
top = top - 1
end

end
goto p304
::p319::
do
do
registers[15] = (registers[1]["body_yaw"])
end

end
::p320::
do
do
registers[16] = (registers[7]["side"])
end

end
::p321::
do
do
registers[16] = (registers[16] == true)
end

end
::p322::
do
do
registers[15]["inverter"] = (registers[16])
end

end
::p323::
do
do
registers[15] = (registers[7]["side"])
end

end
::p324::
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
return registers[15]
end

end
::p325::
do
do
registers[6] = (registers[4]["def_yaw_delay"])
end

end
::p326::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p327::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p328::
do
do
(registers)[7] = upvalues[2]["clamp"]
end

end
::p329::
do
do
(registers)[8] = upvalues[3][154]
end

end
::p330::
do
do
(registers)[9] = registers[6]
end

end
::p331::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p242 end
goto p59
::p341::
do
do
(registers)[12] = environment["tostring"]
end

end
::p342::
do
do
(registers)[13] = registers[6]
end

end
::p343::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p344::
do
do
registers[7]["last_exploit_key_active"] = (registers[9])
end

end
::p345::
do
do
registers[7]["last_exploit_charged"] = (registers[10])
end

end
::p346::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p21
end
end
