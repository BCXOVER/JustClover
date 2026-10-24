
-- Function f290; 34 recovered instruction blocks.
F.f290=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f290",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f290 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p72
::p12::
tick(12)
do
do
registers[3] = (registers[1][1])
end

end
::p13::
do
do
(registers)[4] = upvalues[0][161]
end

end
::p14::
do
do
registers[5] = (registers[1][1])
end

end
goto p52
::p16::
tick(16)
do
do
registers[3] = (#registers[1])
end

end
::p17::
branch_taken=false
do
do
if registers[3] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p98
::p28::
tick(28)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[5 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p56
::p30::
do
do
(registers)[9] = upvalues[0][161]
end

end
::p31::
do
do
(registers)[10] = registers[1][registers[8]]
end

end
::p32::
do
do
registers[10] = (registers[2] - registers[10])
end

end
::p33::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p78
::p52::
do
do
registers[5] = (registers[2] - registers[5])
end

end
::p53::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p54::
do
do
registers[5] = (2)
end

end
goto p80
::p56::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p57::
do
do
(registers)[5] = registers[3]
end

end
::p58::
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
::p59::
tick(59)
do
do
(registers)[3] = registers[1][registers[8]]
end

end
::p60::
do
do
(registers)[4] = registers[9]
end

end
goto p28
::p72::
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
::p73::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p16
::p78::
branch_taken=false
do
do
if not (registers[9] < registers[4]) then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p59
::p80::
do
do
registers[6] = (#registers[1])
end

end
::p81::
do
do
registers[7] = (1)
end

end
::p82::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 5
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p28 end
::p83::
do
do
registers[29] = operand_k
end

end
::p84::
do
do
registers[23] = (code_metadata)
end

end
::p85::
do
do
(registers)[28] = (operand_i)
end

end
::p86::
do
do
registers[28][56] = 0
end

end
::p87::
do
do
registers[23][56] = 177
end

end
::p88::
do
do
registers[29][56] = 0
end

end
::p89::
do
do
registers[29][19] = 27
end

end
::p90::
do
do
for f = 22, 29, 1 do
    (registers)[f] = nil
end
end

end
goto p28
::p98::
do
do
(registers)[3] = nil
end

end
::p99::
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
end
end
