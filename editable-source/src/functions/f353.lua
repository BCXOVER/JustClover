
-- Function f353; 72 recovered instruction blocks.
F.f353=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f353",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f353 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p78
::p3::
tick(3)
do
do
registers[9] = (29)
end

end
goto p85
::p14::
tick(14)
do
do
(registers)[6] = registers[2]
end

end
::p15::
do
do
(registers)[2] = registers[1]
end

end
::p16::
do
do
(registers)[1] = registers[6]
end

end
goto p76
::p27::
tick(27)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p3
::p37::
tick(37)
do
do
(registers)[19] = registers[1]
end

end
::p38::
do
do
(registers)[20] = registers[2]
end

end
::p39::
do
do
a = 17
z = (4)
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
::p40::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
a = 16
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p41::
tick(41)
do
do
(registers)[6] = registers[1]
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
return registers[6]
end

end
::p44::
tick(44)
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p45::
do
do
(registers)[1] = registers[6]
end

end
::p46::
do
do
(registers)[6] = upvalues[0][154]
end

end
::p47::
do
do
(registers)[7] = registers[2]
end

end
::p48::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p148 end
goto p177
::p50::
tick(50)
do
do
registers[9] = (17)
end

end
goto p27
::p52::
tick(52)
do
do
(registers)[13] = registers[4]
end

end
::p53::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p153
::p61::
tick(61)
do
do
registers[7] = (0)
end

end
goto p44
::p63::
tick(63)
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p83
::p76::
tick(76)
branch_taken=false
do
do
if registers[1] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p41
::p78::
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
::p79::
do
do
(registers)[6] = upvalues[0][154]
end

end
::p80::
do
do
(registers)[7] = registers[1]
end

end
::p81::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p61
::p83::
do
do
registers[13] = (1.9)
end

end
goto p126
::p85::
do
do
(registers)[10] = upvalues[0][154]
end

end
::p86::
do
do
a = upvalues[1];
(registers)[11] = (a[2][a[1]]["packets"])
end

end
::p87::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p88::
do
do
registers[11] = (registers[10] * 97)
end

end
::p89::
do
do
registers[12] = (registers[8] * 13)
end

end
goto p161
::p94::
tick(94)
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p95::
do
do
registers[14] = (registers[14] * 2)
end

end
::p96::
do
do
(registers)[14] = (registers[14] - 1)
end

end
::p97::
do
do
registers[15] = (registers[13] * 0.3)
end

end
goto p166
::p100::
tick(100)
do
do
registers[12] = (0)
end

end
goto p120
::p102::
tick(102)
do
do
(registers)[9] = registers[4]
end

end
::p103::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p50
::p109::
tick(109)
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p110::
do
do
registers[14] = (upvalues[2])
end

end
::p111::
do
do
(registers)[15] = registers[11]
end

end
goto p94
::p113::
do
do
(registers)[6] = registers[1] + registers[2]
end

end
::p114::
do
do
registers[6] = (registers[6] * 0.5)
end

end
::p115::
do
do
registers[7] = (registers[2] - registers[1])
end

end
::p116::
do
do
registers[7] = (registers[7] * 0.5)
end

end
::p117::
do
do
(registers)[8] = registers[3]
end

end
::p118::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p175
::p120::
tick(120)
do
do
(registers)[11] = registers[11] + registers[12]
end

end
::p121::
do
do
a = upvalues[1];
(registers)[12] = (a[2][a[1]]["packets"])
end

end
::p122::
do
do
registers[12] = (registers[12] * 0.15)
end

end
::p123::
do
do
registers[13] = (registers[8] * 0.37)
end

end
::p124::
do
do
(registers)[12] = registers[12] + registers[13]
end

end
goto p52
::p126::
do
do
(registers)[12] = registers[12] + registers[13]
end

end
::p127::
do
do
(registers)[13] = upvalues[0][163]
end

end
::p128::
do
do
(registers)[14] = registers[12]
end

end
goto p109
::p148::
tick(148)
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p149::
do
do
(registers)[2] = registers[6]
end

end
::p150::
branch_taken=false
do
do
if not (registers[2] < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p14
::p153::
do
do
registers[13] = (0)
end

end
goto p63
::p161::
do
do
(registers)[11] = registers[11] + registers[12]
end

end
::p162::
do
do
(registers)[11] = registers[11] + registers[9]
end

end
::p163::
do
do
(registers)[12] = registers[5]
end

end
::p164::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p100
::p166::
do
do
registers[16] = (registers[14] * 0.7)
end

end
::p167::
do
do
(registers)[15] = registers[15] + registers[16]
end

end
::p168::
do
do
(registers)[16] = upvalues[3]["round"]
end

end
::p169::
do
do
(registers)[17] = upvalues[3]["clamp"]
end

end
::p170::
do
do
(registers)[18] = registers[15] * registers[7]
end

end
::p171::
do
do
(registers)[18] = registers[6] + registers[18]
end

end
goto p37
::p175::
do
do
registers[8] = (1)
end

end
goto p102
::p177::
do
do
registers[7] = (0)
end

end
goto p148
end
end
