
-- Function f440; 14 recovered instruction blocks.
F.f440=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f440",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f440 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p39
::p11::
tick(11)
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p12::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p42
::p38::
tick(38)
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
::p39::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p40::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p52
::p42::
do
do
registers[2] = (registers[1]["aimbot_logs"])
end

end
::p43::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
goto p55
::p46::
tick(46)
do
do
registers[2] = (registers[1]["aimbot_logs"])
end

end
::p47::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p48::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p49::
do
do
registers[2] = (registers[2] == true)
end

end
goto p38
::p52::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p53::
do
do
registers[1] = (registers[1]["stubs"])
end

end
goto p11
::p55::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p46
end
end
