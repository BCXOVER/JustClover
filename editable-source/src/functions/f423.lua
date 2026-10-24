
-- Function f423; 106 recovered instruction blocks.
F.f423=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f423",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f423 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p30
::p16::
tick(16)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p153
::p30::
do
do
registers[1] = (1)
end

end
::p31::
do
do
registers[2] = (upvalues[0])
end

end
::p32::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p33::
do
do
registers[3] = (1)
end

end
::p35::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 1
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p54 end
::p36::
tick(36)
do
do
registers[16] = (upvalues[0])
end

end
::p37::
do
do
a = 16
z = (1)
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
::p38::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p39::
do
do
registers[15] = new_frame(1)
end

end
::p40::
do
do
registers[16] = (upvalues[2])
end

end
::p41::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
::p42::
do
do
registers[17] = (upvalues[0])
end

end
::p43::
do
do
a = 17
z = (1)
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
::p44::
do
do
a = (15)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p45::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
goto p157
::p47::
tick(47)
do
do
registers[15] = (upvalues[1])
end

end
::p48::
do
do
a = (registers)
end

end
::p49::
do
do
z = 16
end

end
::p50::
do
do
q = (upvalues)
end

end
::p51::
do
do
m = 2
q = (q[m])
a[z] = q
end

end
::p52::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
goto p210
::p54::
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
    (registers)[1 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p153 end
goto p128
::p57::
tick(57)
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
    (registers)[6 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p16
::p59::
tick(59)
do
do
registers[10] = (upvalues[1])
end

end
::p60::
do
do
registers[11] = (upvalues[0])
end

end
::p61::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p62::
do
do
registers[12] = (upvalues[0])
end

end
goto p110
::p66::
tick(66)
do
do
registers[14] = (upvalues[2])
end

end
::p67::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p68::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p119
::p88::
tick(88)
do
do
registers[15] = (upvalues[2])
end

end
::p89::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p90::
do
do
(registers)[15] = registers[5][registers[15]]
end

end
::p91::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p206 end
goto p47
::p95::
tick(95)
do
do
registers[15] = (upvalues[2])
end

end
::p96::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p97::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
::p101::
do
do
registers[15] = (upvalues[2])
end

end
::p102::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
goto p167
::p104::
tick(104)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p105::
do
do
a = (registers)
z = 6
end

end
::p106::
do
do
q = 1;
(a)[z] = (q)
end

end
::p107::
do
do
registers[7] = (upvalues[0])
end

end
goto p143
::p110::
do
do
a = 12
z = (1)
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
::p111::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p112::
do
do
registers[11] = (upvalues[1])
end

end
::p113::
do
do
registers[12] = (upvalues[0])
end

end
goto p231
::p115::
tick(115)
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
    (registers)[6 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p104
::p117::
tick(117)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p57
::p119::
do
do
registers[14] = (upvalues[0])
end

end
::p120::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p88
::p123::
do
do
registers[10] = (0)
end

end
::p124::
do
do
registers[11] = (255)
end

end
::p125::
do
do
registers[12] = (1)
end

end
::p126::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 10
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p157 end
goto p153
::p128::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p129::
do
do
registers[1] = (upvalues[1])
end

end
::p130::
do
do
registers[2] = (upvalues[2])
end

end
goto p191
::p143::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p144::
do
do
registers[8] = (1)
end

end
::p145::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 6
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p57 end
::p146::
do
do
(registers)[34] = (operand_i)
end

end
::p147::
do
do
registers[35] = operand_k
end

end
::p148::
do
do
registers[34][192] = 0
end

end
::p149::
do
do
registers[35][182] = 190
end

end
::p150::
do
do
a = (28)
z = 35
end

end
::p151::
do
do
for f = a, z do
    q = (registers)
    m = (f)
    f = nil;
    (q)[m] = f
end
end

end
goto p191
::p153::
do
do
registers[5] = {
}
end

end
::p154::
do
do
registers[6] = (0)
end

end
::p155::
do
do
registers[7] = (255)
end

end
goto p159
::p157::
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
    (registers)[10 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p117
::p159::
do
do
registers[8] = (1)
end

end
::p160::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 6
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p115 end
::p161::
tick(161)
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p162::
do
do
registers[13] = (upvalues[0])
end

end
::p163::
do
do
a = 13
z = (1)
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
::p164::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p165::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
goto p115
::p167::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p168::
do
do
registers[14] = (upvalues[3])
end

end
::p169::
do
do
registers[15] = (upvalues[2])
end

end
::p170::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
goto p36
::p191::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p192::
do
do
registers[3] = (upvalues[0])
end

end
::p193::
do
do
a = 3
z = (1)
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
::p194::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
a = 1
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p195::
tick(195)
do
do
registers[11] = (upvalues[0])
end

end
::p196::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p197::
do
do
registers[12] = (upvalues[0])
end

end
::p198::
do
do
a = 12
z = (1)
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
::p199::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p200::
do
do
registers[11] = (upvalues[1])
end

end
::p201::
do
do
registers[12] = (upvalues[0])
end

end
goto p161
::p206::
tick(206)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p207::
do
do
registers[14] = (upvalues[0])
end

end
::p208::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p95
::p210::
do
do
registers[17] = (upvalues[2])
end

end
::p211::
do
do
a = 17
z = (1)
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
::p212::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p206
::p231::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p232::
do
do
registers[13] = (upvalues[0])
end

end
::p233::
do
do
a = 13
z = (1)
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
::p234::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p235::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
::p236::
do
do
registers[10] = (upvalues[1])
end

end
goto p195
end
end
