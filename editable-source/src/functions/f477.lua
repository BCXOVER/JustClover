
-- Function f477; 13 recovered instruction blocks.
F.f477=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f477",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f477 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p17
::p4::
tick(4)
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p49
::p7::
tick(7)
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p8::
do
do
registers[1] = (registers[1]["enemy_resolver"])
end

end
::p9::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
goto p4
::p17::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p18::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p19::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p7
::p39::
tick(39)
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
return registers[1]
end

end
::p49::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p50::
do
do
registers[1] = (registers[1]["enemy_resolver"])
end

end
::p51::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p52::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p75::
do
do
registers[1] = (registers[1] == true)
end

end
goto p39
end
end
