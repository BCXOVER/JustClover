
-- Function f35; 16 recovered instruction blocks.
F.f35=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f35",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f35 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p7
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
::p4::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p5::
do
do
(registers)[4] = registers[3]
end

end
::p6::
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
::p7::
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
::p8::
do
do
registers[3] = (0)
end

end
::p9::
do
do
(registers)[4] = registers[2]
end

end
goto p32
::p20::
do
do
registers[8] = (registers[3] * 256)
end

end
::p21::
do
do
registers[9] = (upvalues[0])
end

end
::p22::
do
do
(registers)[10] = registers[1]
end

end
::p25::
do
do
(registers)[11] = registers[7]
end

end
::p26::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p27::
do
do
(registers)[3] = registers[8] + registers[9]
end

end
goto p2
::p32::
do
do
registers[5] = registers[2] + 3
end

end
::p33::
do
do
registers[6] = (1)
end

end
::p34::
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
if branch_taken then goto p2 end
goto p2
end
end
