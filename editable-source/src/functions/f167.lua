
-- Function f167; 26 recovered instruction blocks.
F.f167=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f167",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f167 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p19
::p17::
tick(17)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p82
::p19::
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
::p20::
do
do
a = upvalues[0];
(registers)[2] = (a[2][a[1]]["current"])
end

end
::p21::
branch_taken=false
do
do
if registers[2] ~= "Air-crouch" then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p39
::p30::
tick(30)
do
do
registers[4] = (registers[1]["body_yaw"])
end

end
::p31::
do
do
registers[4] = (registers[4]["inverter"])
end

end
::p32::
do
do
(registers)[4] = not registers[4]
end

end
::p33::
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
::p39::
do
do
(registers)[2] = upvalues[1]["builder"]
end

end
::p40::
do
do
a = upvalues[0];
(registers)[3] = (a[2][a[1]]["current"])
end

end
::p41::
do
do
(registers)[2] = registers[2][registers[3]]
end

end
::p42::
do
do
registers[3] = (registers[2] ~= registers[0])
end

end
goto p17
::p65::
tick(65)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p114 end
goto p92
::p73::
do
do
registers[2] = (registers[1]["body_yaw"])
end

end
::p74::
do
do
registers[2] = (registers[2]["inverter"])
end

end
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
return registers[2]
end

end
::p82::
do
do
registers[3] = (registers[2]["body_yaw"])
end

end
goto p65
::p92::
do
do
(registers)[3] = nil
end

end
goto p114
::p103::
tick(103)
do
do
registers[4] = (registers[3]["type"])
end

end
::p104::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p105::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p106::
branch_taken=false
do
do
if registers[4] ~= "Jitter" then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
::p111::
do
do
registers[4] = (registers[1]["body_yaw"])
end

end
::p112::
do
do
registers[4] = (registers[4]["inverter"])
end

end
::p113::
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
::p114::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p103
end
end
