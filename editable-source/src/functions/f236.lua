
-- Function f236; 19 recovered instruction blocks.
F.f236=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f236",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f236 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p76
::p16::
tick(16)
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p64
::p34::
tick(34)
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
goto p46
::p37::
tick(37)
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p38::
do
do
registers[1] = (registers[1] == true)
end

end
goto p75
::p46::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p75 end
::p59::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p60::
do
do
registers[1] = (registers[1]["hitchance"])
end

end
::p61::
do
do
registers[1] = (registers[1]["enabled"])
end

end
::p62::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p37
::p64::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p65::
do
do
registers[1] = (registers[1]["hitchance"])
end

end
::p66::
do
do
registers[1] = (registers[1]["enabled"])
end

end
goto p34
::p70::
tick(70)
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p71::
do
do
registers[1] = (registers[1]["hitchance"])
end

end
::p72::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
goto p16
::p75::
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
::p76::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p77::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p78::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p70
end
end
