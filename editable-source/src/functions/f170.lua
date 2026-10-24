
-- Function f170; 46 recovered instruction blocks.
F.f170=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f170",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f170 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p124
::p2::
tick(2)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p107
::p4::
tick(4)
do
do
(registers)[5] = registers[3]
end

end
goto p57
::p9::
tick(9)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p40
::p27::
tick(27)
do
do
a = 4
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
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p29::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p35
::p31::
tick(31)
do
do
(registers)[4] = registers[2]
end

end
::p32::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p33::
branch_taken=false
do
do
if registers[3] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p72
::p35::
do
do
(registers)[4] = upvalues[1]["clamp"]
end

end
::p36::
do
do
(registers)[5] = registers[3] > 10
end

end
::p37::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p139
::p40::
tick(40)
do
do
(registers)[4] = registers[2]
end

end
goto p54
::p42::
tick(42)
do
do
registers[3] = (1)
end

end
::p43::
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
::p45::
tick(45)
do
do
registers[4] = (registers[2] * 0.01)
end

end
goto p9
::p54::
do
do
registers[5] = (0.5)
end

end
::p55::
do
do
registers[6] = (2)
end

end
::p56::
do
do
a = (3)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p57::
tick(57)
do
do
registers[6] = (0.5)
end

end
::p58::
do
do
registers[7] = (2)
end

end
::p59::
do
do
a = (4)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p60::
tick(60)
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p81
::p72::
do
do
(registers)[3] = upvalues[1]["clamp"]
end

end
::p73::
do
do
(registers)[4] = registers[2] > 10
end

end
::p74::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p45
::p81::
do
do
registers[2] = (1)
end

end
::p82::
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
::p98::
tick(98)
do
do
(registers)[3] = environment["tonumber"]
end

end
::p99::
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["match"]
end

end
::p100::
do
do
registers[6] = ("(%d+%.?%d*)")
end

end
goto p27
::p102::
do
do
(registers)[3] = environment["type"]
end

end
::p103::
do
do
(registers)[4] = registers[2]
end

end
::p104::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p105::
branch_taken=false
do
do
if registers[3] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p98
::p107::
do
do
(registers)[1] = nil
end

end
goto p60
::p109::
tick(109)
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p110::
do
do
registers[1] = (registers[1]["dpi"])
end

end
goto p2
::p124::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p125::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p126::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p109
::p128::
tick(128)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p4
::p139::
do
do
registers[5] = (registers[3] * 0.01)
end

end
goto p128
::p154::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p155::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p156::
do
do
(registers)[3] = environment["type"]
end

end
goto p31
end
end
