
-- Function f289; 24 recovered instruction blocks.
F.f289=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f289",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f289 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
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
::p3::
do
do
registers[3] = (registers[2.0] - registers[1])
end

end
::p4::
do
do
(registers)[4] = upvalues[0][157]
end

end
::p5::
do
do
registers[5] = (registers[3]["y"])
end

end
::p6::
do
do
registers[6] = (registers[3]["x"])
end

end
::p7::
do
do
registers[5] = (registers[5] / registers[6])
end

end
goto p44
::p15::
tick(15)
do
do
(registers)[5] = registers[4]
end

end
::p16::
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
::p30::
tick(30)
do
do
registers[5] = (upvalues[1])
end

end
::p31::
do
do
registers[6] = registers[4] + 180
end

end
::p32::
do
do
registers[7] = (180)
end

end
::p33::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p34::
do
do
(registers)[4] = registers[5]
end

end
goto p15
::p44::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p45::
do
do
registers[5] = (upvalues[1])
end

end
::p46::
do
do
registers[6] = (registers[4] * 180)
end

end
goto p93
::p60::
tick(60)
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p61::
do
do
(registers)[4] = registers[5]
end

end
::p62::
do
do
registers[5] = (registers[3]["x"])
end

end
::p63::
branch_taken=false
do
do
if not (not (0 <= registers[5])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p30
::p93::
do
do
(registers)[7] = environment["math"]
end

end
::p94::
do
do
registers[7] = (registers[7]["pi"])
end

end
::p95::
do
do
registers[6] = (registers[6] / registers[7])
end

end
::p96::
do
do
registers[7] = (180)
end

end
goto p60
end
end
