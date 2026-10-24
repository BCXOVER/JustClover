
-- Function f552; 55 recovered instruction blocks.
F.f552=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f552",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f552 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p62
::p3::
tick(3)
do
do
(registers)[4] = registers[4] + registers[10]
end

end
goto p171
::p5::
tick(5)
do
do
registers[4] = (registers[4] - registers[10])
end

end
goto p171
::p7::
tick(7)
branch_taken=false
do
do
if registers[5] ~= 256 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p7
::p12::
tick(12)
do
do
a = (D.f553)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[11] = x
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
::p13::
do
do
a = (D.f554)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[12] = x
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
::p14::
do
do
registers[13] = registers[10] % 3
end

end
goto p31
::p29::
tick(29)
branch_taken=false
do
do
if not (registers[6] <= 64) then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p3
::p31::
branch_taken=false
do
do
if registers[13] ~= 1 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p160 end
goto p129
::p35::
tick(35)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 7
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p139 end
::p36::
tick(36)
do
do
registers[5] = registers[5] + 1
end

end
goto p151
::p38::
tick(38)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p7
::p60::
tick(60)
do
do
(registers)[12] = registers[13]
end

end
goto p160
::p62::
tick(62)
do
do
registers[1] = {
}
end

end
::p63::
do
do
registers[2] = {
}
end

end
::p64::
do
do
registers[3] = {
}
end

end
::p65::
do
do
a = (registers)
z = 4
end

end
::p66::
do
do
q = 0;
(a)[z] = (q)
end

end
::p67::
do
do
registers[5] = (0)
end

end
::p68::
do
do
registers[6] = (0)
end

end
goto p154
::p81::
branch_taken=false
do
do
if not (registers[6] <= 128) then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
::p111::
do
do
registers[4] = (registers[4] - registers[10])
end

end
goto p171
::p113::
tick(113)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p114::
do
do
(registers)[7] = environment["pairs"]
end

end
::p115::
do
do
(registers)[8] = registers[3]
end

end
goto p141
::p117::
do
do
(registers)[7] = registers[4]
end

end
::p118::
do
do
if not (N) then

else
    for T, environment, W in next, N do
        if not (T >= 1) then

        else
            environment[2] = environment;
            (environment)[3] = (registers[T]);
            (environment)[1] = (3)
            N[T] = nil
        end
    end
end
return registers[7]
end

end
::p129::
do
do
registers[13] = {
}
end

end
::p130::
do
do
(registers)[11] = registers[13]
end

end
::p131::
do
do
registers[13] = {
}
end

end
goto p60
::p133::
do
do
(registers)[4] = registers[4] + registers[10]
end

end
goto p171
::p135::
tick(135)
do
do
(registers)[10] = registers[2][registers[9]]
end

end
::p136::
do
do
(registers)[11] = registers[1][registers[8]]
end

end
::p137::
branch_taken=false
do
do
if registers[11] ~= registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p36
::p139::
tick(139)
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
    (registers)[7 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p113
::p141::
do
do
a = 7
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
::p142::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (7)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p171 end
::p143::
do
do
registers[23] = 15077 + registers[23]
end

end
::p144::
do
do
registers[23] = registers[23] + -15079
end

end
::p145::
do
do
registers[20][62] = (registers[23])
end

end
::p146::
do
do
registers[22][159] = 61
end

end
::p147::
do
do
a = (15)
z = 25
end

end
::p148::
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
goto p62
::p151::
do
do
registers[6] = registers[6] + 1
end

end
::p152::
branch_taken=false
do
do
if not (registers[6] <= 32) then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p5
::p154::
do
do
registers[7] = (0)
end

end
::p155::
do
do
registers[8] = (255)
end

end
::p156::
do
do
registers[9] = (1)
end

end
goto p35
::p160::
do
do
(registers[3])[registers[11]] = registers[12]
end

end
::p161::
do
do
a = (registers)
z = 2
end

end
::p162::
do
do
a = (a[z])
z = registers
q = (12)
end

end
::p163::
do
do
z = z[q]
end

end
::p164::
do
do
q = registers
m = 10
end

end
::p165::
do
do
q = (q[m])
a[z] = q
end

end
::p166::
do
do
(registers[1])[registers[11]] = registers[12]
end

end
goto p139
::p171::
branch_taken=false
do
do
a = (7)
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
if branch_taken then goto p135 end
goto p38
end
end
