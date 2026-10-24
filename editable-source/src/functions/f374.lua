
-- Function f374; 17 recovered instruction blocks.
F.f374=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f374",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f374 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p61
::p4::
tick(4)
branch_taken=false
do
do
if registers[1] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
::p13::
tick(13)
do
do
registers[2] = ("?")
end

end
::p14::
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
return registers[2]
end

end
::p34::
tick(34)
branch_taken=false
do
do
if registers[2] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p53
::p49::
tick(49)
do
do
(registers)[4] = registers[2]
end

end
::p50::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if registers[3] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p34
::p53::
do
do
registers[3] = ("?")
end

end
::p54::
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
::p55::
do
do
(registers)[2] = upvalues[0][43]
end

end
::p56::
do
do
(registers)[3] = registers[1]
end

end
::p57::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p58::
do
do
(registers)[3] = environment["type"]
end

end
goto p49
::p61::
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
::p62::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p4
::p72::
do
do
(registers)[3] = registers[2]
end

end
::p73::
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
end
end
