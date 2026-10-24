
-- Function f7; 100 recovered instruction blocks.
F.f7=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f7",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f7 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p180
::p2::
tick(2)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p3::
do
do
registers[1] = (upvalues[1])
end

end
::p4::
do
do
registers[2] = (upvalues[2])
end

end
::p5::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p6::
do
do
registers[3] = (upvalues[0])
end

end
goto p54
::p18::
tick(18)
do
do
registers[15] = (upvalues[2])
end

end
::p19::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p20::
do
do
(registers)[15] = registers[5][registers[15]]
end

end
goto p107
::p22::
tick(22)
do
do
registers[3] = (1)
end

end
::p23::
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
if branch_taken then goto p171 end
::p24::
tick(24)
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p25::
do
do
registers[16] = (upvalues[0])
end

end
::p26::
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
::p27::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p28::
do
do
registers[15] = new_frame(1)
end

end
::p29::
do
do
registers[16] = (upvalues[2])
end

end
goto p163
::p31::
tick(31)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p32::
do
do
registers[14] = (upvalues[3])
end

end
::p33::
do
do
registers[15] = (upvalues[2])
end

end
goto p24
::p35::
tick(35)
do
do
registers[10] = (upvalues[1])
end

end
::p36::
do
do
registers[11] = (upvalues[0])
end

end
::p37::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
goto p131
::p54::
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
::p55::
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
::p64::
tick(64)
do
do
registers[15] = (upvalues[2])
end

end
::p65::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
goto p31
::p68::
tick(68)
do
do
registers[5] = {
}
end

end
::p69::
do
do
registers[6] = (0)
end

end
::p70::
do
do
registers[7] = (255)
end

end
::p71::
do
do
registers[8] = (1)
end

end
::p72::
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
if branch_taken then goto p128 end
::p73::
tick(73)
do
do
registers[17] = (upvalues[2])
end

end
::p74::
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
::p75::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p109
::p84::
tick(84)
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
if branch_taken then goto p138 end
goto p191
::p88::
tick(88)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p89::
do
do
registers[6] = (1)
end

end
::p90::
do
do
registers[7] = (upvalues[0])
end

end
::p91::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p92::
do
do
registers[8] = (1)
end

end
::p93::
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
if branch_taken then goto p142 end
::p94::
do
do
registers[35] = operand_k
end

end
::p95::
do
do
registers[35][184] = 0
end

end
::p96::
do
do
registers[35][122] = 183
end

end
::p97::
do
do
for f = 28, 35, 1 do
    (registers)[f] = nil
end
end

end
goto p184
::p107::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p118
::p109::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p110::
do
do
registers[14] = (upvalues[0])
end

end
::p111::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p112::
do
do
registers[15] = (upvalues[2])
end

end
::p113::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p114::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p64
::p118::
do
do
registers[15] = (upvalues[1])
end

end
::p119::
do
do
registers[16] = (upvalues[2])
end

end
::p120::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
goto p73
::p123::
tick(123)
do
do
registers[13] = (upvalues[0])
end

end
::p124::
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
::p125::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p126::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
goto p193
::p128::
tick(128)
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
if branch_taken then goto p35 end
goto p88
::p131::
do
do
registers[12] = (upvalues[0])
end

end
::p132::
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
::p133::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p134::
do
do
registers[11] = (upvalues[1])
end

end
::p135::
do
do
registers[12] = (upvalues[0])
end

end
::p136::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
goto p123
::p138::
do
do
registers[14] = (upvalues[2])
end

end
::p139::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p140::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p201
::p142::
tick(142)
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
if branch_taken then goto p197 end
goto p210
::p163::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
::p164::
do
do
registers[17] = (upvalues[0])
end

end
::p165::
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
::p166::
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
::p167::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
goto p84
::p171::
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
if branch_taken then goto p68 end
goto p2
::p180::
do
do
registers[1] = (1)
end

end
::p181::
do
do
registers[2] = (upvalues[0])
end

end
::p182::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p22
::p184::
tick(184)
do
do
registers[12] = (upvalues[0])
end

end
::p185::
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
::p186::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p187::
do
do
registers[11] = (upvalues[1])
end

end
::p188::
do
do
registers[12] = (upvalues[0])
end

end
goto p226
::p191::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p142
::p193::
do
do
registers[10] = (upvalues[1])
end

end
::p194::
do
do
registers[11] = (upvalues[0])
end

end
::p195::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
goto p184
::p197::
do
do
registers[10] = (0)
end

end
::p198::
do
do
registers[11] = (255)
end

end
::p199::
do
do
registers[12] = (1)
end

end
::p200::
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
if branch_taken then goto p84 end
::p201::
do
do
registers[14] = (upvalues[0])
end

end
::p202::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p18
::p210::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p68
::p226::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p227::
do
do
registers[13] = (upvalues[0])
end

end
::p228::
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
::p229::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p230::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
goto p128
end
end
