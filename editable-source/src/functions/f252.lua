
-- Function f252; 42 recovered instruction blocks.
F.f252=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f252",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f252 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p59
::p8::
tick(8)
do
do
registers[6] = (2)
end

end
::p9::
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
::p10::
tick(10)
branch_taken=false
do
do
if not (0 < registers[3]) then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p63
::p14::
tick(14)
do
do
(registers)[3] = environment["type"]
end

end
::p15::
do
do
(registers)[4] = registers[2]
end

end
::p16::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p17::
branch_taken=false
do
do
if registers[3] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p115
::p33::
tick(33)
do
do
registers[7] = (2)
end

end
::p34::
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
::p35::
tick(35)
do
do
(registers)[3] = upvalues[1]["clamp"]
end

end
::p36::
do
do
(registers)[4] = registers[2]
end

end
::p37::
do
do
registers[5] = (0.5)
end

end
goto p8
::p39::
tick(39)
do
do
registers[2] = (1)
end

end
::p40::
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
::p54::
tick(54)
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p55::
do
do
registers[1] = (registers[1]["dpi"])
end

end
goto p94
::p59::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p60::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p54
::p63::
do
do
(registers)[4] = upvalues[1]["clamp"]
end

end
::p64::
do
do
registers[5] = (registers[3] * 0.01)
end

end
::p65::
do
do
registers[6] = (0.5)
end

end
goto p33
::p77::
tick(77)
do
do
registers[3] = (1)
end

end
::p78::
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
::p94::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p39
::p96::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p97::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p98::
do
do
(registers)[3] = environment["type"]
end

end
goto p105
::p103::
tick(103)
branch_taken=false
do
do
if not (10 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p122
::p105::
do
do
(registers)[4] = registers[2]
end

end
::p106::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p107::
branch_taken=false
do
do
if registers[3] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p103
::p115::
do
do
(registers)[3] = environment["tonumber"]
end

end
::p116::
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["match"]
end

end
::p117::
do
do
registers[6] = ("(%d+%.?%d*)")
end

end
::p118::
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
::p119::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p120::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p10
::p122::
do
do
(registers)[3] = upvalues[1]["clamp"]
end

end
::p123::
do
do
registers[4] = (registers[2] * 0.01)
end

end
::p124::
do
do
registers[5] = (0.5)
end

end
::p125::
do
do
registers[6] = (2)
end

end
::p126::
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
end
end
