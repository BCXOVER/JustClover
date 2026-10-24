
-- Function f196; 63 recovered instruction blocks.
F.f196=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f196",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f196 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p123
::p2::
tick(2)
branch_taken=false
do
do
if not (not (registers[8] < 1000)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p109
::p21::
tick(21)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p2
::p23::
tick(23)
do
do
(registers)[9] = upvalues[2][138]
end

end
::p24::
do
do
registers[10] = (255)
end

end
::p25::
do
do
registers[11] = (0)
end

end
::p26::
do
do
registers[12] = (0)
end

end
::p27::
do
do
registers[13] = (255)
end

end
::p28::
do
do
registers[14] = ("BT")
end

end
::p29::
do
do
a = (9)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p61
::p40::
tick(40)
do
do
(registers)[9] = upvalues[2][138]
end

end
::p41::
do
do
registers[10] = (45)
end

end
::p42::
do
do
registers[11] = (255)
end

end
::p43::
do
do
registers[12] = (60)
end

end
::p44::
do
do
registers[13] = (255)
end

end
goto p150
::p61::
tick(61)
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
::p68::
tick(68)
do
do
(registers)[3] = upvalues[2][32]
end

end
::p69::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p70::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p157 end
goto p105
::p72::
tick(72)
do
do
registers[5] = (upvalues[3])
end

end
::p73::
do
do
(registers)[6] = upvalues[2][91]
end

end
::p74::
do
do
a = 6
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
::p75::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p76::
do
do
registers[6] = (upvalues[3])
end

end
::p77::
do
do
(registers)[7] = upvalues[2][46]
end

end
::p78::
do
do
(registers)[8] = registers[4]
end

end
::p79::
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
::p80::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p81::
do
do
registers[7] = (upvalues[3])
end

end
::p82::
do
do
(registers)[8] = upvalues[2][47]
end

end
::p83::
do
do
(registers)[9] = registers[4]
end

end
::p84::
do
do
registers[10] = ("m_vecViewOffset")
end

end
::p85::
do
do
a = 8
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
::p86::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p87::
do
do
(registers)[6] = registers[6] + registers[7]
end

end
::p88::
do
do
a = (7)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_invalid_tick_cleaner_visible"]
end

end
goto p118
::p96::
tick(96)
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
::p99::
tick(99)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p153 end
goto p157
::p101::
tick(101)
do
do
a = (8)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["dist"]
end

end
::p102::
do
do
(registers)[10] = registers[6]
end

end
::p103::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p21
::p105::
do
do
(registers)[4] = upvalues[2][50]
end

end
::p106::
do
do
(registers)[5] = registers[3]
end

end
::p107::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p99
::p109::
do
do
registers[9] = (registers[1]["backtrack_cleaner_timer"])
end

end
::p110::
branch_taken=false
do
do
if not (not (registers[9] < 66)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p40
::p118::
do
do
(registers)[9] = registers[3]
end

end
::p119::
do
do
(registers)[10] = registers[4]
end

end
::p120::
do
do
a = 7
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p101
::p123::
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
::p124::
do
do
registers[2] = (upvalues[0])
end

end
::p125::
do
do
a = upvalues[1];
(registers)[3] = (a[2][a[1]]["current"])
end

end
::p126::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p127::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_invalid_tick_cleaner_enabled"]
end

end
::p128::
do
do
(registers)[5] = registers[2]
end

end
::p129::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p130::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p159
::p150::
do
do
registers[14] = ("BT")
end

end
::p151::
do
do
a = (9)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p61
::p153::
do
do
(registers)[4] = upvalues[2][52]
end

end
::p154::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p155::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p96
::p157::
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
::p159::
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
