
-- Function f449; 18 recovered instruction blocks.
F.f449=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f449",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f449 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p6
::p2::
tick(2)
do
do
(registers)[5] = registers[2]
end

end
::p3::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p20
::p5::
tick(5)
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
::p6::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p7::
do
do
(registers)[4] = registers[1]
end

end
::p8::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
::p9::
do
do
registers[4] = (0)
end

end
goto p2
::p11::
tick(11)
do
do
(registers)[6] = registers[6] * registers[7]
end

end
::p12::
do
do
registers[6] = registers[6] % 1
end

end
::p13::
do
do
registers[7] = (registers[5] - registers[4])
end

end
::p14::
do
do
(registers)[7] = registers[7] * registers[6]
end

end
::p15::
do
do
(registers)[7] = registers[4] + registers[7]
end

end
goto p5
::p17::
tick(17)
do
do
registers[7] = (1)
end

end
goto p11
::p20::
do
do
(registers)[5] = registers[4]
end

end
goto p24
::p22::
tick(22)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p17
::p24::
do
do
(registers)[6] = upvalues[0][30]
end

end
::p25::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p26::
do
do
(registers)[7] = registers[3]
end

end
goto p22
end
end
