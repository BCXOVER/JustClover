
-- Function f41; 253 recovered instruction blocks.
F.f41=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f41",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f41 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p195
::p2::
tick(2)
do
do
a = 19
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p3::
do
do
a = (registers)
end

end
::p4::
do
do
z = (20)
q = (environment)
end

end
::p5::
do
do
m = "bit"
q = (q[m])
a[z] = q
end

end
::p6::
do
do
registers[20] = (registers[20]["ror"])
end

end
::p7::
do
do
(registers)[21] = registers[5]
end

end
::p8::
do
do
registers[22] = (22)
end

end
::p9::
do
do
a = 20
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
::p10::
do
do
a = 17
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p11::
do
do
(registers)[18] = environment["bit"]
end

end
::p12::
do
do
registers[18] = (registers[18]["bxor"])
end

end
goto p282
::p15::
tick(15)
do
do
(registers)[12] = registers[23]
end

end
goto p27
::p17::
tick(17)
do
do
(registers)[14] = registers[14] + registers[11]
end

end
::p18::
do
do
registers[15] = (4294967295)
end

end
::p19::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p394
::p21::
tick(21)
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
    (registers)[5 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p296 end
goto p157
::p23::
tick(23)
do
do
(registers)[22] = environment["bit"]
end

end
::p24::
do
do
registers[22] = (registers[22]["band"])
end

end
::p25::
do
do
(registers)[23] = registers[9]
end

end
goto p111
::p27::
tick(27)
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
    (registers)[13 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p399 end
goto p53
::p29::
tick(29)
do
do
registers[14] = (registers[3][1])
end

end
::p30::
do
do
(registers)[14] = registers[14] + registers[5]
end

end
::p31::
do
do
registers[15] = (4294967295)
end

end
goto p163
::p33::
tick(33)
do
do
registers[12] = (registers[12]["bxor"])
end

end
::p34::
do
do
(registers)[13] = environment["bit"]
end

end
::p35::
do
do
registers[13] = (registers[13]["ror"])
end

end
goto p224
::p37::
tick(37)
do
do
registers[17] = (10)
end

end
::p38::
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
::p39::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p40::
do
do
(registers)[11] = registers[11] + registers[12]
end

end
::p41::
do
do
(registers[4])[registers[8]] = registers[11]
end

end
goto p426
::p49::
tick(49)
do
do
registers[23] = (registers[23]["band"])
end

end
::p50::
do
do
(registers)[24] = environment["bit"]
end

end
::p51::
do
do
registers[24] = (registers[24]["bnot"])
end

end
goto p323
::p53::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p54::
do
do
(registers)[13] = environment["bit"]
end

end
::p55::
do
do
registers[13] = (registers[13]["band"])
end

end
goto p29
::p58::
tick(58)
do
do
(registers)[9] = (registers[8] - 15)
end

end
::p59::
do
do
(registers)[9] = registers[4][registers[9]]
end

end
::p60::
do
do
(registers)[10] = environment["bit"]
end

end
goto p421
::p69::
tick(69)
do
do
registers[3][6] = (registers[13])
end

end
::p70::
do
do
(registers)[13] = environment["bit"]
end

end
::p71::
do
do
registers[13] = (registers[13]["band"])
end

end
::p72::
do
do
registers[14] = (registers[3][7])
end

end
goto p17
::p84::
tick(84)
do
do
(registers)[8] = registers[28]
end

end
::p85::
do
do
(registers)[9] = registers[26]
end

end
::p86::
do
do
(registers)[10] = registers[25]
end

end
::p87::
do
do
(registers)[11] = registers[24]
end

end
goto p15
::p90::
tick(90)
do
do
registers[8] = (registers[3][4])
end

end
::p91::
do
do
registers[9] = (registers[3][5])
end

end
::p92::
do
do
registers[10] = (registers[3][6])
end

end
::p93::
do
do
registers[11] = (registers[3][7])
end

end
goto p191
::p95::
tick(95)
do
do
(registers)[14] = registers[14] + registers[8]
end

end
::p96::
do
do
registers[15] = (4294967295)
end

end
::p97::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p98::
do
do
registers[3][4] = (registers[13])
end

end
::p99::
do
do
(registers)[13] = environment["bit"]
end

end
::p100::
do
do
registers[13] = (registers[13]["band"])
end

end
::p101::
do
do
registers[14] = (registers[3][5])
end

end
::p102::
do
do
(registers)[14] = registers[14] + registers[9]
end

end
goto p129
::p111::
do
do
(registers)[24] = registers[10]
end

end
::p112::
do
do
a = 22
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p113::
do
do
(registers)[23] = environment["bit"]
end

end
goto p49
::p115::
tick(115)
do
do
registers[15] = (4294967295)
end

end
::p116::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p117::
do
do
registers[3][2] = (registers[13])
end

end
::p118::
do
do
(registers)[13] = environment["bit"]
end

end
::p119::
do
do
registers[13] = (registers[13]["band"])
end

end
::p120::
do
do
registers[14] = (registers[3][3])
end

end
::p121::
do
do
(registers)[14] = registers[14] + registers[7]
end

end
::p122::
do
do
registers[15] = (4294967295)
end

end
::p123::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p135
::p125::
tick(125)
do
do
a = 20
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p126::
do
do
(registers)[21] = environment["bit"]
end

end
::p127::
do
do
registers[21] = (registers[21]["band"])
end

end
goto p181
::p129::
do
do
registers[15] = (4294967295)
end

end
::p130::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p131::
do
do
registers[3][5] = (registers[13])
end

end
::p132::
do
do
(registers)[13] = environment["bit"]
end

end
::p133::
do
do
registers[13] = (registers[13]["band"])
end

end
goto p317
::p135::
do
do
registers[3][3] = (registers[13])
end

end
::p136::
do
do
(registers)[13] = environment["bit"]
end

end
::p137::
do
do
registers[13] = (registers[13]["band"])
end

end
::p138::
do
do
registers[14] = (registers[3][4])
end

end
goto p95
::p147::
tick(147)
do
do
(registers)[21] = registers[6]
end

end
::p148::
do
do
a = 19
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p149::
do
do
(registers)[20] = environment["bit"]
end

end
goto p378
::p157::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p158::
do
do
registers[5] = (17)
end

end
::p159::
do
do
registers[6] = (64)
end

end
::p160::
do
do
registers[7] = (1)
end

end
::p161::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 5
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p426 end
::p163::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p164::
do
do
a = (registers)
z = (3)
end

end
::p165::
do
do
a = a[z]
z = (1)
q = (registers)
end

end
::p166::
do
do
m = 13
end

end
::p167::
do
do
q = (q[m])
a[z] = q
end

end
::p168::
do
do
(registers)[13] = environment["bit"]
end

end
::p169::
do
do
registers[13] = (registers[13]["band"])
end

end
::p170::
do
do
registers[14] = (registers[3][2])
end

end
::p171::
do
do
(registers)[14] = registers[14] + registers[6]
end

end
goto p115
::p181::
do
do
(registers)[22] = registers[6]
end

end
::p182::
do
do
(registers)[23] = registers[7]
end

end
::p183::
do
do
a = 21
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
::p184::
do
do
a = 18
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p185::
do
do
(registers)[19] = registers[17] + registers[18]
end

end
::p186::
do
do
(registers)[20] = environment["bit"]
end

end
goto p366
::p191::
do
do
registers[12] = (registers[3][8])
end

end
::p192::
do
do
registers[13] = (1)
end

end
::p193::
do
do
registers[14] = (64)
end

end
goto p392
::p195::
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
::p196::
do
do
registers[4] = {
}
end

end
::p197::
do
do
registers[5] = (1)
end

end
::p198::
do
do
registers[6] = (16)
end

end
::p199::
do
do
registers[7] = (1)
end

end
goto p208
::p203::
tick(203)
do
do
(registers)[23] = registers[4][registers[16]]
end

end
::p204::
do
do
(registers)[22] = registers[22] + registers[23]
end

end
::p205::
do
do
(registers)[23] = registers[11]
end

end
::p206::
do
do
(registers)[24] = registers[10]
end

end
goto p218
::p208::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 5
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p21 end
::p209::
do
do
(registers)[51] = (operand_i)
end

end
::p210::
do
do
registers[50] = (operand_g)
end

end
::p211::
do
do
registers[52] = operand_k
end

end
::p212::
do
do
registers[52][230] = 3
end

end
::p213::
do
do
registers[50][230] = 0
end

end
::p214::
do
do
registers[51][230] = 13
end

end
::p215::
do
do
registers[52][322] = 229
end

end
::p216::
do
do
for f = 45, 52, 1 do
    (registers)[f] = nil
end
end

end
goto p230
::p218::
do
do
(registers)[25] = registers[9]
end

end
::p219::
do
do
(registers)[26] = registers[8] + registers[22]
end

end
::p220::
do
do
(registers)[28] = registers[7]
end

end
::p221::
do
do
(registers)[29] = registers[6]
end

end
::p222::
do
do
(registers)[30] = registers[5]
end

end
goto p327
::p224::
do
do
(registers)[14] = registers[9]
end

end
::p225::
do
do
registers[15] = (17)
end

end
::p226::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p227::
do
do
(registers)[14] = environment["bit"]
end

end
::p228::
do
do
registers[14] = (registers[14]["ror"])
end

end
goto p349
::p230::
tick(230)
do
do
a = 13
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
::p231::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p232::
do
do
a = registers
z = 11
q = registers
end

end
::p233::
do
do
m = 8
q = q[m]
m = 2
end

end
::p234::
do
do
q = q - m;
(a)[z] = (q)
end

end
::p235::
do
do
(registers)[9] = registers[4][registers[11]]
end

end
::p236::
do
do
(registers)[11] = (registers[8] - 16)
end

end
goto p310
::p252::
tick(252)
do
do
(registers)[14] = registers[14] + registers[12]
end

end
::p253::
do
do
registers[15] = (4294967295)
end

end
::p254::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p255::
do
do
registers[3][8] = (registers[13])
end

end
goto p403
::p257::
tick(257)
do
do
(registers)[23] = environment["bit"]
end

end
::p258::
do
do
registers[23] = (registers[23]["ror"])
end

end
::p259::
do
do
(registers)[24] = registers[9]
end

end
::p260::
do
do
registers[25] = (25)
end

end
::p261::
do
do
a = 23
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
::p262::
do
do
a = 20
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p263::
do
do
(registers)[21] = environment["bit"]
end

end
::p264::
do
do
registers[21] = (registers[21]["bxor"])
end

end
goto p23
::p282::
do
do
(registers)[19] = environment["bit"]
end

end
::p283::
do
do
registers[19] = (registers[19]["band"])
end

end
::p284::
do
do
(registers)[20] = registers[5]
end

end
goto p147
::p286::
tick(286)
do
do
registers[13] = (7)
end

end
::p287::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p288::
do
do
a = (registers)
end

end
::p289::
do
do
z = (12)
q = (environment)
end

end
::p290::
do
do
m = "bit"
q = (q[m])
a[z] = q
end

end
::p291::
do
do
registers[12] = (registers[12]["ror"])
end

end
::p292::
do
do
(registers)[13] = registers[9]
end

end
::p293::
do
do
registers[14] = (18)
end

end
::p294::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p344
::p296::
do
do
registers[9] = (upvalues[0])
end

end
::p297::
do
do
(registers)[10] = registers[1]
end

end
::p298::
do
do
(registers)[11] = (registers[8] - 1)
end

end
goto p339
::p310::
do
do
(registers)[11] = registers[4][registers[11]]
end

end
::p311::
do
do
(registers)[11] = registers[11] + registers[10]
end

end
::p312::
do
do
(registers)[12] = (registers[8] - 7)
end

end
::p313::
do
do
(registers)[12] = registers[4][registers[12]]
end

end
::p314::
do
do
(registers)[11] = registers[11] + registers[12]
end

end
::p315::
do
do
(registers)[12] = environment["bit"]
end

end
goto p33
::p317::
do
do
registers[14] = (registers[3][6])
end

end
::p318::
do
do
(registers)[14] = registers[14] + registers[10]
end

end
::p319::
do
do
registers[15] = (4294967295)
end

end
::p320::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p69
::p323::
do
do
(registers)[25] = registers[9]
end

end
::p324::
do
do
a = (24);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p325::
do
do
(registers)[25] = registers[11]
end

end
goto p382
::p327::
do
do
(registers)[31] = registers[22] + registers[19]
end

end
::p328::
do
do
(registers)[5] = registers[31]
end

end
::p329::
do
do
(registers)[6] = registers[30]
end

end
::p330::
do
do
(registers)[7] = registers[29]
end

end
goto p84
::p333::
tick(333)
do
do
a = 18
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p334::
do
do
(registers)[19] = environment["bit"]
end

end
::p335::
do
do
registers[19] = (registers[19]["ror"])
end

end
::p336::
do
do
(registers)[20] = registers[5]
end

end
::p337::
do
do
registers[21] = (13)
end

end
goto p2
::p339::
do
do
registers[11] = (registers[11] * 4)
end

end
::p340::
do
do
(registers)[11] = registers[2] + registers[11]
end

end
::p341::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p342::
do
do
(registers[4])[registers[8]] = registers[9]
end

end
goto p21
::p344::
do
do
(registers)[13] = environment["bit"]
end

end
::p345::
do
do
registers[13] = (registers[13]["rshift"])
end

end
::p346::
do
do
(registers)[14] = registers[9]
end

end
::p347::
do
do
registers[15] = (3)
end

end
goto p230
::p349::
do
do
(registers)[15] = registers[9]
end

end
::p350::
do
do
registers[16] = (19)
end

end
::p351::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p352::
do
do
(registers)[15] = environment["bit"]
end

end
::p353::
do
do
registers[15] = (registers[15]["rshift"])
end

end
::p354::
do
do
(registers)[16] = registers[9]
end

end
goto p37
::p356::
tick(356)
do
do
registers[18] = (registers[18]["ror"])
end

end
::p357::
do
do
(registers)[19] = registers[5]
end

end
::p358::
do
do
registers[20] = (2)
end

end
goto p333
::p366::
do
do
registers[20] = (registers[20]["bxor"])
end

end
::p367::
do
do
(registers)[21] = environment["bit"]
end

end
::p368::
do
do
registers[21] = (registers[21]["ror"])
end

end
::p369::
do
do
(registers)[22] = registers[9]
end

end
::p370::
do
do
registers[23] = (6)
end

end
::p371::
do
do
a = 21
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p372::
do
do
(registers)[22] = environment["bit"]
end

end
::p373::
do
do
registers[22] = (registers[22]["ror"])
end

end
::p374::
do
do
(registers)[23] = registers[9]
end

end
::p375::
do
do
registers[24] = (11)
end

end
::p376::
do
do
a = 22
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p257
::p378::
do
do
registers[20] = (registers[20]["band"])
end

end
::p379::
do
do
(registers)[21] = registers[5]
end

end
::p380::
do
do
(registers)[22] = registers[7]
end

end
goto p125
::p382::
do
do
a = 23
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
::p383::
do
do
a = 21
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p384::
do
do
a = (registers)
z = 22
end

end
::p385::
do
do
q = registers
m = 12
q = (q[m])
end

end
::p386::
do
do
m = registers
x = 20
end

end
::p387::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p388::
do
do
(registers)[22] = registers[22] + registers[21]
end

end
::p389::
do
do
(registers)[23] = upvalues[1][registers[16]]
end

end
::p390::
do
do
(registers)[22] = registers[22] + registers[23]
end

end
goto p203
::p392::
do
do
registers[15] = (1)
end

end
::p393::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 13
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p27 end
::p394::
do
do
registers[3][7] = (registers[13])
end

end
::p395::
do
do
(registers)[13] = environment["bit"]
end

end
::p396::
do
do
registers[13] = (registers[13]["band"])
end

end
::p397::
do
do
registers[14] = (registers[3][8])
end

end
goto p252
::p399::
do
do
(registers)[17] = environment["bit"]
end

end
::p400::
do
do
registers[17] = (registers[17]["bxor"])
end

end
::p401::
do
do
(registers)[18] = environment["bit"]
end

end
goto p356
::p403::
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
::p411::
tick(411)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p412::
do
do
registers[5] = (registers[3][1])
end

end
::p413::
do
do
registers[6] = (registers[3][2])
end

end
::p414::
do
do
registers[7] = (registers[3][3])
end

end
goto p90
::p421::
do
do
registers[10] = (registers[10]["bxor"])
end

end
::p422::
do
do
(registers)[11] = environment["bit"]
end

end
::p423::
do
do
registers[11] = (registers[11]["ror"])
end

end
::p424::
do
do
(registers)[12] = registers[9]
end

end
goto p286
::p426::
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
    (registers)[5 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p411
end
end
