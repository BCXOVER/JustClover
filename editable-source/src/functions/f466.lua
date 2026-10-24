
-- Function f466; 19 recovered instruction blocks.
F.f466=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f466",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f466 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p42
::p2::
tick(2)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p3::
do
do
(registers)[2] = nil
end

end
::p4::
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
::p16::
tick(16)
do
do
(registers)[6] = upvalues[0]["render_items"]
end

end
::p17::
do
do
(registers)[6] = registers[6][registers[5]]
end

end
::p18::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p22
::p20::
tick(20)
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
if branch_taken then goto p49 end
goto p2
::p22::
do
do
registers[7] = (registers[6]["kind"])
end

end
::p23::
branch_taken=false
do
do
if registers[7] ~= "bomb_hp" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
::p36::
do
do
registers[8] = (registers[6]["kind"])
end

end
::p37::
branch_taken=false
do
do
if registers[8] ~= "fatal" then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
::p40::
do
do
(registers)[7] = registers[5]
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
return registers[7]
end

end
::p42::
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
::p43::
do
do
registers[2] = (1)
end

end
::p44::
do
do
(registers)[3] = upvalues[0]["render_count"]
end

end
::p45::
do
do
registers[4] = (1)
end

end
::p46::
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
if branch_taken then goto p20 end
goto p20
::p49::
branch_taken=false
do
do
if registers[5] == registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p16
end
end
