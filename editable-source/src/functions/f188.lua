
-- Function f188; 78 recovered instruction blocks.
F.f188=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f188",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f188 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p44
::p2::
tick(2)
do
do
registers[17] = (registers[9]["slots"])
end

end
::p3::
do
do
(registers)[17] = registers[17][registers[16]]
end

end
::p4::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p5::
do
do
(registers)[19] = registers[11]
end

end
::p6::
branch_taken=false
do
do
if not registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p70
::p14::
tick(14)
do
do
(registers)[12] = registers[11]
end

end
::p15::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p206 end
goto p175
::p17::
tick(17)
do
do
registers[1] = (registers[1] == "Anti-Aim")
end

end
::p18::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p23
::p20::
tick(20)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p132
::p23::
do
do
registers[1] = (upvalues[1])
end

end
::p24::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
goto p127
::p38::
tick(38)
do
do
registers[16] = (10)
end

end
::p39::
do
do
(registers)[17] = registers[12]
end

end
::p40::
do
do
a = 15
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
::p41::
do
do
a = 13
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p42::
do
do
(registers)[12] = registers[13]
end

end
goto p112
::p44::
do
do
(registers)[1] = upvalues[0]["switch"]
end

end
::p45::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p46::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p17
::p50::
tick(50)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p194
::p70::
do
do
registers[19] = (registers[16] <= registers[12])
end

end
goto p116
::p72::
tick(72)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p102
::p74::
tick(74)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p151
::p76::
tick(76)
do
do
registers[11] = (registers[7]["state_name"])
end

end
::p77::
do
do
registers[11] = registers[2] == registers[11]
end

end
goto p72
::p79::
tick(79)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p197
::p92::
tick(92)
do
do
registers[11] = (registers[11] == "Hidden")
end

end
goto p20
::p102::
do
do
registers[11] = (registers[7]["builder_type"])
end

end
::p103::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p104::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p92
::p106::
tick(106)
do
do
registers[11] = (registers[10] == "Random")
end

end
goto p79
::p108::
tick(108)
do
do
registers[3] = (1)
end

end
::p109::
do
do
registers[4] = (upvalues[2])
end

end
::p110::
do
do
registers[4] = (#registers[4])
end

end
goto p135
::p112::
do
do
registers[13] = (1)
end

end
::p113::
do
do
registers[14] = (10)
end

end
::p114::
do
do
registers[15] = (1)
end

end
::p115::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 13
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p159 end
::p116::
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p159
::p125::
tick(125)
do
do
registers[12] = (0)
end

end
goto p138
::p127::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p128::
do
do
registers[2] = (registers[2]["conditions"])
end

end
::p129::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p130::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p108
::p132::
do
do
registers[11] = (registers[10] == "Center")
end

end
::p133::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p106
::p135::
do
do
registers[5] = (1)
end

end
::p136::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 3
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p194 end
goto p151
::p138::
tick(138)
do
do
(registers)[13] = upvalues[3][151]
end

end
::p139::
do
do
a = (registers)
z = 14
end

end
::p140::
do
do
q = 0;
(a)[z] = (q)
end

end
::p141::
do
do
(registers)[15] = upvalues[3][162]
end

end
goto p38
::p151::
do
do
registers[11] = (registers[8]["values"])
end

end
::p152::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p153::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p154::
do
do
registers[11] = (registers[11] == "Custom")
end

end
goto p14
::p159::
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
    (registers)[13 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p50
::p175::
do
do
(registers)[12] = upvalues[3][154]
end

end
::p176::
do
do
registers[13] = (registers[9]["count"])
end

end
::p177::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p178::
do
do
a = 13
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
::p179::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p206
::p182::
tick(182)
do
do
registers[10] = (registers[8]["type"])
end

end
::p183::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p184::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p185::
do
do
a = (registers)
z = 11
end

end
::p186::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p187::
do
do
(a)[z] = q
end

end
::p188::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p76
::p190::
tick(190)
do
do
(registers)[7] = upvalues[2][registers[6]]
end

end
::p191::
do
do
registers[8] = (registers[7]["modifiers"])
end

end
::p192::
do
do
registers[9] = (registers[8]["custom"])
end

end
goto p182
::p194::
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
    (registers)[3 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p190 end
goto p208
::p197::
do
do
registers[11] = (registers[10] == "Spin")
end

end
goto p74
::p206::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p138 end
goto p125
::p208::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p209::
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
