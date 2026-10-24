
-- Function f112; 25 recovered instruction blocks.
F.f112=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f112",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f112 pc="..pc,0) end
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
registers[3] = (registers[3] * 2)
end

end
::p6::
tick(6)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p35
::p17::
tick(17)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p74
::p35::
branch_taken=false
do
do
if not (0 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p91
::p38::
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
::p39::
do
do
registers[3] = (1)
end

end
::p40::
do
do
registers[4] = (0)
end

end
goto p6
::p42::
tick(42)
do
do
registers[7] = (registers[1] - registers[5])
end

end
::p43::
do
do
registers[1] = registers[7] / 2
end

end
::p44::
do
do
registers[7] = (registers[2] - registers[6])
end

end
::p45::
do
do
registers[2] = registers[7] / 2
end

end
goto p2
::p47::
tick(47)
do
do
(registers)[1] = registers[2]
end

end
goto p67
::p60::
tick(60)
do
do
registers[5] = registers[1] % 2
end

end
::p61::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p17
::p63::
branch_taken=false
do
do
if not (registers[1] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p67 end
goto p47
::p65::
tick(65)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p42
::p67::
tick(67)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p60
::p71::
do
do
(registers)[5] = registers[4]
end

end
::p72::
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
::p74::
do
do
registers[6] = (registers[1] - registers[5])
end

end
::p75::
do
do
registers[1] = registers[6] / 2
end

end
::p76::
do
do
registers[3] = (registers[3] * 2)
end

end
goto p67
::p91::
do
do
registers[5] = registers[1] % 2
end

end
::p92::
do
do
registers[6] = registers[2] % 2
end

end
::p93::
branch_taken=false
do
do
if registers[5] == registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p65
end
end
