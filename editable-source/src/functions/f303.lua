
-- Function f303; 49 recovered instruction blocks.
F.f303=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f303",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f303 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p69
::p2::
tick(2)
do
do
(registers)[16] = (registers[16] - 472)
end

end
::p3::
do
do
registers[16] = 23732 + registers[16]
end

end
::p4::
do
do
registers[16] = registers[16] + -23276
end

end
::p5::
do
do
registers[9][74] = (registers[16])
end

end
::p6::
do
do
registers[15][94] = 68
end

end
::p7::
do
do
for f = 8, 17, 1 do
    (registers)[f] = nil
end
end

end
goto p69
::p13::
tick(13)
do
do
registers[5] = (upvalues[1])
end

end
::p14::
do
do
(registers)[6] = registers[1]
end

end
::p15::
do
do
(registers)[7] = registers[4]
end

end
goto p36
::p24::
tick(24)
do
do
registers[16] = (21)
end

end
::p25::
tick(25)
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
::p34::
do
do
registers[16] = (99)
end

end
goto p2
::p36::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p37::
do
do
registers[5] = (upvalues[2])
end

end
::p38::
do
do
(registers)[6] = registers[4]
end

end
::p39::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p92
::p41::
tick(41)
do
do
registers[4] = (upvalues[5])
end

end
::p42::
do
do
(registers)[5] = registers[3]
end

end
::p43::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p102
::p45::
tick(45)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p46::
do
do
(registers)[2] = environment["pairs"]
end

end
::p47::
do
do
(registers)[3] = upvalues[3]["applied"]
end

end
::p48::
do
do
a = 2
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
::p49::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (2)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p102 end
goto p2
::p59::
tick(59)
do
do
(registers)[5] = upvalues[4][42]
end

end
::p60::
do
do
(registers)[6] = registers[3]
end

end
::p61::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p62::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p41
::p64::
tick(64)
do
do
(registers)[4] = upvalues[4][50]
end

end
::p65::
do
do
(registers)[5] = registers[3]
end

end
::p66::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p67::
branch_taken=false
do
do
if registers[4] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p41 end
goto p59
::p69::
do
do
a = {
    ...,
}
for f = 1, 1, 1 do
    registers[f] = (a[f])
end
end

end
::p70::
do
do
(registers)[2] = environment["ipairs"]
end

end
::p71::
do
do
registers[3] = (upvalues[0])
end

end
::p72::
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
::p73::
do
do
a = 2
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
::p74::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (2)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p92 end
::p75::
do
do
registers[15] = operand_k
end

end
::p76::
do
do
registers[9] = (code_metadata)
end

end
::p77::
do
do
(registers)[16] = constant_cache[5]
end

end
::p78::
do
do
(registers)[17] = constant_cache[6]
end

end
::p79::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p80::
do
do
registers[16] = (451 ~= registers[16])
end

end
::p81::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p24
::p92::
branch_taken=false
do
do
a = (2)
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
if branch_taken then goto p13 end
goto p45
::p102::
branch_taken=false
do
do
a = (2)
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
if branch_taken then goto p64 end
::p105::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p106::
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
end
end
