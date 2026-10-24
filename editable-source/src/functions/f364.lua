
-- Function f364; 186 recovered instruction blocks.
F.f364=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f364",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f364 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p95
::p2::
tick(2)
do
do
registers[12] = (registers[10]["last_packet"])
end

end
::p3::
do
do
a = upvalues[4];
(registers)[13] = (a[2][a[1]]["packets"])
end

end
::p4::
do
do
registers[12] = (registers[12] ~= registers[13])
end

end
::p5::
do
do
a = upvalues[4];
(registers)[13] = (a[2][a[1]]["packets"])
end

end
::p6::
do
do
registers[10]["last_packet"] = (registers[13])
end

end
::p7::
branch_taken=false
do
do
if not (0 < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p212
::p15::
tick(15)
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p35
::p23::
tick(23)
do
do
(registers)[13] = registers[6]
end

end
::p24::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p25::
do
do
(registers)[13] = environment["tostring"]
end

end
::p26::
do
do
(registers)[14] = registers[7]
end

end
::p27::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p28::
do
do
(registers)[14] = environment["tostring"]
end

end
::p29::
do
do
(registers)[15] = registers[8]
end

end
goto p260
::p31::
tick(31)
do
do
registers[13] = (0)
end

end
goto p38
::p33::
tick(33)
do
do
registers[15] = (0)
end

end
goto p176
::p35::
branch_taken=false
do
do
if not (0 < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p328 end
goto p61
::p38::
tick(38)
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p289 end
goto p68
::p40::
tick(40)
do
do
registers[4]["5-Way"] = (registers[5])
end

end
::p41::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
::p42::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p235
::p44::
tick(44)
do
do
registers[13] = (registers[10]["way_index"])
end

end
::p45::
branch_taken=false
do
do
if registers[13] < 1 then
    branch_taken=true
end
end

end
if branch_taken then goto p309 end
goto p128
::p47::
tick(47)
do
do
registers[13] = (registers[10]["cycle_ticks"])
end

end
::p48::
do
do
registers[13] = registers[13] + 1
end

end
::p49::
do
do
registers[10]["cycle_ticks"] = (registers[13])
end

end
::p51::
do
do
registers[13] = (registers[10]["cycle_ticks"])
end

end
::p52::
branch_taken=false
do
do
if not (not (registers[6] <= registers[13])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p114 end
goto p372
::p61::
do
do
registers[13] = (registers[10]["delay_active"])
end

end
::p62::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p133
::p64::
tick(64)
do
do
a = 14
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p65::
do
do
registers[10]["last_add"] = (registers[14])
end

end
::p66::
do
do
(registers)[15] = registers[14]
end

end
::p67::
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
::p68::
do
do
(registers)[13] = upvalues[1]["clamp"]
end

end
::p69::
do
do
registers[14] = (registers[10]["last_add"])
end

end
::p70::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p119
::p95::
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
::p96::
do
do
registers[3] = (registers[2]["meta_mode"])
end

end
::p97::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p98::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p99::
do
do
registers[4] = {
}
end

end
::p100::
do
do
registers[5] = new_frame(2)
end

end
::p101::
do
do
registers[6] = (-0.5)
end

end
::p102::
do
do
registers[7] = (0.5)
end

end
::p103::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p104::
do
do
registers[4]["2-Way"] = (registers[5])
end

end
::p105::
do
do
registers[5] = new_frame(3)
end

end
::p106::
do
do
registers[6] = (-0.5)
end

end
::p107::
do
do
registers[7] = (0)
end

end
::p108::
do
do
registers[8] = (0.5)
end

end
goto p243
::p110::
tick(110)
do
do
registers[7] = (0)
end

end
goto p332
::p114::
tick(114)
do
do
registers[13] = (registers[10]["way_index"])
end

end
::p115::
do
do
registers[13] = registers[13] + 1
end

end
::p116::
do
do
registers[10]["way_index"] = (registers[13])
end

end
::p117::
do
do
registers[13] = (registers[10]["way_index"])
end

end
goto p341
::p119::
do
do
registers[14] = (0)
end

end
goto p226
::p121::
tick(121)
do
do
registers[10]["way_index"] = 1
end

end
goto p44
::p123::
tick(123)
do
do
registers[5] = (registers[2]["meta_offset"])
end

end
::p124::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p125::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p126::
do
do
(registers)[6] = upvalues[0][154]
end

end
goto p304
::p128::
do
do
registers[14] = (#registers[4])
end

end
::p129::
branch_taken=false
do
do
if not (registers[14] < registers[13]) then
    branch_taken=true
end
end

end
if branch_taken then goto p337 end
goto p309
::p133::
tick(133)
do
do
registers[13] = (registers[10]["delay_ticks"])
end

end
::p134::
do
do
registers[13] = registers[13] + 1
end

end
::p135::
do
do
registers[10]["delay_ticks"] = (registers[13])
end

end
::p136::
do
do
registers[13] = (registers[10]["delay_ticks"])
end

end
::p137::
branch_taken=false
do
do
if not (not (registers[13] <= registers[7])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p171 end
goto p352
::p139::
tick(139)
do
do
registers[10]["last_packet"] = (registers[0])
end

end
goto p2
::p171::
do
do
registers[10]["delay_active"] = false
end

end
::p172::
do
do
registers[10]["delay_ticks"] = 0
end

end
::p173::
do
do
registers[10]["cycle_ticks"] = 0
end

end
goto p114
::p176::
tick(176)
do
do
(registers)[15] = registers[5] * registers[15]
end

end
::p177::
do
do
registers[16] = (-180)
end

end
::p178::
do
do
registers[17] = (180)
end

end
goto p64
::p181::
tick(181)
do
do
registers[16] = (200)
end

end
::p182::
do
do
a = 13
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p183::
do
do
(registers)[6] = registers[13]
end

end
goto p15
::p191::
tick(191)
do
do
registers[10]["last_add"] = (registers[13])
end

end
::p192::
do
do
registers[13] = (registers[10]["last_add"])
end

end
::p193::
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
::p194::
tick(194)
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p195::
do
do
registers[9] = (5)
end

end
::p196::
do
do
registers[10] = (30)
end

end
::p197::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p218
::p212::
do
do
(registers)[13] = upvalues[1]["clamp"]
end

end
::p213::
do
do
(registers)[14] = registers[6]
end

end
::p214::
do
do
registers[15] = (5)
end

end
goto p181
::p216::
tick(216)
do
do
(registers)[9] = upvalues[3][1]
end

end
goto p281
::p218::
do
do
registers[8] = (registers[2]["meta_safe_yaw"])
end

end
::p219::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p220::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p272
::p222::
tick(222)
do
do
registers[10]["delay_ticks"] = 0
end

end
::p223::
do
do
registers[10]["delay_active"] = false
end

end
::p224::
do
do
registers[10]["last_add"] = 0
end

end
goto p139
::p226::
do
do
registers[15] = (-180)
end

end
::p227::
do
do
registers[16] = (180)
end

end
::p228::
do
do
a = 13
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p289
::p230::
tick(230)
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p231::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p232::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p194 end
goto p241
::p235::
do
do
registers[4] = new_frame(2)
end

end
::p236::
do
do
registers[5] = (-0.5)
end

end
::p237::
do
do
registers[6] = (0.5)
end

end
::p238::
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p123
::p241::
do
do
registers[9] = (15)
end

end
goto p194
::p243::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p244::
do
do
registers[4]["3-Way"] = (registers[5])
end

end
::p245::
do
do
registers[5] = new_frame(5)
end

end
goto p297
::p248::
tick(248)
do
do
(registers)[13] = upvalues[1]["clamp"]
end

end
::p249::
do
do
registers[14] = (registers[10]["last_add"])
end

end
::p250::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p293 end
goto p344
::p260::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p261::
do
do
registers[14] = "|" .. registers[14]
end

end
::p262::
do
do
registers[13] = (registers[13] .. registers[14])
end

end
::p263::
do
do
registers[13] = "|" .. registers[13]
end

end
::p264::
do
do
registers[12] = (registers[12] .. registers[13])
end

end
::p265::
do
do
registers[12] = "|" .. registers[12]
end

end
::p266::
do
do
registers[11] = (registers[11] .. registers[12])
end

end
::p267::
do
do
registers[11] = "|" .. registers[11]
end

end
::p268::
do
do
registers[11] = (registers[3] .. registers[11])
end

end
::p269::
do
do
registers[12] = (registers[10]["signature"])
end

end
::p270::
branch_taken=false
do
do
if registers[12] == registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p285
::p272::
do
do
a = upvalues[2];
(registers)[9] = (a[2][a[1]]["current"])
end

end
::p273::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p281 end
goto p216
::p281::
do
do
registers[10] = (registers[1]["hidden_modifier_meta_states"])
end

end
::p282::
do
do
(registers)[10] = registers[10][registers[9]]
end

end
::p283::
branch_taken=false
do
do
if registers[10] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p323 end
goto p313
::p285::
do
do
registers[10]["signature"] = (registers[11])
end

end
::p286::
do
do
registers[10]["way_index"] = 0
end

end
::p287::
do
do
registers[10]["cycle_ticks"] = 0
end

end
goto p222
::p289::
do
do
registers[10]["last_add"] = (registers[13])
end

end
::p290::
do
do
registers[13] = (registers[10]["last_add"])
end

end
::p291::
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
::p293::
tick(293)
do
do
registers[15] = (-180)
end

end
::p294::
do
do
registers[16] = (180)
end

end
::p295::
do
do
a = 13
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p191
::p297::
do
do
registers[6] = (-0.75)
end

end
::p298::
do
do
registers[7] = (1)
end

end
::p299::
do
do
registers[8] = (0)
end

end
::p300::
do
do
registers[9] = (0.4)
end

end
::p301::
do
do
registers[10] = (-0.25)
end

end
::p302::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 5, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p40
::p304::
do
do
registers[7] = (registers[2]["meta_delay_cycle"])
end

end
::p305::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p306::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p307::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p332 end
goto p110
::p309::
do
do
registers[13] = (1)
end

end
::p310::
do
do
registers[10]["way_index"] = (registers[13])
end

end
goto p337
::p313::
do
do
registers[11] = {
}
end

end
::p314::
do
do
registers[11]["signature"] = (registers[0])
end

end
::p315::
do
do
registers[11]["way_index"] = 0
end

end
::p316::
do
do
registers[11]["cycle_ticks"] = 0
end

end
::p317::
do
do
registers[11]["delay_ticks"] = 0
end

end
::p318::
do
do
registers[11]["delay_active"] = false
end

end
goto p347
::p321::
tick(321)
do
do
registers[13] = (0)
end

end
goto p355
::p323::
tick(323)
do
do
(registers)[11] = environment["tostring"]
end

end
::p324::
do
do
(registers)[12] = registers[5]
end

end
::p325::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p326::
do
do
(registers)[12] = environment["tostring"]
end

end
goto p23
::p328::
do
do
registers[10]["delay_active"] = false
end

end
::p329::
do
do
registers[10]["delay_ticks"] = 0
end

end
::p330::
do
do
registers[10]["cycle_ticks"] = 0
end

end
goto p114
::p332::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p333::
do
do
(registers)[7] = upvalues[1]["clamp"]
end

end
::p334::
do
do
(registers)[8] = upvalues[0][154]
end

end
::p335::
do
do
registers[9] = (registers[2]["meta_delay_time"])
end

end
goto p230
::p337::
do
do
(registers)[14] = upvalues[1]["clamp"]
end

end
::p338::
do
do
(registers)[15] = registers[4][registers[13]]
end

end
::p339::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p33
::p341::
do
do
registers[14] = (#registers[4])
end

end
::p342::
branch_taken=false
do
do
if not (registers[14] < registers[13]) then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p121
::p344::
do
do
registers[14] = (0)
end

end
goto p293
::p347::
do
do
registers[11]["last_add"] = 0
end

end
::p348::
do
do
registers[11]["last_packet"] = (registers[0])
end

end
::p349::
do
do
(registers)[10] = registers[11]
end

end
::p350::
do
do
registers[11] = (registers[1]["hidden_modifier_meta_states"])
end

end
goto p377
::p352::
do
do
(registers)[13] = registers[8]
end

end
::p353::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p31
::p355::
tick(355)
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p191 end
goto p248
::p372::
do
do
registers[10]["delay_active"] = true
end

end
::p373::
do
do
registers[10]["delay_ticks"] = 0
end

end
::p374::
do
do
(registers)[13] = registers[8]
end

end
::p375::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p355 end
goto p321
::p377::
do
do
(registers[11])[registers[9]] = registers[10]
end

end
goto p323
end
end
