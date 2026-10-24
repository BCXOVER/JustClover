
-- Function f549; 58 recovered instruction blocks.
F.f549=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f549",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f549 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p123
::p2::
tick(2)
do
do
registers[4] = (registers[4] - registers[11])
end

end
goto p109
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
::p5::
do
do
registers[7] = (0)
end

end
::p6::
do
do
(registers)[8] = environment["pairs"]
end

end
::p7::
do
do
(registers)[9] = registers[3]
end

end
::p8::
do
do
a = 8
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
goto p21
::p19::
tick(19)
branch_taken=false
do
do
if registers[5] ~= 256 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p19
::p21::
tick(21)
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (8)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p109 end
::p22::
tick(22)
do
do
(registers)[11] = registers[2][registers[10]]
end

end
::p23::
do
do
(registers)[12] = registers[1][registers[9]]
end

end
::p24::
branch_taken=false
do
do
if registers[12] ~= registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p103
::p52::
tick(52)
branch_taken=false
do
do
if not (registers[6] <= 128) then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p2
::p63::
tick(63)
do
do
registers[5] = (0)
end

end
::p64::
do
do
registers[6] = (0)
end

end
::p65::
do
do
registers[7] = (0)
end

end
::p66::
do
do
registers[8] = (255)
end

end
::p67::
do
do
registers[9] = (1)
end

end
::p68::
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
if branch_taken then goto p112 end
goto p21
::p70::
tick(70)
do
do
a = (D.f550)
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
::p71::
do
do
a = (D.f551)
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
::p72::
do
do
registers[13] = registers[10] % 3
end

end
goto p135
::p75::
tick(75)
do
do
(registers)[12] = registers[13]
end

end
::p93::
tick(93)
do
do
(registers[3])[registers[11]] = registers[12]
end

end
::p94::
do
do
a = (registers)
z = 2
end

end
::p95::
do
do
a = (a[z])
z = registers
q = (12)
end

end
::p96::
do
do
z = z[q]
end

end
::p97::
do
do
q = registers
m = 10
end

end
::p98::
do
do
q = (q[m])
a[z] = q
end

end
::p99::
do
do
(registers[1])[registers[11]] = registers[12]
end

end
goto p112
::p101::
tick(101)
branch_taken=false
do
do
if registers[6] ~= registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p105 end
goto p131
::p103::
do
do
registers[5] = registers[5] + 1
end

end
goto p101
::p105::
tick(105)
do
do
registers[6] = registers[6] + 1
end

end
::p106::
branch_taken=false
do
do
if not (registers[6] <= 32) then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p133
::p108::
do
do
(registers)[4] = registers[4] + registers[11]
end

end
::p109::
tick(109)
branch_taken=false
do
do
a = (8)
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
if branch_taken then goto p22 end
goto p149
::p112::
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
if branch_taken then goto p70 end
goto p4
::p123::
do
do
registers[1] = {
}
end

end
::p124::
do
do
registers[2] = {
}
end

end
::p125::
do
do
registers[3] = {
}
end

end
::p126::
do
do
registers[4] = (0)
end

end
goto p63
::p128::
branch_taken=false
do
do
if not (registers[6] <= 64) then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p152
::p131::
do
do
(registers)[7] = registers[11]
end

end
goto p105
::p133::
do
do
registers[4] = (registers[4] - registers[11])
end

end
goto p109
::p135::
branch_taken=false
do
do
if registers[13] ~= 1 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p145
::p137::
do
do
(registers)[8] = (registers[7] ^ 3)
end

end
::p138::
do
do
a = (registers)
z = 8
end

end
::p139::
do
do
q = registers
m = 4
q = (q[m])
end

end
::p140::
do
do
m = registers
x = 8
end

end
::p141::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p142::
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
return registers[8]
end

end
::p145::
do
do
registers[13] = {
}
end

end
::p146::
do
do
(registers)[11] = registers[13]
end

end
::p147::
do
do
registers[13] = {
}
end

end
goto p75
::p149::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p19
::p152::
do
do
a = (registers)
z = 4
end

end
::p153::
do
do
q = registers
m = 4
q = (q[m])
end

end
::p154::
do
do
m = registers
x = 11
end

end
::p155::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
goto p109
end
end
