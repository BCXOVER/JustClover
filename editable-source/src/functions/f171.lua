
-- Function f171; 35 recovered instruction blocks.
F.f171=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f171",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f171 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p38
::p2::
tick(2)
do
do
registers[4] = (1)
end

end
goto p18
::p4::
tick(4)
do
do
a = (upvalues[0]);
(registers)[3] = a[2][a[1]]
end

end
::p5::
branch_taken=false
do
do
if registers[3] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p86
::p16::
tick(16)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p108
::p18::
tick(18)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p56
::p26::
tick(26)
do
do
a = 9
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
::p27::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p28::
do
do
a = upvalues[0]
a[2][a[1]] = registers[6]
end

end
::p29::
do
do
a = (upvalues[0]);
(registers)[6] = a[2][a[1]]
end

end
::p30::
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
::p31::
tick(31)
do
do
(registers)[5] = registers[5] * registers[4]
end

end
::p32::
do
do
(registers)[5] = registers[3] + registers[5]
end

end
::p33::
do
do
(registers)[6] = upvalues[2]["clamp"]
end

end
::p34::
do
do
(registers)[7] = registers[5]
end

end
goto p93
::p36::
tick(36)
do
do
registers[2] = (1)
end

end
goto p16
::p38::
do
do
a = {
    ...,
}
for f = 1, 1, 1 do
    registers[f] = (a[f])
end
end

end
::p39::
do
do
(registers)[2] = registers[1]
end

end
::p40::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p36
::p56::
do
do
registers[4] = (-1)
end

end
goto p89
::p86::
do
do
(registers)[3] = registers[2]
end

end
::p87::
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
::p89::
do
do
(registers)[5] = upvalues[1][19]
end

end
::p90::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p91::
do
do
registers[5] = (registers[5] * 12)
end

end
goto p31
::p93::
do
do
(registers)[8] = upvalues[1][162]
end

end
::p94::
do
do
(registers)[9] = registers[3]
end

end
::p95::
do
do
(registers)[10] = registers[2]
end

end
::p96::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p104::
do
do
(registers)[9] = upvalues[1][151]
end

end
::p105::
do
do
(registers)[10] = registers[3]
end

end
::p106::
do
do
(registers)[11] = registers[2]
end

end
goto p26
::p108::
do
do
registers[2] = (0)
end

end
goto p4
::p110::
do
do
a = (upvalues[0]);
(registers)[3] = a[2][a[1]]
end

end
::p111::
do
do
registers[4] = registers[2] > registers[3]
end

end
::p112::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p2
end
end
