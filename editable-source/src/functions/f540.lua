
-- Function f540; 80 recovered instruction blocks.
F.f540=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f540",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f540 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p41
::p21::
tick(21)
do
do
(registers)[12] = not registers[3]
end

end
::p22::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p94
::p24::
tick(24)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p32
::p26::
tick(26)
do
do
(registers)[13] = registers[12]
end

end
::p27::
do
do
(registers)[14] = registers[11]
end

end
::p28::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (13)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p29::
tick(29)
do
do
registers[5] = (false)
end

end
::p30::
do
do
(registers)[6] = nil
end

end
::p31::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (5)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p32::
tick(32)
do
do
registers[4] = (false)
end

end
::p33::
do
do
(registers)[5] = nil
end

end
::p34::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (4)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p41::
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
::p42::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p24
::p44::
tick(44)
do
do
registers[6] = (upvalues[2])
end

end
::p45::
do
do
(registers)[7] = upvalues[0][46]
end

end
::p46::
do
do
(registers)[8] = registers[1]
end

end
::p47::
do
do
a = 7
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
::p48::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p49::
do
do
a = (7)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["dist"]
end

end
::p50::
do
do
a = (registers)
end

end
::p51::
do
do
z = 9
end

end
::p52::
do
do
q = (upvalues)
end

end
::p53::
do
do
m = 2
q = (q[m])
a[z] = q
end

end
::p54::
do
do
(registers)[10] = upvalues[0][46]
end

end
::p55::
do
do
(registers)[11] = registers[2]
end

end
::p56::
do
do
a = 10
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
::p57::
do
do
a = 9
z = (0)
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
::p58::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p59::
do
do
(registers)[8] = upvalues[0][47]
end

end
::p60::
do
do
(registers)[9] = registers[2]
end

end
::p61::
do
do
registers[10] = ("m_iHealth")
end

end
::p62::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p89
::p64::
do
do
(registers)[4] = upvalues[0][37]
end

end
::p65::
do
do
a = (registers)
z = 5
end

end
::p66::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p67::
do
do
(a)[z] = q
end

end
::p68::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p69::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p29
::p71::
tick(71)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p86
::p73::
tick(73)
do
do
registers[12] = (registers[12] * 0.5)
end

end
::p74::
do
do
registers[12] = (registers[12] * 0.5)
end

end
::p75::
do
do
registers[12] = (registers[9] - registers[12])
end

end
::p76::
branch_taken=false
do
do
if not (registers[10] < registers[12]) then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p155
::p86::
do
do
registers[12] = (registers[11] >= registers[8])
end

end
goto p26
::p89::
do
do
registers[9] = (registers[5]["damage"])
end

end
::p90::
do
do
(registers)[10] = upvalues[0][160]
end

end
::p91::
do
do
registers[11] = (registers[5]["range_modifier"])
end

end
::p92::
do
do
registers[12] = (registers[7] * 0.002)
end

end
goto p138
::p94::
do
do
registers[12] = (registers[11] * 0.5)
end

end
::p95::
do
do
registers[12] = (registers[12] >= registers[8])
end

end
goto p71
::p100::
do
do
registers[5] = (upvalues[1])
end

end
::p101::
do
do
(registers)[6] = registers[4]
end

end
::p102::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p103::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p105 end
goto p112
::p105::
do
do
registers[6] = (registers[5]["weapon_type_int"])
end

end
::p106::
branch_taken=false
do
do
if registers[6] ~= 9 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
::p109::
do
do
registers[7] = (registers[5]["weapon_type_int"])
end

end
::p110::
branch_taken=false
do
do
if registers[7] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p152
::p112::
do
do
registers[6] = (false)
end

end
::p113::
do
do
(registers)[7] = nil
end

end
::p114::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (6)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p115::
tick(115)
do
do
(registers)[10] = upvalues[0][47]
end

end
::p116::
do
do
(registers)[11] = registers[2]
end

end
::p117::
do
do
a = (registers)
z = 12
end

end
::p118::
do
do
q = "m_ArmorValue";
(a)[z] = (q)
end

end
::p119::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p120::
do
do
registers[11] = (registers[5]["armor_ratio"])
end

end
::p121::
do
do
(registers)[11] = registers[9] * registers[11]
end

end
::p122::
do
do
registers[11] = (registers[11] * 0.5)
end

end
::p123::
do
do
registers[12] = (registers[5]["armor_ratio"])
end

end
::p124::
do
do
(registers)[12] = registers[9] * registers[12]
end

end
goto p73
::p138::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p139::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p140::
do
do
registers[9] = (registers[9] * 1.25)
end

end
goto p115
::p152::
do
do
registers[6] = (false)
end

end
::p153::
do
do
(registers)[7] = nil
end

end
::p154::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (6)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p155::
do
do
registers[12] = registers[10] / 0.5
end

end
::p156::
do
do
registers[11] = (registers[9] - registers[12])
end

end
goto p21
end
end
