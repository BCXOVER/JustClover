
-- Function f308; 88 recovered instruction blocks.
F.f308=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f308",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f308 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p171
::p10::
tick(10)
do
do
registers[3] = (0)
end

end
::p11::
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
return registers[3]
end

end
::p12::
tick(12)
do
do
registers[17] = (-1)
end

end
goto p152
::p14::
tick(14)
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["init_from_angles"]
end

end
::p15::
do
do
registers[10] = (0)
end

end
::p16::
do
do
registers[11] = (registers[5]["y"])
end

end
::p17::
do
do
registers[11] = registers[11] + 90
end

end
goto p108
::p19::
tick(19)
do
do
(registers)[16] = registers[13] > 0
end

end
::p20::
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p197 end
goto p190
::p23::
tick(23)
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p55
::p25::
tick(25)
branch_taken=false
do
do
if registers[12] == registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p106
::p27::
tick(27)
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
::p28::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p29::
do
do
registers[8] = (upvalues[0])
end

end
::p30::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
goto p14
::p46::
tick(46)
do
do
(registers)[15] = registers[1]
end

end
::p47::
do
do
registers[16] = (registers[11]["x"])
end

end
::p48::
do
do
registers[17] = (registers[11]["y"])
end

end
goto p114
::p50::
do
do
registers[17] = (0)
end

end
::p51::
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
return registers[17]
end

end
::p53::
tick(53)
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p183 end
goto p58
::p55::
do
do
registers[17] = registers[13] > registers[15]
end

end
::p56::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
goto p12
::p58::
do
do
registers[3] = (0)
end

end
::p59::
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
return registers[3]
end

end
::p60::
tick(60)
do
do
(registers)[5] = upvalues[1][46]
end

end
::p61::
do
do
(registers)[6] = registers[2]
end

end
::p62::
do
do
a = 5
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
::p63::
do
do
a = 4
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p64::
do
do
registers[5] = (upvalues[0])
end

end
::p65::
do
do
registers[6] = (registers[4] - registers[3])
end

end
::p66::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["angles"]
end

end
::p67::
do
do
a = 6
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
::p68::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p69::
do
do
registers[6] = (upvalues[0])
end

end
::p70::
do
do
(registers)[7] = upvalues[1][91]
end

end
::p71::
do
do
a = 7
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
::p72::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p73::
do
do
registers[7] = (upvalues[0])
end

end
::p74::
do
do
(registers)[8] = upvalues[1][39]
end

end
::p75::
do
do
(registers)[9] = registers[2]
end

end
::p76::
do
do
registers[10] = (3)
end

end
goto p27
::p78::
tick(78)
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
return registers[17]
end

end
::p86::
tick(86)
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["init_from_angles"]
end

end
::p87::
do
do
registers[11] = (0)
end

end
::p88::
do
do
registers[12] = (registers[5]["y"])
end

end
::p89::
do
do
(registers)[12] = (registers[12] - 90)
end

end
::p90::
do
do
a = 9
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p91::
do
do
registers[10] = (registers[8] * 31)
end

end
goto p192
::p93::
tick(93)
do
do
(registers)[12] = upvalues[1][58]
end

end
::p94::
do
do
(registers)[13] = registers[1]
end

end
::p95::
do
do
registers[14] = (registers[10]["x"])
end

end
::p96::
do
do
registers[15] = (registers[10]["y"])
end

end
goto p148
::p104::
tick(104)
do
do
registers[15] = (0)
end

end
goto p19
::p106::
do
do
registers[13] = (0)
end

end
goto p112
::p108::
do
do
a = 8
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p109::
do
do
registers[9] = (upvalues[0])
end

end
::p110::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
goto p86
::p112::
branch_taken=false
do
do
if registers[14] == registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p104
::p114::
do
do
registers[18] = (registers[11]["z"])
end

end
::p115::
do
do
registers[19] = (registers[7]["x"])
end

end
::p116::
do
do
registers[20] = (registers[7]["y"])
end

end
goto p154
::p148::
do
do
registers[16] = (registers[10]["z"])
end

end
::p149::
do
do
registers[17] = (registers[7]["x"])
end

end
::p150::
do
do
registers[18] = (registers[7]["y"])
end

end
goto p159
::p152::
branch_taken=false
do
do
if registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p213
::p154::
do
do
registers[21] = (registers[7]["z"])
end

end
::p155::
do
do
registers[22] = (false)
end

end
::p156::
do
do
a = 14
z = (9)
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
goto p25
::p159::
do
do
registers[19] = (registers[7]["z"])
end

end
::p160::
do
do
registers[20] = (false)
end

end
::p161::
do
do
a = 12
z = (9)
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
::p162::
do
do
(registers)[14] = upvalues[1][58]
end

end
goto p46
::p171::
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
::p172::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p10
::p183::
do
do
registers[3] = (upvalues[0])
end

end
::p184::
do
do
(registers)[4] = upvalues[1][46]
end

end
::p185::
do
do
(registers)[5] = registers[1]
end

end
::p186::
do
do
a = 4
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
::p187::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p188::
do
do
registers[4] = (upvalues[0])
end

end
goto p60
::p190::
do
do
(registers)[16] = registers[15] > 0
end

end
goto p197
::p192::
do
do
(registers)[10] = registers[6] + registers[10]
end

end
::p193::
do
do
registers[11] = (registers[9] * 31)
end

end
::p194::
do
do
(registers)[11] = registers[6] + registers[11]
end

end
goto p93
::p197::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p215
::p213::
do
do
registers[17] = (1)
end

end
goto p78
::p215::
do
do
registers[16] = (registers[13] ~= registers[15])
end

end
goto p23
end
end
