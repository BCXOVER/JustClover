
-- Function f248; 35 recovered instruction blocks.
F.f248=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f248",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f248 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p45
::p2::
tick(2)
do
do
registers[4] = (1)
end

end
::p3::
do
do
registers[5] = (#registers[3])
end

end
::p4::
do
do
registers[6] = (1)
end

end
::p5::
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
if branch_taken then goto p38 end
goto p107
::p8::
tick(8)
do
do
registers[3] = (false)
end

end
::p9::
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
::p10::
tick(10)
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p8
::p26::
tick(26)
branch_taken=false
do
do
if registers[4] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p40
::p38::
tick(38)
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
if branch_taken then goto p98 end
goto p107
::p40::
do
do
registers[4] = (false)
end

end
::p41::
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
::p42::
tick(42)
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p43::
branch_taken=false
do
do
if registers[4] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p103
::p45::
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
::p46::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p10
::p55::
do
do
(registers)[4] = registers[3][registers[2]]
end

end
::p56::
branch_taken=false
do
do
if registers[4] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p101
::p59::
tick(59)
do
do
registers[8] = (true)
end

end
::p60::
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
return registers[8]
end

end
::p73::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p74::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p75::
do
do
(registers)[4] = environment["type"]
end

end
::p76::
do
do
(registers)[5] = registers[3]
end

end
goto p42
::p93::
do
do
(registers)[4] = environment["type"]
end

end
::p94::
do
do
(registers)[5] = registers[3]
end

end
::p95::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p26
::p98::
do
do
(registers)[8] = registers[3][registers[7]]
end

end
::p99::
branch_taken=false
do
do
if registers[8] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p59
::p101::
tick(101)
do
do
registers[4] = (true)
end

end
::p102::
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
::p103::
do
do
registers[4] = registers[3] == registers[2]
end

end
::p104::
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
::p107::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p108::
do
do
registers[4] = (false)
end

end
::p109::
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
end
end
