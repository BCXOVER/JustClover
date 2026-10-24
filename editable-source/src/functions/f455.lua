
-- Function f455; 16 recovered instruction blocks.
F.f455=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f455",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f455 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p17
::p3::
tick(3)
do
do
(registers)[4] = registers[2]
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
return registers[4]
end

end
::p5::
tick(5)
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
tick(7)
do
do
(registers)[3] = registers[2]
end

end
::p8::
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
::p9::
tick(9)
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p10::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p11::
do
do
(registers)[4] = environment["type"]
end

end
goto p20
::p13::
tick(13)
do
do
registers[3] = (registers[1]["get"])
end

end
::p14::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p7
::p17::
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
::p18::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p13
::p20::
do
do
(registers)[5] = registers[3]
end

end
::p21::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p22::
branch_taken=false
do
do
if registers[4] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p3
end
end
