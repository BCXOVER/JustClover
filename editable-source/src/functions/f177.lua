
-- Function f177; 196 recovered instruction blocks.
F.f177=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f177",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f177 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p397
::p3::
tick(3)
do
do
(registers)[6] = environment["tonumber"]
end

end
::p4::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p5::
do
do
registers[9] = (1)
end

end
::p6::
do
do
registers[10] = (2)
end

end
::p7::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p8::
do
do
registers[8] = (16)
end

end
goto p323
::p17::
tick(17)
do
do
(registers)[6] = environment["tonumber"]
end

end
::p18::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p19::
do
do
registers[9] = (1)
end

end
::p20::
do
do
registers[10] = (2)
end

end
::p21::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p387
::p24::
tick(24)
do
do
(registers)[5] = environment["type"]
end

end
::p25::
do
do
(registers)[6] = registers[1]
end

end
::p26::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p264
::p28::
tick(28)
do
do
(registers)[5] = environment["tonumber"]
end

end
::p29::
do
do
registers[6] = (registers[1][1])
end

end
::p30::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p31::
do
do
(registers)[7] = environment["tonumber"]
end

end
::p32::
do
do
registers[8] = (registers[1][2])
end

end
goto p71
::p35::
tick(35)
do
do
registers[7] = registers[3] == registers[0]
end

end
goto p90
::p37::
tick(37)
do
do
registers[5] = new_frame(4)
end

end
::p38::
do
do
(registers)[6] = registers[1]
end

end
::p39::
do
do
(registers)[7] = registers[2]
end

end
::p40::
do
do
(registers)[8] = registers[3]
end

end
goto p232
::p56::
tick(56)
do
do
registers[7] = registers[3] == registers[0]
end

end
goto p210
::p71::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p72::
do
do
(registers)[2] = registers[7]
end

end
::p73::
do
do
(registers)[7] = environment["tonumber"]
end

end
goto p273
::p75::
tick(75)
do
do
(registers)[2] = registers[6]
end

end
::p76::
do
do
(registers)[6] = environment["tonumber"]
end

end
::p77::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p78::
do
do
registers[9] = (5)
end

end
::p79::
do
do
registers[10] = (6)
end

end
::p80::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p81::
do
do
registers[8] = (16)
end

end
::p82::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p405
::p84::
tick(84)
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p85::
do
do
a = (registers)
z = 2
end

end
::p86::
do
do
q = registers
m = 7
q = (q[m])
end

end
::p87::
do
do
(a)[z] = q
end

end
::p88::
do
do
(registers)[7] = environment["tonumber"]
end

end
goto p154
::p90::
tick(90)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p306 end
goto p277
::p92::
tick(92)
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p93::
do
do
(registers)[6] = registers[5]
end

end
::p94::
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
::p95::
tick(95)
do
do
registers[5]["g"] = (registers[6])
end

end
::p96::
do
do
(registers)[6] = upvalues[0]["clamp"]
end

end
::p97::
do
do
a = (registers)
end

end
::p98::
do
do
z = (7)
q = (environment)
end

end
::p99::
do
do
m = "tonumber"
q = (q[m])
a[z] = q
end

end
::p100::
do
do
(registers)[8] = registers[3]
end

end
::p101::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p102::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p297 end
::p103::
do
do
registers[7] = (registers[2] ~= registers[0])
end

end
::p104::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p297 end
goto p185
::p106::
tick(106)
do
do
(registers)[5] = environment["error"]
end

end
::p107::
do
do
registers[6] = ("Table convert color error, report this and wait fix!")
end

end
::p108::
do
do
registers[7] = (2)
end

end
::p109::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p37
::p118::
tick(118)
do
do
registers[7] = (registers[2] ~= registers[0])
end

end
::p119::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p210 end
goto p56
::p137::
tick(137)
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p138::
do
do
(registers)[3] = registers[6]
end

end
::p139::
do
do
registers[4] = (255)
end

end
goto p37
::p152::
tick(152)
do
do
registers[7] = (255)
end

