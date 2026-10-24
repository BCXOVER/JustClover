
-- Function f149; 57 recovered instruction blocks.
F.f149=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f149",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f149 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p99
::p4::
tick(4)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p56
::p15::
tick(15)
do
do
registers[4] = (1)
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
m = 2
q = (q[m])
end

end
::p18::
do
do
(a)[z] = q
end

end
::p19::
do
do
registers[6] = (1)
end

end
::p20::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p73 end
goto p99
::p47::
tick(47)
do
do
(registers)[8] = upvalues[0][45]
end

end
::p48::
do
do
(registers)[9] = registers[7]
end

end
::p49::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p75
::p51::
tick(51)
do
do
registers[8] = (#registers[3])
end

end
::p52::
do
do
registers[8] = registers[8] + 1
end

end
::p53::
do
do
(registers[3])[registers[8]] = registers[7]
end

end
goto p73
::p56::
tick(56)
do
do
(registers)[4] = registers[3]
end

end
::p57::
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
::p71::
tick(71)
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p166 end
goto p4
::p73::
tick(73)
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p171
::p75::
branch_taken=false
do
do
if registers[8] ~= "CCSPlayer" then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p92
::p85::
tick(85)
do
do
(registers)[8] = upvalues[0][33]
end

end
::p86::
do
do
(registers)[9] = registers[7]
end

end
::p87::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p88::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p158 end
goto p71
::p92::
do
do
(registers)[9] = upvalues[0][33]
end

end
::p93::
do
do
a = (registers)
z = 10
end

end
::p94::
do
do
q = registers
m = 7
q = (q[m])
end

end
::p95::
do
do
(a)[z] = q
end

end
::p96::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p97::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p73
::p99::
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
::p100::
do
do
(registers)[2] = upvalues[0][31]
end

end
::p101::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p102::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p136
::p104::
tick(104)
do
do
registers[3] = {
}
end

end
::p105::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p114 end
goto p15
::p114::
do
do
registers[4] = (1)
end

end
::p115::
do
do
(registers)[5] = registers[2]
end

end
::p116::
do
do
registers[6] = (1)
end

end
goto p139
::p129::
tick(129)
do
do
(registers)[8] = upvalues[0][50]
end

end
::p130::
do
do
a = (registers)
z = 9
end

end
::p131::
do
do
q = registers
m = 7
q = (q[m])
end

end
::p132::
do
do
(a)[z] = q
end

end
::p133::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p134::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p85
::p136::
do
do
registers[2] = (64)
end

end
goto p104
::p139::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p71 end
goto p15
::p158::
do
do
registers[8] = (#registers[3])
end

end
::p159::
do
do
a = (registers)
end

end
::p160::
do
do
z = (8)
q = (registers)
end

end
::p161::
do
do
m = 8
end

end
::p162::
do
do
q = q[m]
m = 1
end

end
::p163::
do
do
q = (q + m);
(a)[z] = (q)
end

end
::p164::
do
do
(registers[3])[registers[8]] = registers[7]
end

end
goto p71
::p166::
do
do
(registers)[8] = upvalues[0][45]
end

end
::p167::
do
do
(registers)[9] = registers[7]
end

end
::p168::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p169::
branch_taken=false
do
do
if registers[8] ~= "CCSPlayer" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p71
::p171::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p56
end
end
