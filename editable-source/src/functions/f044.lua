
-- Function f44; 16 recovered instruction blocks.
F.f44=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f44",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f44 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p11
::p3::
tick(3)
do
do
registers[5] = (#registers[2])
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
if branch_taken then goto p6 end
::p6::
tick(6)
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
if branch_taken then goto p19 end
::p8::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p9::
do
do
(registers)[4] = registers[3]
end

end
::p10::
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
::p11::
do
do
_, Q = pack_returns(...)
end

end
::p12::
do
do
registers[2] = {
}
end

end
::p13::
do
do
a = 3
z = (_ - T - 1)
if z < 0 then
    z = (-1)
end
q = 0
for T = a, a + z, 1 do
    (registers)[T] = (Q[W + q])
    q = q + 1
end
top = (a + z)
end

end
::p14::
do
do
a = (2)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p15::
do
do
registers[3] = ("")
end

end
::p16::
do
do
registers[4] = (1)
end

end
goto p3
::p19::
do
do
(registers)[8] = registers[2][registers[7]]
end

end
::p20::
do
do
(registers)[8] = upvalues[0][registers[8]]
end

end
::p21::
do
do
registers[3] = (registers[3] .. registers[8])
end

end
goto p6
end
end