end
goto p227
::p154::
do
do
registers[8] = (registers[1][3])
end

end
::p155::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p156::
do
do
(registers)[3] = registers[7]
end

end
::p157::
do
do
(registers)[7] = environment["tonumber"]
end

end
goto p364
::p159::
tick(159)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p181 end
goto p253
::p161::
tick(161)
do
do
registers[8] = (0)
end

end
::p162::
do
do
registers[9] = (255)
end

end
::p163::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p349
::p181::
tick(181)
do
do
registers[8] = (0)
end

end
::p182::
do
do
registers[9] = (255)
end

end
::p183::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p95
::p185::
do
do
registers[7] = (registers[5]["r"])
end

end
goto p297
::p188::
tick(188)
do
do
(registers)[5] = environment["tonumber"]
end

end
::p189::
do
do
registers[6] = (registers[1][1])
end

end
::p190::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p191::
do
do
(registers)[7] = environment["tonumber"]
end

end
::p192::
do
do
registers[8] = (registers[1][2])
end

end
goto p84
::p210::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p418
::p213::
tick(213)
do
do
registers[7] = (255)
end

end
goto p161
::p215::
tick(215)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p118
::p217::
tick(217)
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p37
::p227::
tick(227)
do
do
registers[8] = (0)
end

end
::p228::
do
do
registers[9] = (255)
end

end
::p229::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p230::
do
do
registers[5]["a"] = (registers[6])
end

end
goto p300
::p232::
do
do
(registers)[9] = registers[4]
end

end
::p233::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p234::
do
do
(registers)[6] = upvalues[0]["clamp"]
end

end
::p235::
do
do
(registers)[7] = environment["tonumber"]
end

end
goto p282
::p237::
tick(237)
do
do
registers[4] = (255)
end

end
::p238::
do
do
(registers)[1] = registers[5]
end

end
goto p37
::p247::
tick(247)
do
do
(registers)[7] = environment["tonumber"]
end

end
::p248::
do
do
(registers)[8] = registers[2]
end

end
::p249::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p215
::p253::
do
do
registers[7] = (255)
end

