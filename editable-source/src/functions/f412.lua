
-- Function f412; 87 recovered instruction blocks.
F.f412=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f412",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f412 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p205
::p13::
tick(13)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p166 end
goto p151
::p26::
tick(26)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p32
::p28::
tick(28)
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
if branch_taken then goto p142 end
goto p233
::p30::
tick(30)
do
do
registers[11] = (registers[11] == "Custom")
end

end
goto p171
::p32::
do
do
registers[11] = (registers[8]["type"])
end

end
::p33::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p34::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p35::
do
do
(registers)[11] = (registers[11] ~= "Off")
end

end
goto p120
::p42::
tick(42)
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
if branch_taken then goto p86 end
goto p100
::p64::
tick(64)
do
do
registers[11] = (registers[10] == "Jitter")
end

end
goto p166
::p82::
tick(82)
do
do
registers[1] = (upvalues[1])
end

end
::p83::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
goto p242
::p86::
do
do
registers[17] = (registers[9]["slots"])
end

end
::p87::
do
do
(registers)[17] = registers[17][registers[16]]
end

end
::p88::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p89::
do
do
(registers)[19] = registers[11]
end

end
::p90::
branch_taken=false
do
do
if not registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p195 end
goto p215
::p93::
tick(93)
do
do
a = registers
z = (11)
q = (registers)
end

end
::p94::
do
do
m = 7
q = q[m]
end

end
::p95::
do
do
m = ("state_name")
q = q[m]
end

end
::p96::
do
do
(a)[z] = q
end

end
::p97::
do
do
registers[11] = registers[2] == registers[11]
end

end
goto p13
::p100::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p28
::p102::
tick(102)
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
::p103::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p218
::p120::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p171 end
goto p229
::p123::
tick(123)
do
do
(registers)[13] = upvalues[3][151]
end

end
::p124::
do
do
registers[14] = (0)
end

end
::p125::
do
do
(registers)[15] = upvalues[3][162]
end

end
::p126::
do
do
registers[16] = (10)
end

end
goto p179
::p129::
tick(129)
do
do
registers[13] = (1)
end

end
::p130::
do
do
registers[14] = (10)
end

end
::p131::
do
do
registers[15] = (1)
end

end
goto p214
::p142::
do
do
(registers)[7] = upvalues[2][registers[6]]
end

end
::p143::
do
do
registers[8] = (registers[7]["delay"])
end

end
::p144::
do
do
registers[9] = (registers[8]["custom"])
end

end
::p145::
do
do
(registers)[10] = upvalues[0]["builder"]
end

end
::p146::
do
do
registers[11] = (registers[7]["state_name"])
end

end
::p147::
do
do
(registers)[10] = registers[10][registers[11]]
end

end
::p148::
do
do
registers[10] = (registers[10]["body_yaw"])
end

end
::p149::
do
do
registers[10] = (registers[10]["type"])
end

end
goto p161
::p151::
do
do
registers[11] = (registers[10] == "Off")
end

end
::p152::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p166 end
goto p64
::p161::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p162::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p163::
do
do
(registers)[11] = registers[1]
end

end
::p164::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p93
::p166::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p224
::p169::
tick(169)
do
do
registers[12] = (0)
end

end
goto p123
::p171::
do
do
(registers)[12] = registers[11]
end

end
::p172::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p220
::p179::
do
do
(registers)[17] = registers[12]
end

end
::p180::
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
::p181::
do
do
a = 13
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p182::
do
do
a = (registers)
z = 12
end

end
::p183::
do
do
q = registers
m = 13
q = (q[m])
end

end
::p184::
do
do
(a)[z] = q
end

end
goto p129
::p186::
tick(186)
do
do
registers[3] = (1)
end

end
::p187::
do
do
registers[4] = (upvalues[2])
end

end
::p188::
do
do
registers[4] = (#registers[4])
end

end
::p189::
do
do
registers[5] = (1)
end

end
::p190::
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
if branch_taken then goto p28 end
goto p233
::p195::
tick(195)
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p42
::p205::
do
do
(registers)[1] = upvalues[0]["switch"]
end

end
::p206::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p207::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p208::
do
do
registers[1] = (registers[1] == "Anti-Aim")
end

end
::p209::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p242 end
goto p82
::p214::
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
if branch_taken then goto p42 end
::p215::
do
do
registers[19] = (registers[16] <= registers[12])
end

end
goto p195
::p218::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p169
::p220::
do
do
(registers)[12] = upvalues[3][154]
end

end
::p221::
do
do
registers[13] = (registers[9]["count"])
end

end
::p222::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p102
::p224::
do
do
registers[11] = (registers[7]["builder_type"])
end

end
::p225::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p226::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p227::
do
do
registers[11] = (registers[11] == "Hidden")
end

end
goto p26
::p229::
do
do
registers[11] = (registers[8]["values"])
end

end
::p230::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p231::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p30
::p233::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p234::
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
::p242::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p243::
do
do
registers[2] = (registers[2]["conditions"])
end

end
::p244::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p245::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p186
end
end
