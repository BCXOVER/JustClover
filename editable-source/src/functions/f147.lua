
-- Function f147; 22 recovered instruction blocks.
F.f147=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f147",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f147 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p39
::p14::
tick(14)
do
do
registers[12] = (registers[5]["y"])
end

end
::p15::
do
do
registers[13] = (registers[5]["z"])
end

end
::p16::
do
do
a = 6
top = a + 8 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p17::
do
do
registers[7] = (registers[6] == 1)
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
return registers[7]
end

end
::p32::
tick(32)
do
do
(registers)[7] = registers[2]
end

end
::p33::
do
do
registers[8] = (registers[4]["x"])
end

end
::p34::
do
do
registers[9] = (registers[4]["y"])
end

end
::p35::
do
do
registers[10] = (registers[4]["z"])
end

end
::p36::
do
do
registers[11] = (registers[5]["x"])
end

end
goto p14
::p39::
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
::p40::
do
do
registers[4] = (upvalues[0])
end

end
::p41::
do
do
(registers)[5] = upvalues[1][46]
end

end
::p42::
do
do
(registers)[6] = registers[2]
end

end
::p43::
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
::p44::
do
do
a = 4
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p45::
do
do
registers[5] = (upvalues[0])
end

end
::p46::
do
do
(registers)[6] = upvalues[1][46]
end

end
::p47::
do
do
(registers)[7] = registers[3]
end

end
::p48::
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
::p49::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p50::
do
do
(registers)[6] = upvalues[1][78]
end

end
goto p32
end
end
