
-- Function f52; 124 recovered instruction blocks.
F.f52=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f52",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f52 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p113
::p3::
tick(3)
do
do
registers[15] = (upvalues[2])
end

end
::p4::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
goto p172
::p6::
tick(6)
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
if branch_taken then goto p229 end
goto p120
::p16::
tick(16)
do
do
registers[10] = (0)
end

end
::p17::
do
do
registers[11] = (255)
end

end
::p18::
do
do
registers[12] = (1)
end

end
goto p48
::p42::
tick(42)
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
::p43::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p44::
do
do
registers[11] = (upvalues[1])
end

end
::p45::
do
do
registers[12] = (upvalues[0])
end

end
::p46::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
goto p65
::p48::
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
if branch_taken then goto p86 end
::p49::
tick(49)
do
do
registers[17] = (upvalues[0])
end

end
::p50::
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
::p51::
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
::p52::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
goto p86
::p54::
tick(54)
do
do
registers[11] = (upvalues[0])
end

end
::p55::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p56::
do
do
registers[12] = (upvalues[0])
end

end
::p57::
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
::p58::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p59::
do
do
registers[11] = (upvalues[1])
end

end
::p60::
do
do
registers[12] = (upvalues[0])
end

end
::p61::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
goto p127
::p63::
tick(63)
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
if branch_taken then goto p6 end
goto p163
::p65::
do
do
registers[13] = (upvalues[0])
end

end
::p66::
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
::p67::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p68::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
::p69::
do
do
registers[10] = (upvalues[1])
end

end
goto p54
::p79::
tick(79)
do
do
registers[26] = 415 + registers[26]
end

end
::p80::
do
do
registers[26] = registers[26] + -577
end

end
::p81::
do
do
registers[19][179] = (registers[26])
end

end
::p82::
do
do
registers[25][220] = 171
end

end
::p83::
do
do
for f = 18, 29, 1 do
    (registers)[f] = nil
end
end

end
goto p172
::p86::
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
if branch_taken then goto p93 end
goto p227
::p91::
tick(91)
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
if branch_taken then goto p16 end
goto p157
::p93::
do
do
registers[14] = (upvalues[2])
end

end
::p94::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p95::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p209 end
goto p159
::p97::
tick(97)
do
do
(registers)[26] = constant_cache[10]
end

end
::p98::
do
do
a = (registers)
z = 27
end

end
::p99::
do
do
q = "\1745\186";
(a)[z] = (q)
end

end
::p100::
do
do
registers[28] = (2)
end

end
::p101::
do
do
(registers)[29] = nil
end

end
::p102::
do
do
a = 26
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p193
::p113::
do
do
registers[1] = (1)
end

end
::p114::
do
do
registers[2] = (upvalues[0])
end

end
::p115::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p136
::p117::
tick(117)
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p118::
do
do
registers[8] = (1)
end

end
::p119::
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
if branch_taken then goto p91 end
::p120::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p121::
do
do
registers[6] = (1)
end

end
::p122::
do
do
registers[7] = (upvalues[0])
end

end
goto p117
::p127::
do
do
registers[13] = (upvalues[0])
end

end
::p128::
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
::p129::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p130::
do
do
a = (registers)
z = 5
end

end
::p131::
do
do
a = (a[z])
z = registers
q = (10)
end

end
::p132::
do
do
z = z[q]
end

end
::p133::
do
do
q = registers
m = 11
end

end
::p134::
do
do
q = (q[m])
a[z] = q
end

end
goto p6
::p136::
do
do
registers[3] = (1)
end

end
::p137::
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
if branch_taken then goto p217 end
goto p91
::p148::
tick(148)
do
do
registers[26] = (380)
end

end
goto p79
::p150::
tick(150)
do
do
registers[15] = (upvalues[1])
end

end
::p151::
do
do
a = (registers)
end

end
::p152::
do
do
z = 16
end

end
::p153::
do
do
q = (upvalues)
end

end
::p154::
do
do
m = 2
q = (q[m])
a[z] = q
end

end
::p155::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
goto p251
::p157::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p246
::p159::
do
do
registers[14] = (upvalues[0])
end

end
::p160::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p209
::p163::
do
do
registers[19] = (code_metadata)
end

end
::p164::
do
do
registers[25] = operand_k
end

end
::p165::
do
do
(registers)[26] = (39 + 415)
end

end
::p166::
do
do
(registers)[27] = constant_cache[5]
end

end
::p167::
do
do
(registers)[28] = constant_cache[6]
end

end
::p168::
do
do
a = (27);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p169::
do
do
(registers)[26] = registers[26] < registers[27]
end

end
::p170::
branch_taken=false
do
do
if not registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p193 end
goto p97
::p172::
tick(172)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p173::
do
do
registers[14] = (upvalues[3])
end

end
::p174::
do
do
registers[15] = (upvalues[2])
end

end
::p175::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p176::
do
do
registers[16] = (upvalues[0])
end

end
::p177::
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
::p178::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p179::
do
do
registers[15] = new_frame(1)
end

end
::p180::
do
do
registers[16] = (upvalues[2])
end

end
::p181::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
goto p49
::p193::
tick(193)
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p148
::p205::
tick(205)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p206::
do
do
registers[1] = (upvalues[1])
end

end
::p207::
do
do
registers[2] = (upvalues[2])
end

end
goto p234
::p209::
do
do
registers[15] = (upvalues[2])
end

end
::p210::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p211::
do
do
(registers)[15] = registers[5][registers[15]]
end

end
::p212::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p239 end
goto p150
::p217::
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
if branch_taken then goto p246 end
goto p205
::p227::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p91
::p229::
do
do
registers[10] = (upvalues[1])
end

end
::p230::
do
do
registers[11] = (upvalues[0])
end

end
::p231::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p232::
do
do
registers[12] = (upvalues[0])
end

end
goto p42
::p234::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p235::
do
do
registers[3] = (upvalues[0])
end

end
::p236::
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
::p237::
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
::p239::
tick(239)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p240::
do
do
registers[14] = (upvalues[0])
end

end
::p241::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p242::
do
do
registers[15] = (upvalues[2])
end

end
::p243::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p244::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p3
::p246::
do
do
registers[5] = {
}
end

end
::p247::
do
do
registers[6] = (0)
end

end
::p248::
do
do
registers[7] = (255)
end

end
::p249::
do
do
registers[8] = (1)
end

end
goto p63
::p251::
do
do
registers[17] = (upvalues[2])
end

end
::p252::
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
::p253::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p239
end
end
