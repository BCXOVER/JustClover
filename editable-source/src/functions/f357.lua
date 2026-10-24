
-- Function f357; 32 recovered instruction blocks.
F.f357=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f357",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f357 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p28
::p5::
tick(5)
do
do
(registers)[5] = upvalues[0]["clamp"]
end

end
::p6::
do
do
(registers)[6] = registers[4]
end

end
::p7::
do
do
registers[7] = (0)
end

end
::p8::
do
do
registers[8] = (100)
end

end
goto p112
::p10::
tick(10)
do
do
registers[5] = (0)
end

end
goto p34
::p28::
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
::p29::
do
do
(registers)[4] = environment["tonumber"]
end

end
::p30::
do
do
(registers)[5] = registers[2]
end

end
::p31::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p32::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p67
::p34::
tick(34)
do
do
(registers)[4] = registers[5]
end

end
goto p5
::p67::
branch_taken=false
do
do
if not (registers[4] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p123
::p69::
tick(69)
do
do
registers[5] = (0)
end

end
::p70::
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
::p71::
tick(71)
branch_taken=false
do
do
if not (registers[4] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p69
::p87::
do
do
(registers)[5] = upvalues[1][151]
end

end
::p88::
do
do
registers[6] = (1)
end

end
::p89::
do
do
(registers)[7] = upvalues[1][154]
end

end
::p90::
do
do
(registers)[8] = upvalues[1][151]
end

end
::p91::
do
do
registers[9] = (1)
end

end
::p92::
do
do
(registers)[10] = (registers[1] - 1)
end

end
::p94::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p95::
do
do
(registers)[8] = registers[8] * registers[4]
end

end
::p96::
do
do
registers[8] = (registers[8] * 0.01)
end

end
::p97::
do
do
registers[8] = registers[8] + 0.5
end

end
::p98::
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
::p99::
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
a = 5
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p112::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p113::
do
do
(registers)[4] = registers[5]
end

end
::p114::
branch_taken=false
do
do
if registers[1] <= 1 then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p71
::p123::
do
do
(registers)[5] = registers[3]
end

end
::p124::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p10
end
end
