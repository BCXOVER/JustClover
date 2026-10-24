
-- Function f352; 76 recovered instruction blocks.
F.f352=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f352",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f352 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p103
::p3::
tick(3)
branch_taken=false
do
do
if not (registers[3] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p56
::p23::
tick(23)
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p37
::p31::
tick(31)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p163
::p33::
tick(33)
do
do
registers[11] = (registers[11] / registers[9])
end

end
::p34::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p35::
do
do
(registers)[11] = registers[5]
end

end
goto p134
::p37::
do
do
registers[15] = (0)
end

end
goto p90
::p39::
tick(39)
do
do
(registers)[19] = registers[19] + registers[20]
end

end
::p40::
do
do
(registers)[19] = registers[19] * registers[8]
end

end
::p41::
do
do
(registers)[19] = registers[19] * registers[6]
end

end
::p42::
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
return registers[19]
end

end
::p43::
tick(43)
do
do
a = 10
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
::p44::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p45::
do
do
(registers)[9] = upvalues[1][151]
end

end
goto p51
::p47::
tick(47)
do
do
(registers)[12] = registers[4]
end

end
::p48::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p190 end
goto p68
::p51::
do
do
registers[10] = (1)
end

end
::p52::
do
do
(registers)[11] = upvalues[1][154]
end

end
::p53::
do
do
registers[12] = (registers[6] * 7)
end

end
goto p116
::p56::
tick(56)
do
do
registers[6] = (0)
end

end
::p57::
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
return registers[6]
end

end
::p59::
tick(59)
branch_taken=false
do
do
if registers[6] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p3
::p68::
do
do
registers[12] = (1)
end

end
goto p190
::p70::
tick(70)
do
do
registers[15] = (registers[12] * 0.37)
end

end
::p71::
do
do
(registers)[14] = registers[14] + registers[15]
end

end
::p72::
do
do
(registers)[15] = registers[5]
end

end
goto p23
::p82::
tick(82)
do
do
registers[9] = (100)
end

end
::p83::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p84::
do
do
registers[6] = (registers[6] * 0.01)
end

end
::p85::
do
do
(registers)[7] = upvalues[1][161]
end

end
::p86::
do
do
registers[8] = (registers[2] - registers[1])
end

end
::p87::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p88::
do
do
(registers)[8] = upvalues[1][162]
end

end
goto p98
::p90::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p188
::p98::
do
do
registers[9] = (15)
end

end
::p99::
do
do
(registers)[10] = upvalues[1][151]
end

end
::p100::
do
do
registers[11] = (3)
end

end
::p101::
do
do
registers[12] = (registers[7] * 0.35)
end

end
goto p43
::p103::
do
do
a = {
    ...,
}
for f = 1, 5, 1 do
    registers[f] = (a[f])
end
end

end
::p104::
do
do
(registers)[6] = environment["type"]
end

end
::p105::
do
do
(registers)[7] = registers[3]
end

end
::p106::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p59
::p108::
tick(108)
do
do
registers[18] = 1 - registers[17]
end

end
::p109::
do
do
(registers)[19] = registers[15] * registers[18]
end

end
::p110::
do
do
(registers)[20] = registers[16] * registers[17]
end

end
goto p39
::p116::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p117::
do
do
registers[11] = 8 - registers[11]
end

end
::p118::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p119::
do
do
(registers)[10] = upvalues[1][154]
end

end
::p120::
do
do
a = upvalues[2];
(registers)[11] = (a[2][a[1]]["packets"])
end

end
goto p33
::p130::
do
do
(registers)[6] = upvalues[0]["clamp"]
end

end
::p131::
do
do
(registers)[7] = registers[3]
end

end
::p132::
do
do
registers[8] = (0)
end

end
goto p82
::p134::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p157
::p144::
tick(144)
do
do
(registers)[14] = registers[14] + registers[15]
end

end
::p145::
do
do
(registers)[15] = upvalues[1][163]
end

end
::p146::
do
do
(registers)[16] = registers[14]
end

end
::p147::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p148::
do
do
registers[16] = (upvalues[3])
end

end
::p149::
do
do
(registers)[17] = registers[13]
end

end
::p150::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p151::
do
do
registers[16] = (registers[16] * 2)
end

end
goto p159
::p153::
tick(153)
do
do
registers[15] = (registers[6] * 0.11)
end

end
::p154::
do
do
registers[15] = 0.04 + registers[15]
end

end
::p155::
do
do
(registers)[14] = registers[14] * registers[15]
end

end
goto p70
::p157::
do
do
registers[11] = (17)
end

end
goto p31
::p159::
do
do
(registers)[16] = (registers[16] - 1)
end

end
::p160::
do
do
registers[17] = (registers[6] * 0.5)
end

end
::p161::
do
do
registers[17] = 0.2 + registers[17]
end

end
goto p108
::p163::
do
do
registers[11] = (29)
end

end
goto p47
::p188::
do
do
registers[15] = (1.9)
end

end
goto p144
::p190::
do
do
registers[13] = (registers[10] * 97)
end

end
::p191::
do
do
registers[14] = (registers[12] * 13)
end

end
::p192::
do
do
(registers)[13] = registers[13] + registers[14]
end

end
::p193::
do
do
(registers)[13] = registers[13] + registers[11]
end

end
::p194::
do
do
a = upvalues[2];
(registers)[14] = (a[2][a[1]]["packets"])
end

end
goto p153
end
end
