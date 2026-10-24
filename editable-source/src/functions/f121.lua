
-- Function f121; 108 recovered instruction blocks.
F.f121=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f121",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f121 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p98
::p2::
tick(2)
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
if branch_taken then goto p134 end
goto p63
::p4::
tick(4)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p7::
tick(7)
do
do
registers[5] = {
}
end

end
::p8::
do
do
registers[6] = (0)
end

end
::p9::
do
do
registers[7] = (255)
end

end
::p10::
do
do
registers[8] = (1)
end

end
::p11::
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
if branch_taken then goto p16 end
::p12::
tick(12)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p13::
do
do
registers[1] = (upvalues[1])
end

end
::p14::
do
do
registers[2] = (upvalues[2])
end

end
goto p182
::p16::
tick(16)
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
if branch_taken then goto p110 end
goto p53
::p19::
tick(19)
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
::p20::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p102
::p24::
tick(24)
do
do
registers[16] = (upvalues[2])
end

end
::p25::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
::p26::
do
do
registers[17] = (upvalues[0])
end

end
::p27::
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
::p28::
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
::p29::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
goto p2
::p32::
tick(32)
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
if branch_taken then goto p7 end
goto p12
::p46::
tick(46)
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
::p47::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
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
z = 11
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
m = 1
q = (q[m])
a[z] = q
end

end
goto p203
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
registers[6] = (1)
end

end
::p55::
do
do
registers[7] = (upvalues[0])
end

end
::p56::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p57::
do
do
registers[8] = (1)
end

end
::p58::
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
if branch_taken then goto p107 end
::p59::
tick(59)
do
do
registers[11] = (upvalues[0])
end

end
::p60::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p61::
do
do
registers[12] = (upvalues[0])
end

end
goto p46
::p63::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p107
::p65::
tick(65)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p66::
do
do
registers[14] = (upvalues[3])
end

end
::p67::
do
do
registers[15] = (upvalues[2])
end

end
::p68::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p69::
do
do
registers[16] = (upvalues[0])
end

end
::p70::
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
::p71::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p72::
do
do
registers[15] = new_frame(1)
end

end
goto p24
::p74::
tick(74)
do
do
registers[15] = (upvalues[1])
end

end
::p75::
do
do
registers[16] = (upvalues[2])
end

end
::p76::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
::p77::
do
do
registers[17] = (upvalues[2])
end

end
goto p19
::p82::
tick(82)
do
do
registers[15] = (upvalues[2])
end

end
::p83::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p84::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p140
::p93::
tick(93)
do
do
registers[10] = (0)
end

end
::p94::
do
do
a = (registers)
z = 11
end

end
::p95::
do
do
q = 255;
(a)[z] = (q)
end

end
::p96::
do
do
registers[12] = (1)
end

end
goto p158
::p98::
tick(98)
do
do
registers[1] = (1)
end

end
::p99::
do
do
registers[2] = (upvalues[0])
end

end
::p100::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p126
::p102::
tick(102)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p103::
do
do
registers[14] = (upvalues[0])
end

end
::p104::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p82
::p107::
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
if branch_taken then goto p93 end
goto p4
::p110::
do
do
registers[10] = (upvalues[1])
end

end
::p111::
do
do
registers[11] = (upvalues[0])
end

end
::p112::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p113::
do
do
registers[12] = (upvalues[0])
end

end
::p114::
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
::p115::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p116::
do
do
registers[11] = (upvalues[1])
end

end
::p117::
do
do
registers[12] = (upvalues[0])
end

end
::p118::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p119::
do
do
registers[13] = (upvalues[0])
end

end
::p120::
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
::p121::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p122::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
::p123::
do
do
registers[10] = (upvalues[1])
end

end
goto p59
::p126::
do
do
registers[3] = (1)
end

end
::p127::
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
if branch_taken then goto p32 end
::p128::
do
do
registers[29] = (code_metadata)
end

end
::p129::
do
do
registers[35] = operand_k
end

end
::p130::
do
do
registers[29][32] = 183
end

end
::p131::
do
do
registers[35][81] = 97
end

end
::p132::
do
do
for f = 28, 35, 1 do
    (registers)[f] = nil
end
end

end
goto p98
::p134::
do
do
registers[14] = (upvalues[2])
end

end
::p135::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p136::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p186 end
::p137::
do
do
registers[14] = (upvalues[0])
end

end
::p138::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p186
::p140::
do
do
a = (registers)
end

end
::p141::
do
do
z = 15
end

end
::p142::
do
do
q = (upvalues)
end

end
::p143::
do
do
m = 2
q = (q[m])
a[z] = q
end

end
::p144::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
goto p65
::p158::
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
if branch_taken then goto p2 end
goto p7
::p182::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p183::
do
do
registers[3] = (upvalues[0])
end

end
::p184::
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
::p185::
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
::p186::
do
do
registers[15] = (upvalues[2])
end

end
::p187::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p188::
do
do
(registers)[15] = registers[5][registers[15]]
end

end
::p189::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p74
::p203::
do
do
registers[12] = (upvalues[0])
end

end
::p204::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p205::
do
do
registers[13] = (upvalues[0])
end

end
::p206::
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
::p207::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p208::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
goto p16
end
end
