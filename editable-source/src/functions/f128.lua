
-- Function f128; 57 recovered instruction blocks.
F.f128=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f128",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f128 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p42
::p10::
tick(10)
do
do
registers[5] = (false)
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
return registers[5]
end

end
::p14::
tick(14)
do
do
(registers)[5] = upvalues[1][45]
end

end
::p15::
do
do
(registers)[6] = registers[4]
end

end
::p16::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p57
::p18::
tick(18)
do
do
(registers)[2] = upvalues[2]["closest_enemy"]
end

end
::p19::
do
do
a = 2
z = (1)
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
::p20::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p50
::p32::
tick(32)
do
do
registers[7] = (true)
end

end
::p33::
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
return registers[7]
end

end
::p34::
tick(34)
do
do
registers[1] = (false)
end

end
::p35::
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
return registers[1]
end

end
::p36::
tick(36)
do
do
(registers)[4] = upvalues[1][37]
end

end
::p37::
do
do
(registers)[5] = registers[3]
end

end
::p38::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p39::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p59
::p42::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p43::
do
do
registers[1] = (registers[1]["features"])
end

end
::p44::
do
do
registers[1] = (registers[1]["anti_backstab"])
end

end
::p45::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p46::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p47::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p34
::p50::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p88
::p55::
tick(55)
do
do
registers[2] = (false)
end

end
::p56::
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
return registers[2]
end

end
::p57::
branch_taken=false
do
do
if registers[5] ~= "CKnife" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p120
::p59::
do
do
registers[5] = (false)
end

end
::p60::
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
return registers[5]
end

end
::p61::
do
do
(registers)[5] = environment["entity"]
end

end
::p62::
do
do
registers[5] = (registers[5]["get_flag"])
end

end
::p63::
do
do
(registers)[6] = registers[3]
end

end
::p64::
do
do
registers[7] = ("Hit")
end

end
::p65::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p66::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p10
::p84::
do
do
(registers)[1] = upvalues[1][32]
end

end
::p85::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p86::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p55
::p88::
do
do
registers[4] = (false)
end

end
::p89::
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
return registers[4]
end

end
::p90::
tick(90)
do
do
registers[7] = (false)
end

end
::p91::
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
return registers[7]
end

end
::p92::
do
do
registers[5] = (upvalues[3])
end

end
::p93::
do
do
(registers)[6] = upvalues[1][46]
end

end
::p94::
do
do
(registers)[7] = registers[1]
end

end
::p95::
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
::p96::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p97::
do
do
registers[6] = (upvalues[3])
end

end
goto p127
::p120::
do
do
registers[5] = (false)
end

end
::p121::
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
return registers[5]
end

end
::p127::
do
do
(registers)[7] = upvalues[1][46]
end

end
::p128::
do
do
(registers)[8] = registers[3]
end

end
::p129::
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
::p130::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p131::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["dist2d"]
end

end
::p132::
do
do
(registers)[9] = registers[6]
end

end
::p133::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p134::
branch_taken=false
do
do
if not (300 < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p90
end
end
