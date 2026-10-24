
-- Function f415; 38 recovered instruction blocks.
F.f415=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f415",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f415 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p81
::p12::
tick(12)
do
do
registers[7] = (upvalues[1])
end

end
::p13::
do
do
(registers)[8] = upvalues[0][46]
end

end
::p14::
do
do
(registers)[9] = registers[6]
end

end
goto p107
::p23::
tick(23)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p24::
do
do
(registers)[4] = registers[2]
end

end
::p25::
do
do
(registers)[5] = registers[3]
end

end
goto p119
::p34::
tick(34)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p50
::p36::
tick(36)
do
do
(registers)[2] = registers[8]
end

end
::p37::
do
do
(registers)[3] = registers[6]
end

end
::p50::
tick(50)
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
if branch_taken then goto p68 end
goto p23
::p59::
tick(59)
do
do
(registers)[4] = environment["ipairs"]
end

end
::p60::
do
do
(registers)[5] = environment["entity"]
end

end
::p61::
do
do
a = registers
z = (5)
q = (registers)
end

end
::p62::
do
do
m = 5
q = q[m]
end

end
::p63::
do
do
m = ("get_entities")
q = q[m]
end

end
::p64::
do
do
(a)[z] = q
end

end
::p65::
do
do
a = 5
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
::p66::
do
do
a = 4
z = (0)
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
::p67::
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
if branch_taken then goto p50 end
::p68::
do
do
(registers)[7] = upvalues[0][42]
end

end
::p69::
do
do
(registers)[8] = registers[6]
end

end
::p70::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p34
::p81::
do
do
(registers)[1] = upvalues[0][32]
end

end
::p82::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p83::
do
do
(registers)[2] = environment["math"]
end

end
::p84::
do
do
registers[2] = (registers[2]["huge"])
end

end
::p85::
do
do
(registers)[3] = nil
end

end
goto p59
::p107::
do
do
a = 8
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
::p108::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p109::
do
do
a = (8)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["dist"]
end

end
::p110::
do
do
registers[10] = (upvalues[1])
end

end
::p111::
do
do
(registers)[11] = upvalues[0][46]
end

end
::p112::
do
do
(registers)[12] = registers[1]
end

end
::p113::
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
::p114::
do
do
a = 10
z = (0)
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
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p116::
branch_taken=false
do
do
if not (registers[8] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p36
::p119::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (4)
return unpack_range(a + 3 - 2, registers, a)
end

end
end
end
