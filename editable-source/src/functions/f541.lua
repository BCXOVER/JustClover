
-- Function f541; 75 recovered instruction blocks.
F.f541=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f541",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f541 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p15
::p9::
tick(9)
do
do
(registers)[17] = registers[17] * registers[18]
end

end
::p10::
do
do
a = 14
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p11::
do
do
(registers)[6] = registers[6] + registers[14]
end

end
::p12::
do
do
(registers)[14] = upvalues[0][78]
end

end
::p13::
do
do
registers[15] = (-1)
end

end
goto p68
::p15::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p16::
do
do
(registers)[4] = environment["cvar"]
end

end
::p17::
do
do
registers[4] = (registers[4]["sv_gravity"])
end

end
::p18::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
goto p168
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
    (registers)[10 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p176
::p40::
tick(40)
branch_taken=false
do
do
if not (registers[14] <= 0.99) then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p159
::p56::
tick(56)
do
do
(registers)[16] = registers[16] * registers[17]
end

end
::p57::
do
do
registers[17] = (registers[8]["z"])
end

end
::p58::
do
do
(registers)[17] = registers[17] + registers[9]
end

end
::p59::
do
do
(registers)[18] = upvalues[0][28]
end

end
::p60::
do
do
top = 18;
(registers)[top] = registers[top]()
end

end
goto p9
::p62::
tick(62)
do
do
(registers)[10] = registers[3]
end

end
::p63::
do
do
registers[11] = ("m_vecVelocity")
end

end
::p64::
do
do
a = 9
z = (3)
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
::p65::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p66::
do
do
registers[9] = (registers[8]["z"])
end

end
goto p180
::p68::
do
do
registers[16] = (registers[7]["x"])
end

end
::p69::
do
do
registers[17] = (registers[7]["y"])
end

end
::p70::
do
do
registers[18] = (registers[7]["z"])
end

end
::p71::
do
do
registers[19] = (registers[6]["x"])
end

end
::p72::
do
do
registers[20] = (registers[6]["y"])
end

end
::p73::
do
do
registers[21] = (registers[6]["z"])
end

end
::p74::
do
do
a = 14
top = a + 8 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p40
::p76::
tick(76)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p77::
do
do
(registers)[6] = upvalues[0][28]
end

end
::p78::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p79::
do
do
(registers)[5] = registers[5] * registers[6]
end

end
::p80::
do
do
a = (registers)
z = 6
end

end
::p81::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p82::
do
do
(a)[z] = q
end

end
goto p126
::p86::
tick(86)
do
do
(registers)[9] = registers[5]
end

end
goto p154
::p88::
tick(88)
do
do
(registers)[4] = registers[4] * registers[5]
end

end
::p89::
do
do
a = (registers)
end

end
::p90::
do
do
z = (5)
q = (environment)
end

end
::p91::
do
do
m = "cvar"
q = (q[m])
a[z] = q
end

end
::p92::
do
do
registers[5] = (registers[5]["sv_jump_impulse"])
end

end
::p93::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
goto p76
::p95::
tick(95)
do
do
registers[9] = -registers[4]
end

end
goto p144
::p104::
do
do
(registers)[7] = registers[6]
end

end
::p105::
do
do
a = (registers)
end

end
::p106::
do
do
z = 14
end

end
::p107::
do
do
q = (upvalues)
end

end
::p108::
do
do
m = 1
q = (q[m])
a[z] = q
end

end
::p109::
do
do
registers[15] = (registers[8]["x"])
end

end
goto p163
::p126::
do
do
(registers)[7] = registers[1]
end

end
::p127::
do
do
registers[8] = (upvalues[1])
end

end
::p128::
do
do
(registers)[9] = upvalues[0][47]
end

end
goto p62
::p144::
tick(144)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p86
::p154::
do
do
registers[10] = (1)
end

end
::p155::
do
do
(registers)[11] = registers[2]
end

end
::p156::
do
do
registers[12] = (1)
end

end
::p157::
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
if branch_taken then goto p32 end
goto p176
::p159::
do
do
a = (registers)
z = 15
end

end
::p160::
do
do
q = registers
m = 7
q = (q[m])
end

end
::p161::
do
do
(a)[z] = q
end

end
::p162::
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
return registers[15]
end

end
::p163::
do
do
(registers)[16] = upvalues[0][28]
end

end
::p164::
do
do
top = 16;
(registers)[top] = registers[top]()
end

end
::p165::
do
do
(registers)[15] = registers[15] * registers[16]
end

end
goto p172
::p168::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p169::
do
do
(registers)[5] = upvalues[0][28]
end

end
::p170::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
goto p88
::p172::
do
do
registers[16] = (registers[8]["y"])
end

end
::p173::
do
do
(registers)[17] = upvalues[0][28]
end

end
::p174::
do
do
top = 17;
(registers)[top] = registers[top]()
end

end
goto p56
::p176::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p177::
do
do
(registers)[10] = registers[6]
end

end
::p178::
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
return registers[10]
end

end
::p180::
do
do
(registers)[9] = registers[9] > 0
end

end
::p181::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p95
end
end
