
-- Function f137; 283 recovered instruction blocks.
F.f137=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f137",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f137 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p475
::p10::
tick(10)
branch_taken=false
do
do
a = (11)
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
if branch_taken then goto p97 end
goto p256
::p13::
tick(13)
do
do
registers[9] = (registers[7]["type"])
end

end
::p14::
branch_taken=false
do
do
if registers[9] ~= "button" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p173
::p22::
tick(22)
do
do
registers[8] = (false)
end

end
goto p79
::p24::
tick(24)
do
do
registers[8] = (registers[7]["type"])
end

end
::p25::
branch_taken=false
do
do
if registers[8] ~= "hotkey" then
    branch_taken=true
end
end

end
if branch_taken then goto p369 end
goto p451
::p27::
tick(27)
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p28::
branch_taken=false
do
do
if registers[10] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p384 end
goto p189
::p32::
tick(32)
branch_taken=false
do
do
if registers[8] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p310 end
goto p315
::p34::
tick(34)
do
do
(registers)[8] = nil
end

end
goto p252
::p36::
tick(36)
do
do
registers[11] = {
}
end

end
::p37::
do
do
(registers)[9] = registers[11]
end

end
::p38::
do
do
registers[11] = (1)
end

end
goto p464
::p40::
tick(40)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[11 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p424 end
goto p187
::p42::
tick(42)
do
do
a = (9)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p43::
do
do
registers[11] = (upvalues[0])
end

end
::p44::
do
do
(registers)[12] = registers[8]
end

end
::p45::
do
do
a = 11
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
::p46::
do
do
a = 9;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p218
::p48::
tick(48)
do
do
(registers)[9] = environment["type"]
end

end
::p49::
do
do
(registers)[10] = registers[6]
end

end
::p50::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if registers[9] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p358
::p53::
tick(53)
branch_taken=false
do
do
if registers[9] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p102
::p55::
tick(55)
do
do
a = (9)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p56::
do
do
(registers)[11] = registers[8]
end

end
::p57::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p60::
tick(60)
branch_taken=false
do
do
if registers[9] ~= "false" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
::p61::
branch_taken=false
do
do
if registers[9] ~= "0" then
    branch_taken=true
end
end

end
if branch_taken then goto p278 end
goto p22
::p63::
tick(63)
do
do
a = (9)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p64::
do
do
(registers)[11] = registers[8]
end

end
::p65::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p68::
tick(68)
do
do
registers[8] = ("Always on")
end

end
goto p457
::p70::
tick(70)
do
do
(registers)[9] = registers[10]
end

end
goto p384
::p72::
tick(72)
do
do
(registers)[8] = registers[9]
end

end
goto p262
::p74::
tick(74)
branch_taken=false
do
do
if registers[10] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p549 end
goto p153
::p76::
tick(76)
do
do
a = 13
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
::p77::
do
do
a = 11;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p218
::p79::
tick(79)
do
do
(registers)[9] = environment["type"]
end

end
::p80::
do
do
(registers)[10] = registers[8]
end

end
::p81::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p248
::p83::
tick(83)
do
do
registers[8] = (registers[7]["type"])
end

end
::p84::
branch_taken=false
do
do
if registers[8] ~= "label" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p13
::p87::
tick(87)
do
do
(registers)[11] = environment["pairs"]
end

end
::p88::
do
do
(registers)[12] = registers[6]
end

end
::p89::
do
do
a = 11
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
::p90::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (11)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p10 end
::p91::
tick(91)
do
do
a = (12)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p92::
do
do
(registers)[14] = registers[11]
end

end
::p93::
do
do
a = 12;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p95::
tick(95)
do
do
(registers)[8] = (registers[8] ~= 0)
end

end
goto p79
::p97::
branch_taken=false
do
do
if registers[13] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p145
::p99::
tick(99)
do
do
registers[8] = (registers[7]["type"])
end

end
::p100::
branch_taken=false
do
do
if registers[8] ~= "checkbox" then
    branch_taken=true
end
end

end
if branch_taken then goto p438 end
goto p389
::p102::
do
do
a = (9)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["lower"]
end

end
::p103::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p104::
branch_taken=false
do
do
if registers[9] ~= "true" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p250 end
goto p441
::p106::
tick(106)
do
do
a = (11)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p107::
do
do
(registers)[13] = environment["tostring"]
end

end
::p108::
do
do
(registers)[14] = registers[6]
end

end
goto p76
::p110::
tick(110)
do
do
(registers)[8] = registers[6]
end

end
::p111::
do
do
(registers)[9] = environment["type"]
end

end
::p112::
do
do
(registers)[10] = registers[8]
end

end
goto p421
::p114::
tick(114)
do
do
(registers)[10] = environment["tonumber"]
end

end
::p115::
do
do
(registers)[11] = registers[8]
end

end
::p116::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p117::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p510 end
goto p228
::p143::
tick(143)
branch_taken=false
do
do
if registers[4] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p178 end
goto p240
::p145::
do
do
(registers)[14] = registers[10]
end

end
::p146::
do
do
(registers)[15] = registers[12]
end

end
::p147::
do
do
a = (14)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p10
::p149::
tick(149)
do
do
a = (11)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p150::
do
do
(registers)[13] = registers[6]
end

end
::p151::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p153::
do
do
(registers)[11] = environment["tonumber"]
end

end
::p154::
do
do
(registers)[12] = registers[6]
end

end
::p155::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p449
::p157::
tick(157)
do
do
registers[8] = (registers[8][1])
end

end
goto p42
::p159::
tick(159)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p237
::p162::
tick(162)
do
do
(registers)[10] = environment["type"]
end

end
::p163::
do
do
(registers)[11] = registers[8]
end

end
::p164::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p165::
branch_taken=false
do
do
if registers[10] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p510 end
goto p114
::p167::
tick(167)
branch_taken=false
do
do
if registers[9] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p549 end
goto p74
::p169::
tick(169)
do
do
(registers)[10] = environment["type"]
end

end
::p170::
do
do
(registers)[11] = registers[8]
end

end
::p171::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p486
::p173::
do
do
registers[8] = (registers[7]["type"])
end

end
::p174::
branch_taken=false
do
do
if registers[8] ~= "multiselect" then
    branch_taken=true
end
end

end
if branch_taken then goto p350 end
goto p395
::p176::
tick(176)
branch_taken=false
do
do
if registers[9] ~= "boolean" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p319
::p178::
do
do
(registers)[4] = environment["pairs"]
end

end
::p179::
do
do
(registers)[5] = registers[3]
end

end
::p180::
do
do
a = 4
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
::p181::
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
if branch_taken then goto p218 end
goto p399
::p183::
tick(183)
do
do
(registers)[10] = environment["type"]
end

end
::p184::
do
do
(registers)[11] = registers[6]
end

end
::p185::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p267
::p187::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p523
::p189::
do
do
registers[8] = (registers[6][1])
end

end
::p190::
do
do
registers[10] = (registers[6][2])
end

end
::p191::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p292
::p201::
tick(201)
do
do
a = (11)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["lower"]
end

end
::p202::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p203::
branch_taken=false
do
do
if registers[11] ~= "true" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p334 end
goto p503
::p207::
tick(207)
branch_taken=false
do
do
if registers[9] ~= "boolean" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p323
::p211::
tick(211)
do
do
(registers)[7] = registers[2][registers[5]]
end

end
::p212::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p83
::p214::
tick(214)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p215::
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
::p216::
tick(216)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[11 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p470 end
goto p159
::p218::
tick(218)
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
if branch_taken then goto p211 end
goto p214
::p221::
tick(221)
do
do
registers[10] = (0)
end

end
goto p321
::p223::
tick(223)
branch_taken=false
do
do
if registers[10] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p106
::p225::
tick(225)
do
do
a = (11)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p226::
do
do
a = (11)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p235
::p228::
do
do
(registers)[8] = registers[10]
end

end
goto p510
::p230::
tick(230)
do
do
(registers)[10] = environment["type"]
end

end
::p231::
do
do
(registers)[11] = registers[8]
end

end
::p232::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p233::
branch_taken=false
do
do
if registers[10] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p374
::p235::
tick(235)
do
do
local f = (8)
if not (N) then

else
    for F, u, c in next, N do
        if F >= f then
            u[2] = u
            u[3] = registers[F]
            u[1] = (3)
            N[F] = nil
        end
    end
end
end

end
goto p218
::p237::
tick(237)
do
do
registers[11] = (#registers[8])
end

end
::p238::
branch_taken=false
do
do
if not (0 < registers[11]) then
    branch_taken=true
end
end

end
if branch_taken then goto p225 end
goto p516
::p240::
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
::p248::
branch_taken=false
do
do
if registers[9] ~= "boolean" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p55
::p250::
tick(250)
do
do
registers[8] = (true)
end

end
goto p79
::p252::
tick(252)
do
do
registers[9] = (0)
end

end
::p253::
do
do
(registers)[10] = environment["type"]
end

end
::p254::
do
do
(registers)[11] = registers[6]
end

end
goto p27
::p256::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p237
::p258::
tick(258)
do
do
(registers)[10] = environment["tonumber"]
end

end
::p259::
do
do
(registers)[11] = registers[9]
end

end
::p260::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p447
::p262::
tick(262)
do
do
(registers)[9] = environment["type"]
end

end
::p263::
do
do
(registers)[10] = registers[8]
end

end
::p264::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p265::
branch_taken=false
do
do
if registers[9] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p499
::p267::
branch_taken=false
do
do
if registers[9] ~= registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p149
::p278::
do
do
(registers)[8] = registers[0]
end

end
goto p79
::p280::
tick(280)
do
do
a = (12)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p281::
do
do
registers[14] = (false)
end

end
::p282::
do
do
a = 12;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p292::
do
do
registers[10] = (0)
end

end
goto p70
::p303::
tick(303)
do
do
registers[8] = (registers[7]["type"])
end

end
::p304::
branch_taken=false
do
do
if registers[8] ~= "textbox" then
    branch_taken=true
end
end

end
if branch_taken then goto p543 end
goto p399
::p307::
tick(307)
branch_taken=false
do
do
if registers[11] ~= "false" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p280 end
goto p379
::p310::
do
do
(registers)[8] = environment["type"]
end

end
::p311::
do
do
(registers)[9] = registers[6]
end

end
::p312::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p313::
branch_taken=false
do
do
if registers[8] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p323 end
goto p354
::p315::
do
do
a = (8)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p316::
do
do
(registers)[10] = registers[6]
end

end
::p317::
do
do
a = 8;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p319::
branch_taken=false
do
do
if registers[10] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p407 end
goto p558
::p321::
tick(321)
do
do
(registers)[9] = registers[10]
end

end
goto p162
::p323::
do
do
a = (8)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p324::
do
do
(registers)[10] = environment["tostring"]
end

end
::p325::
do
do
(registers)[11] = registers[6]
end

end
::p326::
do
do
a = 10
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
::p327::
do
do
a = 8;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p218
::p329::
tick(329)
do
do
registers[8] = (upvalues[2])
end

end
::p330::
do
do
(registers)[9] = registers[7]
end

end
::p331::
do
do
(registers)[10] = registers[6]
end

end
goto p417
::p334::
tick(334)
do
do
a = (12)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p335::
do
do
registers[14] = (true)
end

end
::p336::
do
do
a = 12;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p344::
tick(344)
do
do
(registers)[9] = environment["tonumber"]
end

end
::p345::
do
do
(registers)[10] = registers[8]
end

end
::p346::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p72
::p350::
tick(350)
do
do
registers[8] = (registers[7]["type"])
end

end
::p351::
branch_taken=false
do
do
if registers[8] ~= "color_picker" then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p48
::p354::
do
do
(registers)[9] = environment["type"]
end

end
::p355::
do
do
(registers)[10] = registers[6]
end

end
::p356::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p207
::p358::
do
do
(registers)[8] = registers[6]
end

end
::p359::
do
do
(registers)[9] = environment["type"]
end

end
::p360::
do
do
registers[10] = (registers[8][1])
end

end
::p361::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p362::
branch_taken=false
do
do
if registers[9] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p157
::p364::
tick(364)
do
do
registers[8] = {
}
end

end
::p365::
do
do
(registers)[9] = nil
end

end
::p366::
do
do
registers[10] = (registers[7]["get_list"])
end

end
::p367::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p523 end
goto p492
::p369::
tick(369)
do
do
registers[8] = (registers[7]["type"])
end

end
::p370::
branch_taken=false
do
do
if registers[8] ~= "slider" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p443
::p372::
tick(372)
do
do
(registers)[8] = upvalues[1][registers[8]]
end

end
goto p230
::p374::
do
do
a = (10)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p375::
do
do
(registers)[12] = registers[8]
end

end
::p376::
do
do
(registers)[13] = registers[9]
end

end
::p377::
do
do
a = (10)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p218
::p379::
branch_taken=false
do
do
if registers[11] ~= "0" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p280
::p381::
tick(381)
branch_taken=false
do
do
if registers[15] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p434
::p384::
do
do
(registers)[10] = environment["type"]
end

end
::p385::
do
do
(registers)[11] = registers[9]
end

end
::p386::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p387::
branch_taken=false
do
do
if registers[10] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p258
::p389::
do
do
(registers)[8] = registers[6]
end

end
::p390::
do
do
(registers)[9] = environment["type"]
end

end
::p391::
do
do
(registers)[10] = registers[8]
end

end
::p392::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p393::
branch_taken=false
do
do
if registers[9] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p409 end
goto p95
::p395::
do
do
(registers)[9] = environment["type"]
end

end
::p396::
do
do
(registers)[10] = registers[6]
end

end
::p397::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p541
::p399::
do
do
(registers)[8] = environment["type"]
end

end
::p400::
do
do
(registers)[9] = registers[6]
end

end
::p401::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p32
::p403::
tick(403)
do
do
registers[11] = (1)
end

end
::p404::
do
do
registers[12] = (#registers[6])
end

end
::p405::
do
do
registers[13] = (1)
end

end
::p406::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 11
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p216 end
::p407::
branch_taken=false
do
do
if registers[10] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p201
::p409::
do
do
(registers)[9] = environment["type"]
end

end
::p410::
do
do
(registers)[10] = registers[8]
end

end
::p411::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p53
::p417::
do
do
(registers)[11] = registers[5]
end

end
::p418::
do
do
a = 8
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p419::
branch_taken=false
do
do
if registers[8] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p63
::p421::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p422::
branch_taken=false
do
do
if registers[9] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p262 end
goto p344
::p424::
do
do
(registers)[15] = environment["type"]
end

end
::p425::
do
do
(registers)[16] = registers[10][registers[14]]
end

end
::p426::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p381
::p434::
do
do
(registers)[15] = registers[10][registers[14]]
end

end
::p435::
do
do
registers[9][registers[15]] = true
end

end
goto p40
::p438::
do
do
registers[8] = (registers[7]["type"])
end

end
::p439::
branch_taken=false
do
do
if registers[8] ~= "combobox" then
    branch_taken=true
end
end

end
if branch_taken then goto p303 end
goto p329
::p441::
branch_taken=false
do
do
if registers[9] ~= "1" then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p250
::p443::
do
do
registers[9] = (registers[7]["type"])
end

end
::p444::
branch_taken=false
do
do
if registers[9] ~= "listbox" then
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p110
::p447::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p321 end
goto p221
::p449::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p91
::p451::
do
do
(registers)[9] = environment["type"]
end

end
::p452::
do
do
(registers)[10] = registers[6]
end

end
::p453::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p454::
branch_taken=false
do
do
if registers[9] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p512 end
goto p459
::p457::
tick(457)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p252 end
goto p34
::p459::
do
do
(registers)[10] = environment["type"]
end

end
::p460::
do
do
(registers)[11] = registers[6]
end

end
::p461::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p462::
branch_taken=false
do
do
if registers[10] ~= "boolean" then
    branch_taken=true
end
end

end
if branch_taken then goto p369 end
goto p512
::p464::
do
do
registers[12] = (#registers[10])
end

end
::p465::
do
do
registers[13] = (1)
end

end
::p466::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 11
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p40 end
goto p149
::p470::
do
do
(registers)[15] = registers[10]
end

end
::p471::
do
do
(registers)[16] = registers[6][registers[14]]
end

end
::p472::
do
do
a = (15)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p216
::p475::
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
::p476::
do
do
(registers)[4] = environment["type"]
end

end
::p477::
do
do
(registers)[5] = registers[3]
end

end
::p478::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p143
::p486::
branch_taken=false
do
do
if registers[10] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p230 end
goto p372
::p492::
do
do
a = (10)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get_list"]
end

end
::p493::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p494::
do
do
(registers)[11] = environment["type"]
end

end
::p495::
do
do
(registers)[12] = registers[10]
end

end
::p496::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p497::
branch_taken=false
do
do
if registers[11] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p523 end
goto p36
::p499::
do
do
a = (9)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p500::
do
do
(registers)[11] = registers[8]
end

end
::p501::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
::p503::
branch_taken=false
do
do
if registers[11] ~= "1" then
    branch_taken=true
end
end

end
if branch_taken then goto p307 end
goto p334
::p510::
branch_taken=false
do
do
if registers[8] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p169
::p512::
do
do
registers[8] = (registers[6] == true)
end

end
::p513::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p457 end
goto p68
::p516::
do
do
a = (11)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p517::
do
do
registers[13] = (upvalues[0])
end

end
::p518::
do
do
(registers)[14] = registers[8]
end

end
::p519::
do
do
a = 13
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
::p520::
do
do
a = 11;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p235
::p523::
do
do
a = (D.f138)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[10] = x
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
::p524::
do
do
registers[11] = (#registers[6])
end

end
::p525::
branch_taken=false
do
do
if not (0 < registers[11]) then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p403
::p541::
branch_taken=false
do
do
if registers[9] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p350 end
goto p364
::p543::
do
do
a = (8)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p544::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p545::
do
do
(registers)[9] = environment["type"]
end

end
::p546::
do
do
(registers)[10] = registers[8]
end

end
::p547::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p183
::p549::
branch_taken=false
do
do
if registers[9] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p223
::p558::
do
do
a = (11)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p559::
do
do
(registers)[13] = (registers[6] ~= 0)
end

end
::p560::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p218
end
end
