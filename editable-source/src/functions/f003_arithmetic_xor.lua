
-- Function f3; 25 recovered instruction blocks.
F.f3=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f3",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f3 pc="..pc,0) end
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
if branch_taken then goto p85 end
goto p94
::p4::
tick(4)
do
do
registers[2] = registers[7] / 2
end

end
::p5::
do
do
registers[3] = (registers[3] * 2)
end

end
goto p15
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
goto p15
::p12::
tick(12)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p55
::p15::
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p2
::p17::
tick(17)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p99
::p44::
tick(44)
do
do
(registers)[5] = registers[4]
end

end
::p45::
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
::p46::
tick(46)
do
do
(registers)[1] = registers[2]
end

end
goto p89
::p55::
tick(55)
do
do
registers[7] = (registers[1] - registers[5])
end

end
::p56::
do
do
registers[1] = registers[7] / 2
end

end
::p57::
do
do
registers[7] = (registers[2] - registers[6])
end

end
goto p4
::p85::
branch_taken=false
do
do
if not (registers[1] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p46
::p89::
tick(89)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
::p91::
do
do
registers[5] = registers[1] % 2
end

end
::p92::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p17
::p94::
do
do
registers[5] = registers[1] % 2
end

end
::p95::
do
do
registers[6] = registers[2] % 2
end

end
::p96::
branch_taken=false
do
do
if registers[5] == registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p12
::p99::
do
do
registers[6] = (registers[1] - registers[5])
end

end
::p100::
do
do
registers[1] = registers[6] / 2
end

end
::p101::
do
do
registers[3] = (registers[3] * 2)
end

end
goto p89
end
end
