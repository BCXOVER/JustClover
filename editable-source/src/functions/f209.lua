
-- Function f209; 32 recovered instruction blocks.
F.f209=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f209",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f209 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p55
::p3::
tick(3)
branch_taken=false
do
do
if not (not (registers[1] < 100)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p86
::p11::
tick(11)
do
do
registers[5] = (51)
end

end
::p12::
do
do
registers[6] = (255)
end

end
::p13::
do
do
a = (2)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p54
::p17::
tick(17)
do
do
a = (2)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p18::
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
::p26::
tick(26)
do
do
registers[2] = new_frame(4)
end

end
::p27::
do
do
registers[3] = (146)
end

end
::p28::
do
do
registers[4] = (183)
end

end
goto p11
::p54::
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
::p55::
do
do
(registers)[1] = upvalues[0][151]
end

end
::p56::
do
do
registers[2] = (0)
end

end
::p57::
do
do
(registers)[3] = upvalues[0][154]
end

end
::p58::
do
do
(registers)[4] = upvalues[0][67]
end

end
::p61::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p62::
do
do
registers[4] = (registers[4] * 1000)
end

end
::p63::
do
do
registers[4] = registers[4] + 0.5
end

end
::p64::
do
do
a = 3
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
::p65::
do
do
a = 1
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p66::
branch_taken=false
do
do
if not (not (registers[1] < 40)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p26
::p76::
tick(76)
do
do
registers[6] = (255)
end

end
::p77::
do
do
a = (2)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
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
return registers[2]
end

end
::p80::
do
do
registers[2] = new_frame(4)
end

end
::p81::
do
do
registers[3] = (139)
end

end
::p82::
do
do
registers[4] = (31)
end

end
::p83::
do
do
registers[5] = (31)
end

end
::p84::
do
do
registers[6] = (255)
end

end
goto p17
::p86::
do
do
registers[2] = new_frame(4)
end

end
::p87::
do
do
registers[3] = (183)
end

end
::p88::
do
do
registers[4] = (121)
end

end
::p89::
do
do
registers[5] = (51)
end

end
goto p76
end
end
