
-- Function f242; 46 recovered instruction blocks.
F.f242=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f242",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f242 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p147
::p3::
tick(3)
do
do
registers[5] = (false)
end

end
::p4::
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
::p7::
tick(7)
do
do
(registers)[7] = environment["peeking_time"]
end

end
::p8::
do
do
registers[6] = (registers[6] - registers[7])
end

end
::p9::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p10::
branch_taken=false
do
do
if not (not (registers[3] <= registers[5])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p137
::p12::
do
do
registers[5] = (true)
end

end
::p13::
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
::p34::
tick(34)
do
do
(registers)[5] = upvalues[0][161]
end

end
::p35::
do
do
(registers)[6] = upvalues[0][23]
end

end
::p36::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
goto p7
::p57::
tick(57)
do
do
registers[7] = ("Hit")
end

end
::p58::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p59::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p105 end
goto p134
::p62::
tick(62)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p139 end
::p74::
tick(74)
do
do
registers[5] = (false)
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
return registers[5]
end

end
::p84::
tick(84)
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p85::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p3
::p87::
do
do
(registers)[5] = environment["entity"]
end

end
::p88::
do
do
registers[5] = (registers[5]["get_flag"])
end

end
::p89::
do
do
(registers)[6] = registers[2]
end

end
goto p57
::p91::
tick(91)
do
do
(registers)[5] = upvalues[0][23]
end

end
::p92::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p93::
do
do
(environment)["peeking_time"] = (registers[5])
end

end
::p94::
do
do
(registers)[5] = upvalues[0][23]
end

end
::p95::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p96::
do
do
(environment)["latest_time_peek"] = (registers[5])
end

end
goto p34
::p105::
do
do
(environment)["peeking_time"] = (registers[0])
end

end
::p106::
do
do
(environment)["latest_time_peek"] = (registers[0])
end

end
::p107::
do
do
registers[5] = (false)
end

end
::p108::
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
::p109::
tick(109)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p62
::p134::
do
do
(registers)[5] = environment["latest_time_peek"]
end

end
::p135::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p91
::p137::
do
do
registers[5] = (false)
end

end
::p138::
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
::p139::
do
do
(registers)[5] = environment["entity"]
end

end
::p140::
do
do
a = registers
z = (5)
q = (registers)
end

end
::p141::
do
do
m = 5
q = q[m]
end

end
::p142::
do
do
m = ("get_flag")
q = q[m]
end

end
::p143::
do
do
(a)[z] = q
end

end
::p144::
do
do
(registers)[6] = registers[2]
end

end
::p145::
do
do
registers[7] = ("Occluded")
end

end
goto p84
::p147::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p148::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p109
end
end
