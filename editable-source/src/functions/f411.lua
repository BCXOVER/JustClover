
-- Function f411; 95 recovered instruction blocks.
F.f411=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f411",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f411 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p73
::p2::
tick(2)
do
do
registers[16] = (10)
end

end
::p3::
do
do
(registers)[17] = registers[12]
end

end
::p4::
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
::p5::
do
do
a = 13
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p6::
do
do
(registers)[12] = registers[13]
end

end
::p7::
do
do
registers[13] = (1)
end

end
::p8::
do
do
registers[14] = (10)
end

end
goto p52
::p13::
tick(13)
do
do
registers[1] = (upvalues[1])
end

end
::p14::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
goto p21
::p17::
tick(17)
do
do
registers[11] = (registers[10] == "Jitter")
end

end
goto p135
::p21::
tick(21)
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p22::
do
do
registers[2] = (registers[2]["conditions"])
end

end
::p23::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p196
::p27::
tick(27)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p137
::p29::
tick(29)
do
do
(registers)[13] = upvalues[3][151]
end

end
::p30::
do
do
a = (registers)
z = 14
end

end
::p31::
do
do
q = 0;
(a)[z] = (q)
end

end
::p32::
do
do
(registers)[15] = upvalues[3][162]
end

end
goto p2
::p35::
tick(35)
do
do
registers[11] = (registers[11] == "Custom")
end

end
goto p129
::p37::
tick(37)
do
do
registers[17] = (registers[9]["slots"])
end

end
::p38::
do
do
(registers)[17] = registers[17][registers[16]]
end

end
::p39::
do
do
a = (17)
z = registers[17]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p40::
do
do
(registers)[19] = registers[11]
end

end
::p41::
branch_taken=false
do
do
if not registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p54
::p43::
tick(43)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p127
::p52::
do
do
registers[15] = (1)
end

end
::p53::
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
if branch_taken then goto p148 end
::p54::
do
do
registers[19] = (registers[16] <= registers[12])
end

end
goto p155
::p56::
tick(56)
do
do
(registers)[12] = upvalues[3][154]
end

end
::p57::
do
do
registers[13] = (registers[9]["count"])
end

end
::p58::
do
do
a = (13)
z = registers[13]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p164
::p63::
tick(63)
do
do
registers[11] = (registers[8]["values"])
end

end
::p64::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p65::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p35
::p73::
tick(73)
do
do
(registers)[1] = upvalues[0]["switch"]
end

end
::p74::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p75::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p214
::p101::
tick(101)
do
do
registers[11] = (registers[7]["state_name"])
end

end
::p102::
do
do
registers[11] = registers[2] == registers[11]
end

end
goto p152
::p127::
tick(127)
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
if branch_taken then goto p217 end
goto p246
::p129::
tick(129)
do
do
(registers)[12] = registers[11]
end

end
::p130::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p56
::p135::
tick(135)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p231 end
goto p180
::p137::
do
do
registers[12] = (0)
end

end
goto p29
::p139::
tick(139)
do
do
registers[11] = (registers[8]["type"])
end

end
::p140::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p141::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p142::
do
do
(registers)[11] = (registers[11] ~= "Off")
end

end
goto p209
::p148::
tick(148)
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
if branch_taken then goto p37 end
goto p43
::p150::
tick(150)
do
do
registers[11] = (registers[11] == "Default")
end

end
goto p231
::p152::
tick(152)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p211
::p155::
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p148
::p164::
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
::p165::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p27
::p180::
do
do
a = registers
z = (11)
q = (registers)
end

end
::p181::
do
do
m = 7
q = q[m]
end

end
::p182::
do
do
m = ("builder_type")
q = q[m]
end

end
::p183::
do
do
(a)[z] = q
end

end
::p184::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p185::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p150
::p196::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p197::
do
do
a = (registers)
z = 3
end

end
::p198::
do
do
q = 1;
(a)[z] = (q)
end

end
::p199::
do
do
registers[4] = (upvalues[2])
end

end
::p200::
do
do
registers[4] = (#registers[4])
end

end
::p201::
do
do
registers[5] = (1)
end

end
::p202::
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
if branch_taken then goto p127 end
::p203::
do
do
registers[34] = (code_metadata)
end

end
::p204::
do
do
registers[40] = operand_k
end

end
::p205::
do
do
registers[34][73] = 111
end

end
::p206::
do
do
registers[40][61] = 244
end

end
::p207::
do
do
for f = 33, 40, 1 do
    (registers)[f] = nil
end
end

end
goto p73
::p209::
tick(209)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p63
::p211::
do
do
registers[11] = (registers[10] == "Off")
end

end
::p212::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p17
::p214::
do
do
registers[1] = (registers[1] == "Anti-Aim")
end

end
::p215::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p13
::p217::
do
do
(registers)[7] = upvalues[2][registers[6]]
end

end
::p218::
do
do
a = registers
z = (8)
q = (registers)
end

end
::p219::
do
do
m = 7
q = q[m]
end

end
::p220::
do
do
m = ("delay")
q = q[m]
end

end
::p221::
do
do
(a)[z] = q
end

end
::p222::
do
do
registers[9] = (registers[8]["custom"])
end

end
::p223::
do
do
(registers)[10] = upvalues[0]["builder"]
end

end
::p224::
do
do
registers[11] = (registers[7]["state_name"])
end

end
::p225::
do
do
(registers)[10] = registers[10][registers[11]]
end

end
::p226::
do
do
registers[10] = (registers[10]["body_yaw"])
end

end
::p227::
do
do
registers[10] = (registers[10]["type"])
end

end
::p228::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p229::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p233
::p231::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p209 end
goto p139
::p233::
do
do
(registers)[11] = registers[1]
end

end
::p234::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
goto p101
::p246::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p247::
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
