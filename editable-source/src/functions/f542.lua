
-- Function f542; 48 recovered instruction blocks.
F.f542=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f542",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f542 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p120
::p6::
tick(6)
do
do
a = (6)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p9::
tick(9)
do
do
(registers[3])[registers[7]] = registers[6]
end

end
::p10::
tick(10)
branch_taken=false
do
do
a = (5)
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
if branch_taken then goto p9 end
goto p54
::p16::
tick(16)
do
do
(registers)[7] = registers[4]
end

end
::p17::
do
do
a = (6)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p18::
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
::p34::
tick(34)
do
do
registers[9] = (upvalues[1])
end

end
::p35::
do
do
(registers)[10] = registers[5]
end

end
::p36::
do
do
(registers)[11] = registers[7]
end

end
::p37::
do
do
(registers)[12] = registers[2]
end

end
::p38::
do
do
a = 9
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p39::
do
do
(registers)[10] = registers[3][registers[9]]
end

end
goto p99
::p43::
tick(43)
do
do
(registers)[6] = environment["error"]
end

end
::p44::
do
do
registers[7] = ("Failed to load script, error code: 0x01")
end

end
::p45::
do
do
registers[8] = (0)
end

end
goto p6
::p54::
tick(54)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p55::
do
do
a = (upvalues[0]);
(registers)[5] = a[2][a[1]]
end

end
::p56::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p57::
do
do
(registers)[6] = environment["pairs"]
end

end
::p58::
do
do
(registers)[7] = environment["env_functions"]
end

end
::p59::
do
do
a = 6
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
::p60::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (6)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p134 end
goto p92
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
registers[6] = (#registers[4])
end

end
::p90::
branch_taken=false
do
do
if registers[6] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p43
::p92::
do
do
registers[21] = 27893 + registers[21]
end

end
::p93::
do
do
registers[21] = registers[21] + -27992
end

end
::p94::
do
do
registers[20][123] = (registers[21])
end

end
::p95::
do
do
registers[20][48] = 119
end

end
::p96::
do
do
for f = 13, 22, 1 do
    (registers)[f] = nil
end
end

end
goto p120
::p99::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p143
::p120::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p121::
do
do
registers[3] = {
}
end

end
::p122::
do
do
registers[4] = {
}
end

end
::p123::
do
do
(registers)[5] = environment["ipairs"]
end

end
::p124::
do
do
(registers)[6] = registers[1]
end

end
::p125::
do
do
a = 5
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
::p126::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (5)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p10 end
::p127::
do
do
registers[24] = (code_metadata)
end

end
::p128::
do
do
registers[30] = operand_k
end

end
::p129::
do
do
registers[24][134] = 159
end

end
::p130::
do
do
registers[30][47] = 53
end

end
::p131::
do
do
for f = 23, 30, 1 do
    (registers)[f] = nil
end
end

end
goto p54
::p134::
tick(134)
branch_taken=false
do
do
a = (6)
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
if branch_taken then goto p34 end
goto p88
::p137::
do
do
a = (D.f543)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[6] = x
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
::p138::
do
do
a = upvalues[2]
a[2][a[1]] = registers[6]
end

end
::p139::
do
do
registers[6] = (upvalues[3])
end

end
goto p16
::p143::
do
do
(registers[4])[registers[10]] = registers[8]
end

end
goto p134
end
end
