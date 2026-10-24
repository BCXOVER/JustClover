
-- Function f504; 29 recovered instruction blocks.
F.f504=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f504",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f504 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p28
::p2::
tick(2)
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
    (registers)[2 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p19
::p7::
tick(7)
do
do
(registers)[7] = upvalues[0][42]
end

end
::p8::
do
do
(registers)[8] = registers[5]
end

end
::p9::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p10::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p62
::p19::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p20::
do
do
(registers)[2] = registers[1]
end

end
::p21::
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
::p28::
do
do
registers[1] = {
}
end

end
::p29::
do
do
registers[2] = (1)
end

end
::p30::
do
do
(registers)[3] = upvalues[0][31]
end

end
::p31::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p32::
do
do
registers[4] = (1)
end

end
goto p111
::p34::
tick(34)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p7
::p58::
tick(58)
do
do
(registers)[7] = upvalues[0][50]
end

end
::p59::
do
do
(registers)[8] = registers[5]
end

end
::p60::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p34
::p62::
do
do
registers[6] = (#registers[1])
end

end
::p63::
do
do
registers[6] = registers[6] + 1
end

end
::p64::
do
do
(registers[1])[registers[6]] = registers[5]
end

end
goto p2
::p85::
tick(85)
do
do
(registers)[7] = upvalues[0][33]
end

end
::p86::
do
do
(registers)[8] = registers[5]
end

end
::p87::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p88::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p58
::p90::
do
do
(registers)[6] = upvalues[0][45]
end

end
::p91::
do
do
(registers)[7] = registers[5]
end

end
::p92::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p93::
branch_taken=false
do
do
if registers[6] ~= "CCSPlayer" then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p85
::p111::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 2
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p2 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f504 pc=111",0)
end
end
