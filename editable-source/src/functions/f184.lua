
-- Function f184; 171 recovered instruction blocks.
F.f184=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f184",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f184 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p36
::p2::
tick(2)
do
do
registers[18] = (0.92)
end

end
::p3::
do
do
a = 15
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p4::
do
do
(registers)[14] = registers[14] * registers[15]
end

end
goto p137
::p6::
tick(6)
do
do
(registers)[13] = upvalues[2][78]
end

end
::p7::
do
do
(registers)[14] = registers[1]
end

end
::p8::
do
do
registers[15] = (registers[2]["x"])
end

end
::p9::
do
do
registers[16] = (registers[2]["y"])
end

end
goto p250
::p36::
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
::p37::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p86 end
goto p53
::p39::
tick(39)
do
do
top = 17;
(registers)[top] = registers[top]()
end

end
::p40::
do
do
registers[17] = registers[17] + 2
end

end
::p41::
do
do
a = 15
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
::p42::
do
do
a = 13
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p43::
do
do
(registers)[11] = registers[13]
end

end
goto p226
::p45::
tick(45)
do
do
registers[14] = (registers[12] - registers[2])
end

end
::p46::
do
do
(registers)[15] = upvalues[4]["clamp"]
end

end
::p47::
do
do
registers[16] = (registers[13] * 0.84)
end

end
::p48::
do
do
registers[17] = (0)
end

end
goto p2
::p51::
tick(51)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p290 end
goto p92
::p53::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p86
::p63::
tick(63)
do
do
(registers)[14] = environment["type"]
end

end
::p64::
do
do
(registers)[15] = registers[13]
end

end
::p65::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p66::
branch_taken=false
do
do
if registers[14] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p259 end
goto p164
::p68::
tick(68)
do
do
(registers)[5] = registers[2]
end

end
::p69::
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
::p70::
do
do
registers[4] = (upvalues[0])
end

end
::p71::
do
do
(registers)[5] = registers[1]
end

end
::p72::
do
do
registers[6] = ("m_vecVelocity")
end

end
::p73::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p74::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p68
::p76::
tick(76)
do
do
registers[11] = (registers[5]["velocity"])
end

end
::p77::
do
do
registers[11] = (registers[4] - registers[11])
end

end
::p78::
do
do
registers[9] = (registers[11] / registers[10])
end

end
goto p168
::p80::
tick(80)
do
do
registers[7] = (registers[7]["get_simtime"])
end

end
::p81::
do
do
(registers)[8] = registers[1]
end

end
::p82::
do
do
a = 7
z = (2)
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
::p83::
do
do
(registers)[9] = nil
end

end
goto p147
::p86::
do
do
(registers)[4] = registers[2]
end

end
::p87::
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
::p89::
tick(89)
do
do
registers[5]["simtime"] = (registers[7])
end

end
::p90::
branch_taken=false
do
do
if registers[12] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p206 end
goto p241
::p92::
do
do
registers[11] = (800)
end

