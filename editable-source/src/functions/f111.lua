
-- Function f111; 102 recovered instruction blocks.
F.f111=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f111",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f111 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p6
::p2::
tick(2)
do
do
registers[15] = (upvalues[1])
end

end
::p3::
do
do
registers[16] = (upvalues[2])
end

end
::p4::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
goto p181
::p6::
do
do
registers[1] = (1)
end

end
::p7::
do
do
registers[2] = (upvalues[0])
end

end
::p8::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p9::
do
do
registers[3] = (1)
end

end
::p10::
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
if branch_taken then goto p62 end
::p11::
tick(11)
do
do
registers[10] = (upvalues[1])
end

end
::p12::
do
do
registers[11] = (upvalues[0])
end

end
::p13::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p14::
do
do
registers[12] = (upvalues[0])
end

end
::p15::
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
::p16::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p17::
do
do
registers[11] = (upvalues[1])
end

end
goto p55
::p32::
tick(32)
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
::p33::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p34::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
goto p157
::p40::
tick(40)
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p41::
do
do
registers[14] = (upvalues[0])
end

end
::p42::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p78
::p44::
tick(44)
do
do
registers[15] = (upvalues[2])
end

end
::p45::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
goto p83
::p53::
tick(53)
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p2
::p55::
do
do
registers[12] = (upvalues[0])
end

end
::p56::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p57::
do
do
registers[13] = (upvalues[0])
end

end
goto p32
::p59::
tick(59)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p94
::p62::
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
if branch_taken then goto p94 end
goto p204
::p64::
tick(64)
do
do
registers[14] = (upvalues[0])
end

end
::p65::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
goto p196
::p78::
tick(78)
do
do
registers[15] = (upvalues[2])
end

end
::p79::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p80::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p44
::p83::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
::p84::
do
do
registers[14] = (upvalues[3])
end

end
::p85::
do
do
registers[15] = (upvalues[2])
end

end
::p86::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p87::
do
do
registers[16] = (upvalues[0])
end

end
goto p140
::p89::
tick(89)
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p90::
do
do
registers[3] = (upvalues[0])
end

end
::p91::
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
::p92::
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
::p94::
do
do
registers[5] = {
}
end

end
::p95::
do
do
registers[6] = (0)
end

end
::p96::
do
do
registers[7] = (255)
end

end
::p97::
do
do
registers[8] = (1)
end

end
::p98::
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
if branch_taken then goto p202 end
::p99::
do
do
(registers)[26] = (registers[26] - 440)
end

end
::p100::
do
do
registers[26] = 30061 + registers[26]
end

end
::p101::
do
do
registers[26] = registers[26] + -29713
end

end
::p102::
do
do
registers[19][83] = (registers[26])
end

end
::p103::
do
do
registers[25][38] = 77
end

end
::p104::
do
do
for f = 18, 27, 1 do
    (registers)[f] = nil
end
end

end
goto p78
::p140::
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
::p141::
do
do
a = 14
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p142::
do
do
registers[15] = new_frame(1)
end

end
goto p208
::p144::
tick(144)
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
if branch_taken then goto p188 end
::p155::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p222
::p157::
do
do
registers[10] = (upvalues[1])
end

end
::p158::
do
do
registers[11] = (upvalues[0])
end

end
::p159::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p160::
do
do
registers[12] = (upvalues[0])
end

end
::p161::
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
::p162::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p163::
do
do
registers[11] = (upvalues[1])
end

end
::p164::
do
do
registers[12] = (upvalues[0])
end

end
::p165::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p166::
do
do
registers[13] = (upvalues[0])
end

end
::p167::
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
::p168::
do
do
a = 11
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p169::
do
do
(registers[5])[registers[10]] = registers[11]
end

end
goto p202
::p181::
do
do
registers[17] = (upvalues[2])
end

end
::p182::
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
::p183::
do
do
a = 15
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p40
::p188::
do
do
registers[14] = (upvalues[2])
end

end
::p189::
do
do
top = 14;
(registers)[top] = registers[top]()
end

end
::p190::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p196 end
goto p64
::p192::
tick(192)
do
do
registers[10] = (0)
end

end
::p193::
do
do
registers[11] = (255)
end

end
::p194::
do
do
registers[12] = (1)
end

end
::p195::
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
if branch_taken then goto p144 end
::p196::
do
do
registers[15] = (upvalues[2])
end

end
::p197::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p198::
do
do
(registers)[15] = registers[5][registers[15]]
end

end
goto p53
::p202::
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
if branch_taken then goto p11 end
goto p216
::p204::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p205::
do
do
registers[1] = (upvalues[1])
end

end
::p206::
do
do
registers[2] = (upvalues[2])
end

end
goto p89
::p208::
do
do
registers[16] = (upvalues[2])
end

end
::p209::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
::p210::
do
do
registers[17] = (upvalues[0])
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
a = (15)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p213::
do
do
(registers[5])[registers[14]] = registers[15]
end

end
goto p144
::p216::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p217::
do
do
registers[6] = (1)
end

end
::p218::
do
do
registers[7] = (upvalues[0])
end

end
::p219::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p220::
do
do
registers[8] = (1)
end

end
::p221::
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
if branch_taken then goto p222 end
::p222::
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
if branch_taken then goto p192 end
goto p59
end
end
