
-- Function f450; 22 recovered instruction blocks.
F.f450=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f450",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f450 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p32
::p2::
tick(2)
do
do
(registers)[6] = registers[4] + registers[5]
end

end
::p3::
do
do
registers[6] = (registers[6] * 0.5)
end

end
::p4::
do
do
registers[7] = (registers[5] - registers[4])
end

end
::p5::
do
do
registers[7] = (registers[7] * 0.5)
end

end
::p6::
do
do
(registers)[8] = upvalues[0][163]
end

end
goto p51
::p8::
tick(8)
do
do
registers[4] = (0)
end

end
goto p40
::p24::
tick(24)
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
return registers[8]
end

end
::p32::
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
::p33::
do
do
(registers)[4] = registers[1]
end

end
::p34::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p8
::p38::
tick(38)
do
do
registers[10] = (1)
end

end
goto p56
::p40::
do
do
(registers)[5] = registers[2]
end

end
::p41::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
::p45::
do
do
(registers)[5] = registers[4]
end

end
goto p2
::p51::
do
do
(registers)[9] = upvalues[0][30]
end

end
::p52::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p53::
do
do
(registers)[10] = registers[3]
end

end
::p54::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p38
::p56::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p57::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p58::
do
do
(registers)[8] = registers[8] * registers[7]
end

end
::p59::
do
do
(registers)[8] = registers[6] + registers[8]
end

end
goto p24
end
end
