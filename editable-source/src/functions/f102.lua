
-- Function f102; 85 recovered instruction blocks.
F.f102=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f102",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f102 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p96
::p5::
tick(5)
branch_taken=false
do
do
if registers[9] ~= 1 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p148 end
goto p17
::p15::
tick(15)
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p106
::p17::
branch_taken=false
do
do
if registers[9] ~= 2 then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p148
::p27::
tick(27)
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p28::
do
do
(registers)[8] = environment["pairs"]
end

end
::p29::
do
do
(registers)[9] = upvalues[1]["layers"]
end

end
::p30::
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
goto p65
::p33::
tick(33)
do
do
a = 13
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p34::
do
do
registers[10]["weight"] = (registers[13])
end

end
goto p104
::p42::
tick(42)
do
do
(registers)[13] = upvalues[2]["lerp"]
end

end
::p43::
do
do
registers[14] = (registers[11]["weight"])
end

end
::p44::
do
do
registers[15] = (registers[12]["weight"])
end

end
::p45::
do
do
(registers)[16] = registers[7]
end

end
goto p33
::p47::
tick(47)
do
do
(registers)[8] = upvalues[2]["lerp"]
end

end
::p48::
do
do
registers[9] = (registers[4]["duck_amount"])
end

end
::p49::
do
do
registers[10] = (registers[5]["duck_amount"])
end

end
::p50::
do
do
(registers)[11] = registers[7]
end

end
goto p57
::p54::
tick(54)
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
::p57::
do
do
a = 8
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p58::
do
do
upvalues[1]["last_duck_amount"] = (registers[8])
end

end
::p59::
do
do
registers[8] = (registers[4]["weapon"])
end

end
::p60::
do
do
upvalues[1]["last_weapon"] = (registers[8])
end

end
::p61::
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
::p65::
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
if branch_taken then goto p104 end
::p66::
tick(66)
do
do
registers[4] = (#registers[3])
end

end
::p67::
do
do
(registers)[4] = (registers[4] - 1)
end

end
::p68::
do
do
(registers)[4] = registers[3][registers[4]]
end

end
::p69::
do
do
registers[5] = (#registers[3])
end

end
::p70::
do
do
(registers)[5] = registers[3][registers[5]]
end

end
::p71::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p124
::p74::
tick(74)
do
do
(registers)[13] = upvalues[2]["lerp"]
end

end
::p75::
do
do
registers[14] = (registers[11]["cycle"])
end

end
::p76::
do
do
registers[15] = (registers[12]["cycle"])
end

end
::p77::
do
do
(registers)[16] = registers[7]
end

end
::p78::
do
do
a = 13
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p79::
do
do
registers[10]["cycle"] = (registers[13])
end

end
goto p42
::p96::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p97::
do
do
registers[3] = (upvalues[0])
end

end
::p98::
do
do
(registers)[4] = registers[1]
end

end
::p99::
do
do
registers[5] = ("Smooth")
end

end
::p100::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p101::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p115 end
goto p191
::p104::
tick(104)
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
if branch_taken then goto p198 end
goto p142
::p106::
tick(106)
branch_taken=false
do
do
if registers[12] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p5
::p108::
tick(108)
do
do
registers[6] = (registers[5]["time"])
end

end
::p109::
do
do
registers[7] = (registers[4]["time"])
end

end
::p110::
do
do
registers[6] = (registers[6] - registers[7])
end

end
::p111::
branch_taken=false
do
do
if not (registers[6] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p114
::p113::
tick(113)
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
::p114::
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
::p115::
do
do
(registers)[3] = upvalues[1]["server_anim_states"]
end

end
::p116::
do
do
registers[4] = (#registers[3])
end

end
::p117::
branch_taken=false
do
do
if not (not (registers[4] < 2)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p113
::p119::
tick(119)
do
do
registers[13] = (registers[12]["cycle"])
end

end
::p120::
do
do
registers[10]["cycle"] = (registers[13])
end

end
::p121::
do
do
registers[13] = (registers[12]["weight"])
end

end
::p122::
do
do
registers[10]["weight"] = (registers[13])
end

end
goto p104
::p124::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p54
::p136::
tick(136)
do
do
registers[9] = (registers[4]["time"])
end

end
::p137::
do
do
registers[8] = (registers[8] - registers[9])
end

end
::p138::
do
do
registers[8] = (registers[8] / registers[6])
end

end
::p139::
do
do
registers[9] = (0)
end

end
::p140::
do
do
registers[10] = (1)
end

end
goto p27
::p142::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p143::
do
do
(registers)[8] = upvalues[2]["lerp"]
end

end
::p144::
do
do
registers[9] = (registers[4]["velocity"])
end

end
::p145::
do
do
registers[10] = (registers[5]["velocity"])
end

end
goto p211
::p148::
do
do
registers[13] = (registers[4]["weapon"])
end

end
::p149::
do
do
registers[14] = (registers[5]["weapon"])
end

end
::p150::
branch_taken=false
do
do
if registers[13] == registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p119
::p162::
do
do
(registers)[7] = upvalues[2]["clamp"]
end

end
::p163::
do
do
(registers)[8] = upvalues[3][30]
end

end
::p164::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
goto p136
::p178::
tick(178)
do
do
registers[11] = (registers[4]["layers"])
end

end
::p179::
do
do
(registers)[11] = registers[11][registers[9]]
end

end
::p180::
do
do
registers[12] = (registers[5]["layers"])
end

end
::p181::
do
do
(registers)[12] = registers[12][registers[9]]
end

end
::p182::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p15
::p191::
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
::p198::
do
do
a = (10)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_overlay"]
end

end
::p199::
do
do
(registers)[12] = registers[9]
end

end
::p200::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p178
::p211::
do
do
(registers)[11] = registers[7]
end

end
::p212::
do
do
a = 8
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p213::
do
do
upvalues[1]["last_velocity"] = (registers[8])
end

end
goto p47
end
end
