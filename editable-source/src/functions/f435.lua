
-- Function f435; 18 recovered instruction blocks.
F.f435=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f435",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f435 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p17
::p13::
tick(13)
do
do
(registers)[7] = registers[1][registers[6]]
end

end
::p14::
do
do
(registers[2])[registers[6]] = registers[7]
end

end
goto p37
::p17::
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
::p18::
do
do
(registers)[2] = environment["type"]
end

end
::p19::
do
do
(registers)[3] = registers[1]
end

end
::p20::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p39
::p32::
tick(32)
do
do
registers[2] = {
}
end

end
::p33::
do
do
registers[3] = (1)
end

end
::p34::
do
do
registers[4] = (#registers[1])
end

end
::p35::
do
do
registers[5] = (1)
end

end
::p36::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 3
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p37 end
::p37::
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
    (registers)[3 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p41
::p39::
branch_taken=false
do
do
if registers[2] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p45
::p41::
tick(41)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p42::
do
do
(registers)[3] = registers[2]
end

end
::p43::
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
::p45::
do
do
registers[2] = {
}
end

end
::p46::
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
end
end
