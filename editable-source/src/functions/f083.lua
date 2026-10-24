
-- Function f83; 68 recovered instruction blocks.
F.f83=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f83",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f83 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p154
::p3::
tick(3)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p4::
do
do
(registers)[9] = environment["pcall"]
end

end
::p5::
do
do
(registers)[10] = environment["string"]
end

end
goto p33
::p7::
tick(7)
do
do
(registers)[25] = constant_cache[10]
end

end
::p8::
do
do
registers[26] = ("<\195Y")
end

end
::p9::
do
do
registers[27] = (3)
end

end
::p10::
do
do
registers[28] = (3)
end

end
::p11::
do
do
a = 25
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p12::
do
do
(registers)[24] = registers[24] + registers[25]
end

end
::p13::
do
do
registers[24] = 866 + registers[24]
end

end
::p14::
do
do
registers[24] = registers[24] + -1282
end

end
::p15::
do
do
registers[23][62] = (registers[24])
end

end
::p16::
do
do
registers[23][84] = 60
end

end
::p17::
do
do
for f = 16, 28, 1 do
    (registers)[f] = nil
end
end

end
goto p61
::p20::
tick(20)
do
do
registers[14] = (#registers[6])
end

end
::p21::
do
do
registers[14] = registers[14] + 1
end

end
::p22::
do
do
(registers[6])[registers[14]] = registers[5]
end

end
goto p28
::p24::
tick(24)
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
::p25::
tick(25)
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
    (registers)[9 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p3
::p28::
do
do
registers[14] = registers[13] .. "%"
end

end
::p29::
do
do
registers[14] = "function:builtin#" .. registers[14]
end

end
::p30::
do
do
registers[14] = (registers[13] .. registers[14])
end

end
::p31::
do
do
registers[8] = (registers[8] .. registers[14])
end

end
goto p82
::p33::
do
do
registers[10] = (registers[10]["format"])
end

end
::p34::
do
do
(registers)[11] = registers[7]
end

end
::p35::
do
do
(registers)[12] = environment["table"]
end

end
::p36::
do
do
registers[12] = (registers[12]["unpack"])
end

end
::p37::
do
do
(registers)[13] = registers[6]
end

end
goto p95
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
registers[12] = {
}
end

end
::p56::
do
do
(registers)[13] = upvalues[1]["CHECK_16_FAILED"]
end

end
::p57::
do
do
registers[12]["ban_num"] = (registers[13])
end

end
::p58::
do
do
registers[12]["ban_info"] = "copy [fp][0x01]"
end

end
::p59::
do
do
a = (11)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p24
::p61::
tick(61)
do
do
registers[11] = (1)
end

end
::p62::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 9
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p82 end
::p63::
tick(63)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p64::
do
do
registers[9] = (1)
end

end
::p65::
do
do
(registers)[10] = registers[4]
end

end
goto p91
::p82::
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
    (registers)[9 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p63
::p91::
do
do
registers[11] = (1)
end

end
::p92::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 9
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p25 end
::p93::
branch_taken=false
do
do
if registers[24] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p141
::p95::
do
do
registers[14] = (1)
end

end
::p96::
do
do
registers[15] = (registers[4] * 4)
end

end
::p97::
do
do
a = 12
z = (4)
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
::p98::
do
do
a = 9
z = (0)
q = 3
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
::p99::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p143
::p101::
do
do
registers[7] = registers[7] .. "%s%%"
end

end
::p102::
do
do
registers[8] = registers[8] .. "nil%"
end

end
goto p25
::p104::
do
do
registers[7] = registers[7] .. "%s%s"
end

end
::p105::
do
do
(registers)[13] = registers[3]
end

end
::p106::
do
do
registers[14] = (123)
end

end
::p107::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p20
::p120::
tick(120)
do
do
registers[8] = ("")
end

end
::p121::
do
do
registers[9] = (1)
end

end
::p122::
do
do
(registers)[10] = registers[4]
end

end
goto p61
::p141::
do
do
registers[24] = (336)
end

end
goto p7
::p143::
do
do
registers[11] = (#registers[10])
end

end
::p144::
branch_taken=false
do
do
if not (not (registers[11] < 100)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p54
::p154::
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
::p155::
do
do
(registers)[2] = registers[1]
end

end
::p156::
do
do
a = (D.f84)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
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
::p157::
do
do
registers[4] = registers[1] / 4
end

end
::p158::
do
do
registers[4] = registers[4] / 4
end

end
::p159::
do
do
a = (D.f85)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[5] = x
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
::p160::
do
do
registers[6] = {
}
end

end
::p161::
do
do
registers[7] = ("")
end

end
goto p120
end
end
