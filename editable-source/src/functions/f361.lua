
-- Function f361; 75 recovered instruction blocks.
F.f361=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f361",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f361 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p63
::p2::
tick(2)
do
do
(registers)[8] = environment["tostring"]
end

end
::p3::
do
do
registers[9] = (registers[1]["slots"])
end

end
::p4::
do
do
(registers)[9] = registers[9][registers[7]]
end

end
::p5::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p6::
do
do
a = 9
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
::p7::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p8::
do
do
registers[8] = "|" .. registers[8]
end

end
::p9::
do
do
registers[3] = (registers[3] .. registers[8])
end

end
goto p96
::p13::
tick(13)
do
do
a = (upvalues[1]);
(registers)[1] = a[2][a[1]]
end

end
::p14::
do
do
(registers)[2] = environment["tostring"]
end

end
::p15::
do
do
registers[3] = (upvalues[4])
end

end
::p16::
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
::p17::
do
do
a = 2
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p18::
do
do
registers[2] = "|Solo|" .. registers[2]
end

end
goto p107
::p21::
tick(21)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p22::
do
do
(registers)[4] = registers[3]
end

end
::p23::
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
return registers[4]
end

end
::p39::
tick(39)
do
do
(registers)[1] = upvalues[2]["custom"]
end

end
::p40::
do
do
registers[2] = (upvalues[3])
end

end
::p41::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p42::
do
do
a = (upvalues[1]);
(registers)[3] = a[2][a[1]]
end

end
::p43::
do
do
(registers)[4] = environment["tostring"]
end

end
::p44::
do
do
(registers)[5] = registers[2]
end

end
::p45::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p46::
do
do
(registers)[5] = environment["tostring"]
end

end
::p47::
do
do
registers[6] = (registers[1]["randomize"])
end

end
::p48::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p49::
do
do
a = 6
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
::p50::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p51::
do
do
registers[5] = "|" .. registers[5]
end

end
goto p100
::p54::
tick(54)
do
do
a = (upvalues[1]);
(registers)[1] = a[2][a[1]]
end

end
::p55::
do
do
(registers)[2] = environment["tostring"]
end

end
::p56::
do
do
(registers)[3] = upvalues[2]["double"]
end

end
::p57::
do
do
registers[3] = (registers[3]["left"])
end

end
::p58::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p59::
do
do
a = 3
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
::p60::
do
do
a = 2
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p61::
do
do
(registers)[3] = environment["tostring"]
end

end
goto p139
::p63::
do
do
a = (upvalues[0]);
(registers)[1] = a[2][a[1]]
end

end
::p64::
branch_taken=false
do
do
if registers[1] ~= "Double" then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p54
::p80::
do
do
a = (upvalues[0]);
(registers)[1] = a[2][a[1]]
end

end
::p81::
branch_taken=false
do
do
if registers[1] ~= "Custom" then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p39
::p96::
tick(96)
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p21
::p100::
do
do
registers[4] = (registers[4] .. registers[5])
end

end
::p101::
do
do
registers[4] = "|Custom|" .. registers[4]
end

end
::p102::
do
do
registers[3] = (registers[3] .. registers[4])
end

end
::p103::
do
do
registers[4] = (1)
end

end
::p104::
do
do
(registers)[5] = registers[2]
end

end
::p105::
do
do
registers[6] = (1)
end

end
goto p122
::p107::
do
do
registers[1] = (registers[1] .. registers[2])
end

end
::p108::
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
return registers[1]
end

end
::p122::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p96 end
::p123::
do
do
registers[20] = 4804 + registers[20]
end

end
::p124::
do
do
registers[20] = registers[20] + -4969
end

end
::p125::
do
do
registers[13][55] = (registers[20])
end

end
::p126::
do
do
registers[19][129] = 53
end

end
::p127::
do
do
for f = 12, 21, 1 do
    (registers)[f] = nil
end
end

end
goto p54
::p139::
do
do
(registers)[4] = upvalues[2]["double"]
end

end
::p140::
do
do
registers[4] = (registers[4]["right"])
end

end
::p141::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p142::
do
do
a = 4
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
::p143::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p144::
do
do
(registers)[4] = environment["tostring"]
end

end
::p145::
do
do
(registers)[5] = upvalues[2]["double"]
end

end
::p146::
do
do
registers[5] = (registers[5]["randomize"])
end

end
::p147::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p148::
do
do
a = 5
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
::p149::
do
do
a = 4
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p150::
do
do
registers[4] = "|" .. registers[4]
end

end
::p151::
do
do
registers[3] = (registers[3] .. registers[4])
end

end
::p152::
do
do
registers[3] = "|" .. registers[3]
end

end
::p153::
do
do
registers[2] = (registers[2] .. registers[3])
end

end
::p154::
do
do
registers[2] = "|Double|" .. registers[2]
end

end
::p155::
do
do
registers[1] = (registers[1] .. registers[2])
end

end
::p156::
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
return registers[1]
end

end
end
end
