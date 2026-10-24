
-- Function f119; 31 recovered instruction blocks.
F.f119=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f119",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f119 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p58
::p14::
tick(14)
do
do
registers[8] = (8)
end

end
::p15::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p16::
do
do
a = (registers)
z = 5
end

end
::p17::
do
do
q = registers
m = 5
q = (q[m])
end

end
::p18::
do
do
m = registers
x = 6
end

end
::p19::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p20::
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
::p28::
tick(28)
do
do
registers[5] = (upvalues[2])
end

end
::p29::
do
do
(registers)[6] = registers[4]
end

end
::p30::
do
do
registers[7] = (64)
end

end
goto p106
::p45::
tick(45)
do
do
registers[8] = (32)
end

end
::p46::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p47::
do
do
registers[6] = (registers[6] * 65536)
end

end
goto p83
::p58::
do
do
registers[1] = (upvalues[0])
end

end
::p59::
do
do
registers[2] = (upvalues[1])
end

end
::p60::
do
do
registers[3] = (1)
end

end
::p61::
do
do
registers[4] = (4)
end

end
::p62::
do
do
a = 1
z = (4)
q = 5
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
goto p28
::p76::
tick(76)
do
do
registers[8] = (16)
end

end
::p77::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p78::
do
do
registers[6] = (registers[6] * 256)
end

end
::p79::
do
do
(registers)[5] = registers[5] + registers[6]
end

end
::p80::
do
do
registers[6] = (upvalues[2])
end

end
::p81::
do
do
(registers)[7] = registers[1]
end

end
goto p14
::p83::
do
do
(registers)[5] = registers[5] + registers[6]
end

end
::p84::
do
do
registers[6] = (upvalues[2])
end

end
::p85::
do
do
(registers)[7] = registers[2]
end

end
goto p76
::p106::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p107::
do
do
registers[5] = (registers[5] * 16777216)
end

end
::p108::
do
do
registers[6] = (upvalues[2])
end

end
::p109::
do
do
(registers)[7] = registers[3]
end

end
goto p45
end
end
