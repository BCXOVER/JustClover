
-- Function f264; 157 recovered instruction blocks.
F.f264=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f264",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f264 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p322
::p2::
tick(2)
do
do
registers[8] = 1.06 + registers[8]
end

end
::p3::
do
do
(registers)[6] = registers[6] * registers[8]
end

end
goto p69
::p5::
tick(5)
do
do
registers[9] = (0)
end

end
goto p274
::p13::
tick(13)
do
do
(registers)[3] = registers[4]
end

end
::p14::
do
do
(registers)[4] = upvalues[0]["player_state"]
end

end
::p15::
do
do
(registers[4])[registers[1]] = registers[3]
end

end
goto p177
::p17::
tick(17)
do
do
registers[8] = (0)
end

end
goto p354
::p27::
tick(27)
do
do
(registers)[5] = upvalues[1][155]
end

end
::p28::
do
do
(registers)[6] = registers[4]
end

end
::p29::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p30::
do
do
(registers)[6] = upvalues[0]["get_overpredict_multiplier"]
end

end
::p31::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p32::
branch_taken=false
do
do
if not (not (registers[5] < 100)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p192 end
goto p140
::p34::
tick(34)
do
do
registers[5] = (registers[5] * 0.9)
end

end
goto p74
::p43::
tick(43)
do
do
(registers)[10] = registers[10] * registers[11]
end

end
::p44::
do
do
(registers)[9] = registers[9] + registers[10]
end

end
::p45::
branch_taken=false
do
do
if not (not (registers[9] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p332
::p47::
tick(47)
do
do
registers[3]["velocity"] = (registers[2])
end

end
::p48::
do
do
registers[5] = (0)
end

end
::p49::
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
::p54::
tick(54)
do
do
(registers)[11] = upvalues[1][162]
end

end
::p55::
do
do
registers[12] = (registers[3]["stable_ticks"])
end

end
::p56::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p327 end
goto p121
::p58::
tick(58)
do
do
registers[4] = {
}
end

end
::p59::
do
do
registers[4]["velocity"] = (registers[0])
end

end
::p60::
do
do
registers[4]["simtime"] = (registers[0])
end

end
::p61::
do
do
registers[4]["origin"] = (registers[0])
end

end
::p62::
do
do
registers[4]["penalty_until"] = 0
end

end
goto p239
::p64::
tick(64)
do
do
registers[6] = (registers[6] * 1.15)
end

end
goto p117
::p69::
tick(69)
do
do
registers[8] = (registers[3]["stable_ticks"])
end

end
::p70::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p354 end
goto p17
::p72::
tick(72)
branch_taken=false
do
do
if not (not (registers[4] < 1225)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p310 end
goto p47
::p74::
tick(74)
do
do
(registers)[6] = upvalues[2]["clamp"]
end

end
::p75::
do
do
(registers)[7] = registers[5]
end

end
::p76::
do
do
registers[8] = (0.45)
end

end
::p77::
do
do
registers[9] = (2)
end

end
goto p221
::p85::
tick(85)
do
do
registers[9] = (registers[9] * 0.08)
end

end
::p86::
do
do
registers[9] = 0.82 - registers[9]
end

end
::p87::
do
do
registers[10] = (0.52)
end

end
goto p246
::p89::
tick(89)
do
do
(registers)[11] = upvalues[1][151]
end

end
::p90::
do
do
registers[12] = (registers[3]["stable_ticks"])
end

end
::p91::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p219
::p93::
tick(93)
do
do
registers[8] = (registers[3]["boost_until"])
end

end
::p94::
do
do
(registers)[9] = upvalues[1][23]
end

end
::p95::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p96::
branch_taken=false
do
do
if not (registers[9] < registers[8]) then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p104
::p99::
tick(99)
do
do
(registers)[12] = (registers[12] - 2)
end

end
::p100::
do
do
registers[13] = (0)
end

end
::p101::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p102::
do
do
registers[3]["stable_ticks"] = (registers[11])
end

end
goto p159
::p104::
do
do
(registers)[8] = upvalues[1][162]
end

end
::p105::
do
do
registers[9] = (registers[3]["hit_streak"])
end

end
::p106::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p274 end
goto p5
::p108::
tick(108)
do
do
registers[4] = (0)
end

end
::p109::
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
::p115::
tick(115)
do
do
registers[5] = (registers[5] * 1.15)
end

end
goto p74
::p117::
tick(117)
do
do
registers[7] = (registers[3]["velocity"])
end

end
::p118::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p289
::p121::
do
do
registers[12] = (0)
end

end
goto p327
::p140::
do
do
registers[6] = (registers[6] * 0.65)
end

end
goto p117
::p145::
do
do
(registers)[10] = upvalues[1][161]
end

end
::p146::
do
do
(registers)[11] = upvalues[1][155]
end

end
::p147::
do
do
(registers)[12] = registers[8]
end

end
goto p298
::p155::
tick(155)
branch_taken=false
do
do
if not (not (registers[4] < 180)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p294 end
goto p34
::p159::
tick(159)
do
do
registers[3]["velocity"] = (registers[2])
end

end
::p160::
do
do
registers[8] = (registers[3]["penalty_until"])
end

end
::p161::
do
do
(registers)[9] = upvalues[1][23]
end

end
::p162::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p163::
branch_taken=false
do
do
if not (registers[9] < registers[8]) then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p215
::p166::
tick(166)
branch_taken=false
do
do
if not (240 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p64
::p168::
tick(168)
do
do
registers[4] = (1)
end

end
::p169::
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
::p170::
tick(170)
do
do
(registers)[8] = upvalues[2]["clamp"]
end

end
::p171::
do
do
(registers)[9] = registers[6]
end

end
::p172::
do
do
registers[10] = (0.45)
end

end
::p173::
do
do
registers[11] = (2.25)
end

end
::p174::
do
do
a = (8)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p175::
tick(175)
do
do
registers[5] = (registers[5] * 0.65)
end

end
goto p74
::p177::
tick(177)
do
do
registers[4] = (registers[2]["x"])
end

end
::p178::
do
do
registers[5] = (registers[2]["x"])
end

end
::p179::
do
do
(registers)[4] = registers[4] * registers[5]
end

end
::p180::
do
do
registers[5] = (registers[2]["y"])
end

end
::p181::
do
do
registers[6] = (registers[2]["y"])
end

end
::p182::
do
do
(registers)[5] = registers[5] * registers[6]
end

end
::p183::
do
do
(registers)[4] = registers[4] + registers[5]
end

end
goto p72
::p192::
branch_taken=false
do
do
if not (not (registers[5] < 180)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p166 end
goto p325
::p201::
tick(201)
do
do
registers[9] = (registers[2]["x"])
end

end
::p202::
do
do
registers[10] = (registers[7]["x"])
end

end
::p203::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p204::
do
do
registers[10] = (registers[2]["y"])
end

end
::p205::
do
do
registers[11] = (registers[7]["y"])
end

end
goto p43
::p212::
tick(212)
do
do
registers[3]["velocity"] = (registers[2])
end

end
::p213::
do
do
registers[5] = (1)
end

end
::p214::
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
::p215::
do
do
(registers)[8] = upvalues[2]["clamp"]
end

end
::p216::
do
do
registers[9] = (registers[3]["miss_streak"])
end

end
::p217::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p272
::p219::
do
do
registers[12] = (0)
end

end
goto p99
::p221::
do
do
a = (6)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p239::
do
do
registers[4]["boost_until"] = 0
end

end
::p240::
do
do
registers[4]["stable_ticks"] = 0
end

end
::p241::
do
do
registers[4]["hit_streak"] = 0
end

end
::p242::
do
do
registers[4]["miss_streak"] = 0
end

end
goto p13
::p244::
tick(244)
do
do
registers[6] = (registers[6] * 1.05)
end

end
goto p170
::p246::
do
do
registers[11] = (0.82)
end

end
::p247::
do
do
a = 8
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p248::
do
do
(registers)[6] = registers[6] * registers[8]
end

end
goto p93
::p250::
tick(250)
do
do
(registers)[4] = upvalues[0]["is_overpredict_enabled"]
end

end
::p251::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p252::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p314 end
goto p168
::p262::
tick(262)
do
do
(registers)[3] = upvalues[0]["player_state"]
end

end
::p263::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
::p264::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p177 end
goto p58
::p272::
do
do
registers[9] = (0)
end

end
goto p85
::p274::
do
do
registers[9] = (registers[9] * 0.025)
end

end
::p275::
do
do
registers[10] = (0.08)
end

end
::p276::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p2
::p289::
do
do
registers[8] = (registers[7]["x"])
end

end
::p290::
do
do
registers[9] = (registers[7]["x"])
end

end
::p291::
do
do
(registers)[8] = registers[8] * registers[9]
end

end
goto p356
::p294::
branch_taken=false
do
do
if not (240 < registers[4]) then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p115
::p298::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p299::
do
do
registers[11] = (registers[5] - registers[11])
end

end
::p300::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p301::
branch_taken=false
do
do
if not (not (registers[10] < 22)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p54
::p310::
do
do
(registers)[5] = upvalues[0]["is_overpredict_enabled"]
end

end
::p311::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p312::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p212
::p314::
do
do
(registers)[4] = upvalues[1][155]
end

end
::p315::
do
do
(registers)[5] = registers[3]
end

end
::p316::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p317::
do
do
(registers)[5] = upvalues[0]["get_overpredict_multiplier"]
end

end
::p318::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p319::
branch_taken=false
do
do
if not (not (registers[4] < 100)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p175
::p322::
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
::p323::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p262 end
goto p347
::p325::
do
do
registers[6] = (registers[6] * 0.9)
end

end
goto p117
::p327::
do
do
registers[12] = registers[12] + 1
end

end
::p328::
do
do
registers[13] = (12)
end

end
::p329::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p330::
do
do
registers[3]["stable_ticks"] = (registers[11])
end

end
goto p159
::p332::
do
do
registers[6] = (registers[6] * 0.55)
end

end
::p333::
do
do
registers[3]["stable_ticks"] = 0
end

end
goto p159
::p347::
do
do
registers[3] = (registers[2]["x"])
end

end
::p348::
do
do
registers[4] = (registers[2]["x"])
end

end
::p349::
do
do
(registers)[3] = registers[3] * registers[4]
end

end
::p350::
do
do
registers[4] = (registers[2]["y"])
end

end
::p351::
do
do
registers[5] = (registers[2]["y"])
end

end
goto p362
::p354::
branch_taken=false
do
do
if not (not (4 <= registers[8])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p170 end
goto p244
::p356::
do
do
registers[9] = (registers[7]["y"])
end

end
::p357::
do
do
registers[10] = (registers[7]["y"])
end

end
::p358::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p359::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
::p360::
branch_taken=false
do
do
if not (1225 < registers[8]) then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p201
::p362::
do
do
(registers)[4] = registers[4] * registers[5]
end

end
::p363::
do
do
(registers)[3] = registers[3] + registers[4]
end

end
::p364::
branch_taken=false
do
do
if not (not (registers[3] < 1225)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p250 end
goto p108
end
end
