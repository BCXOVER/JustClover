
-- Function f498; 12 recovered instruction blocks.
F.f498=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f498",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f498 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p3
::p3::
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
::p4::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_payload"]
end

end
::p5::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p6::
do
do
(registers)[3] = environment["type"]
end

end
::p7::
do
do
(registers)[4] = registers[2]
end

end
::p8::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p59
::p40::
tick(40)
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["encode"]
end

end
::p41::
do
do
(registers)[5] = registers[2]
end

end
::p42::
do
do
a = (3)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p43::
tick(43)
do
do
(registers)[3] = nil
end

end
::p44::
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
::p59::
branch_taken=false
do
do
if registers[3] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p43
end
end
