
-- Function f298; 20 recovered instruction blocks.
F.f298=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f298",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f298 pc="..pc,0) end
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
registers[2] = (false)
end

end
::p3::
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
::p18::
tick(18)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p19::
do
do
registers[2] = (false)
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
return registers[2]
end

end
::p26::
tick(26)
do
do
registers[6] = (true)
end

end
::p27::
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
::p30::
tick(30)
do
do
registers[2] = (1)
end

end
::p31::
do
do
registers[3] = (upvalues[0])
end

end
::p32::
do
do
registers[3] = (#registers[3])
end

end
::p33::
do
do
registers[4] = (1)
end

end
goto p45
::p35::
tick(35)
do
do
(registers)[6] = upvalues[0][registers[5]]
end

end
::p36::
branch_taken=false
do
do
if registers[6] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p26
::p38::
tick(38)
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
(registers)[2] = environment["type"]
end

end
::p40::
do
do
(registers)[3] = registers[1]
end

end
::p41::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p42::
branch_taken=false
do
do
if registers[2] ~= "string" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p2
::p45::
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
if branch_taken then goto p60 end
goto p38
::p60::
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
if branch_taken then goto p35 end
goto p18
end
end
