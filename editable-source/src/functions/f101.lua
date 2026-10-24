
-- Function f101; 106 recovered instruction blocks.
F.f101=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f101",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f101 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p62
::p29::
tick(29)
do
do
registers[9] = (0)
end

end
goto p242
::p31::
tick(31)
do
do
registers[8]["velocity"] = (registers[7])
end

end
::p32::
do
do
(registers)[9] = upvalues[1][47]
end

end
::p33::
do
do
(registers)[10] = registers[2]
end

end
::p34::
do
do
registers[11] = ("m_flDuckAmount")
end

end
goto p101
::p37::
tick(37)
do
do
registers[7] = (0)
end

end
goto p107
::p40::
tick(40)
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
::p41::
tick(41)
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
::p43::
tick(43)
branch_taken=false
do
do
a = (9)
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
if branch_taken then goto p138 end
goto p119
::p45::
tick(45)
do
do
(registers)[6] = registers[2]
end

end
::p46::
do
do
registers[7] = ("m_vecVelocity")
end

end
::p47::
do
do
a = 5
z = (3)
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
goto p160
::p49::
tick(49)
branch_taken=false
do
do
if not (60 < registers[9]) then
    branch_taken=true
end
end

end
if branch_taken then goto p41 end
goto p150
::p52::
tick(52)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p79
::p62::
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
::p63::
do
do
registers[4] = (upvalues[0])
end

end
::p64::
do
do
(registers)[5] = registers[1]
end

end
::p65::
do
do
registers[6] = ("Smooth")
end

end
::p66::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p67::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p40
::p79::
do
do
(registers)[7] = registers[5]
end

end
goto p154
::p94::
do
do
(registers)[4] = upvalues[1][23]
end

end
::p95::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p96::
do
do
(registers)[5] = upvalues[1][47]
end

end
goto p45
::p98::
tick(98)
do
do
registers[11] = (1)
end

end
::p99::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p41
::p101::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p102::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p242 end
goto p29
::p105::
tick(105)
do
do
registers[7] = (0)
end

end
goto p193
::p107::
tick(107)
do
do
registers[8] = {
}
end

end
::p108::
do
do
registers[9] = {
}
end

end
::p109::
do
do
registers[8]["layers"] = (registers[9])
end

end
::p110::
do
do
registers[8]["tick"] = (registers[4])
end

end
::p111::
do
do
(registers)[9] = upvalues[1][30]
end

end
goto p226
::p119::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p120::
do
do
(registers)[9] = upvalues[2]["server_anim_states"]
end

end
::p121::
do
do
(registers)[10] = upvalues[2]["server_anim_states"]
end

end
::p122::
do
do
registers[10] = (#registers[10])
end

end
::p123::
do
do
registers[10] = registers[10] + 1
end

end
::p124::
do
do
(registers[9])[registers[10]] = registers[8]
end

end
::p125::
do
do
(registers)[9] = upvalues[2]["server_anim_states"]
end

end
::p126::
do
do
registers[9] = (#registers[9])
end

end
goto p49
::p129::
tick(129)
do
do
registers[8]["weapon"] = (registers[9])
end

end
::p130::
do
do
(registers)[9] = environment["pairs"]
end

end
::p131::
do
do
(registers)[10] = upvalues[2]["layers"]
end

end
::p132::
do
do
a = 9
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
::p133::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (9)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p43 end
goto p31
::p135::
tick(135)
do
do
(registers)[7] = registers[6]
end

end
goto p213
::p138::
do
do
a = (11)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_overlay"]
end

end
::p139::
do
do
(registers)[13] = registers[10]
end

end
::p140::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p202
::p142::
tick(142)
do
do
registers[12] = (registers[8]["layers"])
end

end
::p143::
do
do
registers[13] = {
}
end

end
::p144::
do
do
registers[14] = (registers[11]["cycle"])
end

end
goto p156
::p146::
tick(146)
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p147::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p219 end
goto p224
::p150::
do
do
(registers)[9] = environment["table"]
end

end
::p151::
do
do
registers[9] = (registers[9]["remove"])
end

end
::p152::
do
do
(registers)[10] = upvalues[2]["server_anim_states"]
end

end
goto p98
::p154::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p193 end
goto p105
::p156::
do
do
registers[13]["cycle"] = (registers[14])
end

end
::p157::
do
do
registers[14] = (registers[11]["weight"])
end

end
::p158::
do
do
registers[13]["weight"] = (registers[14])
end

end
goto p171
::p160::
do
do
(registers)[7] = environment["type"]
end

end
::p161::
do
do
(registers)[8] = registers[5]
end

end
::p162::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p163::
do
do
registers[7] = (registers[7] == "number")
end

end
goto p52
::p171::
do
do
(registers[12])[registers[10]] = registers[13]
end

end
goto p43
::p193::
do
do
(registers)[5] = registers[7]
end

end
::p194::
do
do
(registers)[7] = environment["type"]
end

end
::p195::
do
do
(registers)[8] = registers[6]
end

end
::p196::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p197::
do
do
registers[7] = (registers[7] == "number")
end

end
::p198::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
goto p135
::p200::
tick(200)
do
do
registers[7] = (0)
end

end
goto p209
::p202::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p43 end
goto p142
::p204::
tick(204)
do
do
(registers)[9] = registers[6] * registers[6]
end

end
::p205::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
::p206::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p207::
branch_taken=false
do
do
if not (not (registers[7] < 0.1)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p37
::p209::
tick(209)
do
do
(registers)[6] = registers[7]
end

end
::p210::
do
do
(registers)[7] = upvalues[1][155]
end

end
::p211::
do
do
(registers)[8] = registers[5] * registers[5]
end

end
goto p204
::p213::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p209 end
goto p200
::p215::
tick(215)
do
do
(registers)[10] = upvalues[1][47]
end

end
::p216::
do
do
(registers)[11] = registers[2]
end

end
::p217::
do
do
registers[12] = ("m_fFlags")
end

end
goto p146
::p219::
tick(219)
do
do
registers[11] = (1)
end

end
::p220::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p221::
do
do
registers[9] = (registers[9] == 1)
end

end
::p222::
do
do
registers[8]["on_ground"] = (registers[9])
end

end
goto p31
::p224::
do
do
registers[10] = (0)
end

end
goto p219
::p226::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p227::
do
do
registers[8]["time"] = (registers[9])
end

end
::p228::
do
do
(registers)[9] = upvalues[1][47]
end

end
::p229::
do
do
(registers)[10] = registers[2]
end

end
::p230::
do
do
registers[11] = ("m_bDucking")
end

end
::p231::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p235::
do
do
registers[9] = (registers[9] == 1)
end

end
::p236::
do
do
registers[8]["ducking"] = (registers[9])
end

end
::p237::
do
do
(registers)[9] = environment["bit"]
end

end
::p238::
do
do
registers[9] = (registers[9]["band"])
end

end
goto p215
::p242::
do
do
registers[8]["duck_amount"] = (registers[9])
end

end
::p243::
do
do
(registers)[9] = upvalues[1][37]
end

end
::p244::
do
do
(registers)[10] = registers[2]
end

end
::p245::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p129
end
end
