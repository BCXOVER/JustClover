
-- Function f166; 39 recovered instruction blocks.
F.f166=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f166",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f166 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p85
::p2::
tick(2)
do
do
registers[3] = (false)
end

end
::p3::
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
::p4::
tick(4)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
do
do
registers[3] = (registers[3] == "Hidden")
end

end
goto p62
::p7::
tick(7)
do
do
registers[3] = (registers[2]["yaw"])
end

end
::p8::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
::p9::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
::p29::
do
do
registers[3] = (registers[2]["yaw"])
end

end
::p30::
do
do
registers[3] = (registers[3]["builder_type"])
end

end
::p31::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p32::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p33::
do
do
registers[3] = (registers[3] == "Hidden")
end

end
goto p73
::p35::
tick(35)
do
do
registers[3] = (registers[3] == "Hidden")
end

end
goto p76
::p37::
tick(37)
branch_taken=false
do
do
if registers[4] ~= "Defensive" then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p71
::p49::
tick(49)
do
do
registers[3] = (registers[2]["yaw_modifiers"])
end

end
::p50::
do
do
registers[3] = (registers[3]["builder_type"])
end

end
::p51::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p4
::p55::
tick(55)
do
do
registers[3] = (registers[2]["yaw_modifiers"])
end

end
::p56::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
::p57::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p49
::p59::
tick(59)
do
do
(registers)[3] = upvalues[0]["switch_type"]
end

end
::p60::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p102
::p62::
tick(62)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p114
::p71::
do
do
registers[3] = (false)
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
return registers[3]
end

end
::p73::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p55
::p76::
tick(76)
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
::p85::
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
::p86::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p2
::p90::
tick(90)
do
do
registers[3] = (registers[2]["delay"])
end

end
::p91::
do
do
registers[3] = (registers[3]["builder_type"])
end

end
::p92::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p93::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p35
::p102::
do
do
(registers)[4] = upvalues[0]["switch_type"]
end

end
::p103::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p104::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p37
::p114::
do
do
registers[3] = (registers[2]["delay"])
end

end
::p115::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
::p116::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p90
end
end