end
goto p181
::p264::
branch_taken=false
do
do
if registers[5] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p409
::p266::
tick(266)
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p267::
do
do
registers[6] = (#registers[5])
end

end
::p268::
branch_taken=false
do
do
if registers[6] ~= 6 then
    branch_taken=true
end
end

end
if branch_taken then goto p375 end
goto p3
::p270::
tick(270)
do
do
registers[5] = (#registers[1])
end

end
::p271::
branch_taken=false
do
do
if registers[5] ~= 4 then
    branch_taken=true
end
end

end
if branch_taken then goto p106 end
goto p188
::p273::
do
do
registers[8] = (registers[1][3])
end

end
::p274::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p275::
do
do
(registers)[3] = registers[7]
end

end
goto p237
::p277::
do
do
(registers)[7] = registers[2]
end

end
goto p306
::p282::
do
do
(registers)[8] = registers[1]
end

end
::p283::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p284::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
goto p213
::p286::
tick(286)
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p287::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p306 end
goto p420
::p289::
tick(289)
do
do
(registers)[6] = environment["error"]
end

end
::p290::
do
do
registers[7] = ("HEX error, report this and wait fix!")
end

end
::p291::
do
do
registers[8] = (2)
end

end
goto p217
::p293::
tick(293)
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p294::
do
do
registers[8] = (16)
end

end
::p295::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p75
::p297::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p356 end
goto p308
::p300::
do
do
(registers)[6] = environment["setmetatable"]
end

end
::p301::
do
do
(registers)[7] = registers[5]
end

end
::p302::
do
do
registers[8] = {
}
end

end
::p303::
do
do
registers[9] = (upvalues[1])
end

end
::p304::
do
do
registers[8]["__index"] = (registers[9])
end

end
goto p92
::p306::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p227 end
goto p152
::p308::
do
do
registers[7] = (255)
end

end
goto p356
::p316::
tick(316)
do
do
registers[9] = (7)
end

end
::p317::
do
do
registers[10] = (8)
end

end
::p318::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p319::
do
do
registers[8] = (16)
end

end
::p320::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p354
::p323::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p324::
do
do
(registers)[1] = registers[6]
end

end
::p325::
do
do
(registers)[6] = environment["tonumber"]
end

end
::p326::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p327::
do
do
registers[9] = (3)
end

end
goto p401
::p331::
tick(331)
do
do
registers[9] = (5)
end

end
::p332::
do
do
registers[10] = (6)
end

end
::p333::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p334::
do
do
registers[8] = (16)
end

end
goto p137
::p336::
tick(336)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p337::
branch_taken=false
do
do
if registers[5] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p412
::p339::
tick(339)
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p340::
do
do
a = (registers)
z = 2
end

end
::p341::
do
do
q = registers
m = 6
q = (q[m])
end

end
::p342::
do
do
(a)[z] = q
end

end
::p343::
do
do
(registers)[6] = environment["tonumber"]
end

end
::p344::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
goto p331
::p347::
tick(347)
do
do
registers[7] = (registers[5]["r"])
end

end
goto p416
::p349::
do
do
registers[5]["r"] = (registers[6])
end

end
::p350::
do
do
(registers)[6] = upvalues[0]["clamp"]
end

end
::p351::
do
do
registers[7] = registers[3] == registers[0]
end

end
::p352::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p416 end
goto p347
::p354::
do
do
(registers)[4] = registers[6]
end

end
goto p37
::p356::
do
do
registers[8] = (0)
end

end
::p357::
do
do
registers[9] = (255)
end

end
::p358::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p359::
do
do
registers[5]["b"] = (registers[6])
end

end
::p360::
do
do
(registers)[6] = upvalues[0]["clamp"]
end

end
::p361::
do
do
(registers)[7] = environment["tonumber"]
end

end
::p362::
do
do
(registers)[8] = registers[4]
end

end
goto p286
::p364::
do
do
registers[8] = (registers[1][4])
end

end
::p365::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p366::
do
do
(registers)[4] = registers[7]
end

end
::p367::
do
do
(registers)[1] = registers[5]
end

end
goto p37
::p375::
do
do
registers[6] = (#registers[5])
end

end
::p376::
branch_taken=false
do
do
if registers[6] ~= 8 then
    branch_taken=true
end
end

end
if branch_taken then goto p289 end
goto p17
::p381::
tick(381)
do
do
(registers)[6] = environment["tonumber"]
end

end
::p382::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p383::
do
do
a = (registers)
z = 9
end

end
::p384::
do
do
q = 3;
(a)[z] = (q)
end

end
::p385::
do
do
registers[10] = (4)
end

end
goto p293
::p387::
do
do
registers[8] = (16)
end

end
::p388::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p389::
do
do
(registers)[1] = registers[6]
end

end
goto p381
::p397::
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
::p398::
do
do
(registers)[5] = environment["type"]
end

end
::p399::
do
do
(registers)[6] = registers[1]
end

end
goto p336
::p401::
do
do
registers[10] = (4)
end

end
::p402::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p403::
do
do
registers[8] = (16)
end

end
goto p339
::p405::
do
do
(registers)[3] = registers[6]
end

end
::p406::
do
do
(registers)[6] = environment["tonumber"]
end

end
::p407::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
goto p316
::p409::
do
do
registers[5] = (#registers[1])
end

end
::p410::
branch_taken=false
do
do
if registers[5] ~= 3 then
    branch_taken=true
end
end

end
if branch_taken then goto p270 end
goto p28
::p412::
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p413::
do
do
registers[7] = ("#")
end

end
::p414::
do
do
registers[8] = ("")
end

end
goto p266
::p416::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p215 end
goto p247
::p418::
do
do
registers[7] = (registers[5]["r"])
end

end
goto p159
::p420::
do
do
registers[7] = (registers[2] ~= registers[0])
end

end
::p421::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p35
end
end
