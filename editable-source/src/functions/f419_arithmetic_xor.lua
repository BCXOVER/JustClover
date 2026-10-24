
-- Function f419; 25 recovered instruction blocks.
F.f419=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f419",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f419 pc="..pc,0) end
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
if not (0 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p11
::p5::
tick(5)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p2
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
registers[3] = (1)
end

end
::p9::
do
do
registers[4] = (0)
end

end
goto p5
::p11::
do
do
registers[5] = registers[1] % 2
end

end
::p12::
do
do
registers[6] = registers[2] % 2
end

end
::p13::
branch_taken=false
do
do
if registers[5] == registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p77
::p15::
tick(15)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p72
::p17::
tick(17)
do
do
registers[7] = (registers[1] - registers[5])
end

end
::p18::
do
do
registers[1] = registers[7] / 2
end

end
::p19::
do
do
registers[7] = (registers[2] - registers[6])
end

end
::p20::
do
do
registers[2] = registers[7] / 2
end

end
::p21::
do
do
registers[3] = (registers[3] * 2)
end

end
goto p5
::p33::
tick(33)
do
do
(registers)[1] = registers[2]
end

end
goto p70
::p64::
tick(64)
do
do
(registers)[5] = registers[4]
end

end
::p65::
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
return registers[5]
end

end
::p67::
tick(67)
do
do
registers[5] = registers[1] % 2
end

end
::p68::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p15
::p70::
tick(70)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p67
::p72::
do
do
registers[6] = (registers[1] - registers[5])
end

end
::p73::
do
do
registers[1] = registers[6] / 2
end

end
::p74::
do
do
registers[3] = (registers[3] * 2)
end

end
goto p70
::p77::
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p17
::p79::
branch_taken=false
do
do
if not (registers[1] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p33
end
end
