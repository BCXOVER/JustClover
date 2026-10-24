
-- Function f441; 23 recovered instruction blocks.
F.f441=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f441",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f441 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p61
::p2::
tick(2)
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p3::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p75
::p6::
tick(6)
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p7::
do
do
registers[1] = (registers[1]["stubs"])
end

end
goto p2
::p9::
tick(9)
do
do
registers[5] = registers[5] + 0.5
end

end
::p10::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p11::
do
do
registers[5] = (0)
end

end
::p12::
do
do
registers[6] = (255)
end

end
::p13::
do
do
a = (3)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p24::
tick(24)
do
do
registers[5] = (95)
end

end
goto p9
::p30::
tick(30)
do
do
registers[3] = (95)
end

end
::p31::
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
::p34::
tick(34)
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p30
::p55::
do
do
(registers)[3] = upvalues[1]["clamp"]
end

end
::p56::
do
do
(registers)[4] = upvalues[2][154]
end

end
::p57::
do
do
a = (5)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p58::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p59::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p24
::p61::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p62::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p6
::p65::
tick(65)
do
do
(registers)[2] = nil
end

end
goto p34
::p75::
do
do
registers[2] = (registers[1]["aimbot_logs_gradient"])
end

end
::p104::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p65
end
end
