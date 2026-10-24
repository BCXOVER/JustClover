
-- Function f187; 89 recovered instruction blocks.
F.f187=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f187",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f187 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p102
::p2::
tick(2)
do
do
(registers)[12] = registers[11]
end

end
::p3::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p157
::p5::
tick(5)
do
do
registers[12] = (0)
end

end
goto p136
::p7::
tick(7)
do
do
registers[11] = (registers[10] == "Spin")
end

end
goto p145
::p21::
tick(21)
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p153 end
goto p88
::p25::
tick(25)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p110
::p39::
tick(39)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p7
::p41::
tick(41)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p42::
do
do
registers[3] = (1)
end

end
::p43::
do
do
registers[4] = (upvalues[2])
end

end
::p44::
do
do
registers[4] = (#registers[4])
end

end
::p45::
do
do
registers[5] = (1)
end

end
::p46::
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
if branch_taken then goto p110 end
::p47::
do
do
(registers)[26] = (operand_i)
end

end
::p48::
do
do
registers[27] = operand_k
end

end
::p49::
do
do
registers[26][137] = 0
end

end
::p50::
do
do
registers[27][24] = 135
end

end
::p51::
do
do
for f = 20, 27, 1 do
    (registers)[f] = nil
end
end

end
goto p136
::p65::
tick(65)
do
do
(registers)[7] = upvalues[2][registers[6]]
end

end
::p66::
do
do
a = registers
z = (8)
q = (registers)
end

end
::p67::
do
do
m = 7
q = q[m]
end

end
::p68::
do
do
m = ("modifiers")
q = q[m]
end

end
::p69::
do
do
(a)[z] = q
end

end
::p70::
do
do
registers[9] = (registers[8]["custom"])
end

end
goto p116
::p73::
tick(73)
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p122
::p77::
tick(77)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p124
::p79::
tick(79)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p92
::p81::
tick(81)
do
do
registers[14] = (10)
end

end
::p82::
do
do
a = (registers)
z = 15
end

end
::p83::
do
do
q = 1;
(a)[z] = (q)
end

end
::p84::
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
if branch_taken then goto p122 end
::p85::
tick(85)
do
do
registers[11] = (registers[7]["state_name"])
end

end
::p86::
do
do
registers[11] = registers[2] == registers[11]
end

end
goto p77
::p88::
do
do
registers[1] = (upvalues[1])
end

end
::p89::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
goto p153
::p92::
do
do
registers[11] = (registers[10] == "Center")
end

end
::p93::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p166
::p95::
tick(95)
do
do
registers[19] = (registers[16] <= registers[12])
end

end
goto p73
::p97::
tick(97)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p98::
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
::p100::
tick(100)
do
do
registers[11] = (registers[11] == "Default")
end

end
goto p79
::p102::
do
do
(registers)[1] = upvalues[0]["switch"]
end

end
::p103::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p104::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p105::
do
do
registers[1] = (registers[1] == "Anti-Aim")
end

end
goto p21
::p107::
tick(107)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p5
::p110::
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
if branch_taken then goto p65 end
goto p97
::p112::
tick(112)
do
do
(registers)[19] = registers[11]
end

end
::p113::
branch_taken=false
do
do
if not registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p95
::p116::
do
do
registers[10] = (registers[8]["type"])
end

end
::p117::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p118::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p119::
do
do
(registers)[11] = registers[1]
end

end
::p120::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p85
::p122::
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
if branch_taken then goto p140 end
goto p25
::p124::
do
do
registers[11] = (registers[8]["builder_type"])
end

end
::p125::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p126::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p100
::p136::
do
do
(registers)[13] = upvalues[3][151]
end

end
::p137::
do
do
registers[14] = (0)
end

end
::p138::
do
do
(registers)[15] = upvalues[3][162]
end

end
goto p168
::p140::
do
do
registers[17] = (registers[9]["slots"])
end

end
::p141::
do
do
(registers)[17] = registers[17][registers[16]]
end

end
::p142::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
goto p112
::p145::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
::p147::
do
do
registers[11] = (registers[8]["values"])
end

end
::p148::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p149::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p150::
do
do
registers[11] = (registers[11] == "Custom")
end

end
goto p2
::p153::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p154::
do
do
registers[2] = (registers[2]["conditions"])
end

end
::p155::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p41
::p157::
do
do
(registers)[12] = upvalues[3][154]
end

end
::p158::
do
do
a = registers
z = (13)
q = (registers)
end

end
::p159::
do
do
m = 9
q = q[m]
end

end
::p160::
do
do
m = ("count")
q = q[m]
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
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p163::
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
::p164::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p107
::p166::
do
do
registers[11] = (registers[10] == "Random")
end

end
goto p39
::p168::
do
do
registers[16] = (10)
end

end
::p169::
do
do
a = (registers)
z = 17
end

end
::p170::
do
do
q = registers
m = 12
q = (q[m])
end

end
::p171::
do
do
(a)[z] = q
end

end
::p172::
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
::p173::
do
do
a = 13
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p174::
do
do
(registers)[12] = registers[13]
end

end
::p175::
do
do
registers[13] = (1)
end

end
goto p81
end
end