end
goto p290
::p94::
tick(94)
branch_taken=false
do
do
if not (0 < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p219
::p96::
tick(96)
do
do
(registers)[11] = registers[3]
end

end
::p97::
do
do
(registers)[12] = environment["type"]
end

end
::p98::
do
do
(registers)[13] = registers[7]
end

end
goto p350
::p101::
tick(101)
do
do
registers[13] = (registers[5]["simtime"])
end

end
::p102::
branch_taken=false
do
do
if not (registers[13] < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
::p110::
do
do
registers[10] = (registers[5]["simtime"])
end

end
::p111::
do
do
registers[10] = (registers[7] - registers[10])
end

end
::p112::
branch_taken=false
do
do
if not (0 < registers[10]) then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p269
::p119::
tick(119)
do
do
registers[13] = (1)
end

end
::p120::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p121::
branch_taken=false
do
do
if registers[11] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p195
::p123::
tick(123)
do
do
(registers)[14] = environment["type"]
end

end
::p124::
do
do
(registers)[15] = registers[6]
end

end
::p125::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p126::
branch_taken=false
do
do
if registers[14] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p94
::p128::
do
do
(registers)[5] = upvalues[1]["player_state"]
end

end
::p129::
do
do
(registers)[5] = registers[5][registers[1]]
end

end
::p130::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p160 end
goto p277
::p132::
tick(132)
do
do
(registers)[13] = environment["type"]
end

end
::p133::
do
do
(registers)[14] = registers[8]
end

end
::p134::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p135::
branch_taken=false
do
do
if registers[13] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p123
::p137::
do
do
(registers)[14] = registers[2] + registers[14]
end

end
::p138::
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
::p147::
do
do
registers[10] = (registers[5]["velocity"])
end

end
::p148::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p303
::p160::
tick(160)
do
do
(registers)[6] = upvalues[2][28]
end

end
::p161::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p162::
do
do
(registers)[7] = environment["entity"]
end

end
goto p80
::p164::
branch_taken=false
do
do
if not (registers[13] <= 0.99) then
    branch_taken=true
end
end

end
if branch_taken then goto p259 end
goto p208
::p168::
tick(168)
do
do
(registers)[10] = upvalues[2][47]
end

end
::p169::
do
do
(registers)[11] = registers[1]
end

end
::p170::
do
do
registers[12] = ("m_fFlags")
end

end
::p171::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p172::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p286 end
goto p243
::p184::
tick(184)
do
do
(registers)[17] = registers[9]
end

end
::p185::
do
do
a = 12
top = a + 6 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p186::
do
do
registers[5]["origin"] = (registers[2])
end

end
goto p89
::p189::
tick(189)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p200
::p191::
tick(191)
do
do
registers[12] = (upvalues[3])
end

end
::p192::
do
do
registers[13] = (registers[9]["x"])
end

end
::p193::
do
do
registers[14] = (registers[9]["y"])
end

end
goto p210
::p195::
do
do
(registers)[12] = environment["type"]
end

end
::p196::
do
do
(registers)[13] = registers[6]
end

end
::p197::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p198::
branch_taken=false
do
do
if registers[12] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p294
::p200::
do
do
(registers)[11] = environment["cvar"]
end

end
::p201::
do
do
registers[11] = (registers[11]["sv_gravity"])
end

end
::p202::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
::p203::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p51
::p206::
tick(206)
do
do
(registers)[13] = registers[12]
end

end
::p207::
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
::p208::
branch_taken=false
do
do
if not (0.18 < registers[13]) then
    branch_taken=true
end
end

end
if branch_taken then goto p292 end
goto p45
::p210::
do
do
registers[15] = (registers[9]["z"])
end

end
::p211::
do
do
registers[16] = (registers[11] * 0.35)
end

end
::p212::
do
do
registers[15] = (registers[15] - registers[16])
end

end
::p213::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p328
::p215::
tick(215)
do
do
(registers)[13] = upvalues[2][151]
end

end
::p216::
do
do
(registers)[14] = registers[11]
end

end
::p217::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p296 end
goto p300
::p219::
do
do
(registers)[12] = upvalues[4]["clamp"]
end

end
::p220::
do
do
(registers)[13] = upvalues[2][154]
end

end
::p221::
do
do
registers[14] = (registers[7] - registers[8])
end

end
::p222::
do
do
registers[14] = (registers[14] / registers[6])
end

end
::p223::
do
do
registers[14] = registers[14] + 0.5
end

end
::p224::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p324
::p226::
tick(226)
do
do
(registers)[12] = upvalues[1]["predict_vector"]
end

end
::p227::
do
do
(registers)[13] = registers[2]
end

end
::p228::
do
do
(registers)[14] = registers[4]
end

end
::p229::
do
do
(registers)[15] = registers[11]
end

end
::p230::
do
do
(registers)[16] = registers[1]
end

end
goto p184
::p241::
branch_taken=false
do
do
if registers[12] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p206
::p243::
do
do
registers[10] = (0)
end

end
goto p286
::p245::
tick(245)
do
do
(registers)[11] = environment["cvar"]
end

end
::p246::
do
do
registers[11] = (registers[11]["sv_gravity"])
end

end
::p247::
do
do
registers[11] = (registers[11] ~= registers[0])
end

end
goto p189
::p250::
do
do
registers[17] = (registers[2]["z"])
end

end
::p251::
do
do
registers[18] = (registers[12]["x"])
end

end
::p252::
do
do
registers[19] = (registers[12]["y"])
end

end
::p253::
do
do
registers[20] = (registers[12]["z"])
end

end
::p254::
do
do
a = 13
top = a + 8 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p63
::p257::
tick(257)
branch_taken=false
do
do
if not (1 < registers[12]) then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p215
::p259::
do
do
(registers)[14] = registers[12]
end

end
::p260::
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
::p269::
branch_taken=false
do
do
if not (not (registers[10] < 0.35)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p76
::p271::
tick(271)
do
do
registers[12] = (upvalues[3])
end

end
::p272::
do
do
registers[13] = (0)
end

end
::p273::
do
do
registers[14] = (0)
end

end
::p274::
do
do
registers[15] = -registers[11]
end

end
::p275::
do
do
registers[15] = (registers[15] * 0.45)
end

end
goto p283
::p277::
do
do
registers[6] = {
}
end

end
::p278::
do
do
registers[6]["velocity"] = (registers[0])
end

end
::p279::
do
do
registers[6]["simtime"] = (registers[0])
end

end
goto p316
::p283::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p284::
do
do
(registers)[9] = registers[12]
end

end
goto p96
::p286::
do
do
(registers)[11] = environment["bit"]
end

end
::p287::
do
do
registers[11] = (registers[11]["band"])
end

end
::p288::
do
do
(registers)[12] = registers[10]
end

end
goto p119
::p290::
branch_taken=false
do
do
if registers[9] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p191 end
goto p271
::p292::
do
do
(registers)[14] = registers[2]
end

end
::p293::
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
::p294::
branch_taken=false
do
do
if not (0 < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p245
::p296::
tick(296)
do
do
(registers)[15] = upvalues[2][162]
end

end
::p297::
do
do
registers[16] = registers[12] + 1
end

end
::p298::
do
do
(registers)[17] = upvalues[1]["get_ticks"]
end

end
goto p39
::p300::
do
do
registers[14] = (0)
end

end
goto p296
::p303::
do
do
registers[11] = (registers[5]["simtime"])
end

end
::p304::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p338
::p310::
tick(310)
do
do
(registers)[5] = registers[6]
end

end
::p311::
do
do
(registers)[6] = upvalues[1]["player_state"]
end

end
::p312::
do
do
(registers[6])[registers[1]] = registers[5]
end

end
goto p160
::p316::
do
do
registers[6]["origin"] = (registers[0])
end

end
::p317::
do
do
registers[6]["penalty_until"] = 0
end

end
::p318::
do
do
registers[6]["boost_until"] = 0
end

end
::p319::
do
do
registers[6]["stable_ticks"] = 0
end

end
::p320::
do
do
registers[6]["hit_streak"] = 0
end

end
::p321::
do
do
registers[6]["miss_streak"] = 0
end

end
goto p310
::p324::
do
do
registers[14] = (0)
end

end
::p325::
do
do
registers[15] = (7)
end

end
::p326::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p257
::p328::
do
do
(registers)[9] = registers[12]
end

end
goto p96
::p338::
do
do
(registers)[12] = environment["type"]
end

end
::p339::
do
do
(registers)[13] = registers[7]
end

end
::p340::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p341::
branch_taken=false
do
do
if registers[12] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p101
::p350::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p351::
branch_taken=false
do
do
if registers[12] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p132
end
end
