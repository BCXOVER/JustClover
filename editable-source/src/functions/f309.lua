
-- Function f309; 49 recovered instruction blocks.
F.f309=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f309",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f309 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p69
::p16::
tick(16)
do
do
a = (upvalues[2]);
(registers)[3] = a[2][a[1]]
end

end
::p17::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p98
::p19::
tick(19)
do
do
registers[3] = (true)
end

end
::p20::
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
::p31::
tick(31)
do
do
registers[3] = (false)
end

end
::p32::
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
::p33::
tick(33)
do
do
registers[3] = (false)
end

end
::p34::
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
::p37::
tick(37)
do
do
registers[3] = (upvalues[1])
end

end
::p38::
do
do
(registers)[4] = registers[1]
end

end
::p39::
do
do
(registers)[5] = registers[2]
end

end
::p40::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p41::
branch_taken=false
do
do
if registers[3] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p16
::p44::
tick(44)
do
do
a = upvalues[3]
a[2][a[1]] = registers[0]
end

end
::p45::
do
do
a = upvalues[2]
a[2][a[1]] = registers[0]
end

end
::p46::
do
do
registers[3] = (false)
end

end
::p47::
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
::p48::
tick(48)
do
do
(registers)[3] = environment["entity"]
end

end
::p49::
do
do
registers[3] = (registers[3]["get_flag"])
end

end
::p50::
do
do
(registers)[4] = registers[2]
end

end
::p51::
do
do
registers[5] = ("Hit")
end

end
::p52::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p53::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p37
::p55::
tick(55)
do
do
registers[3] = (false)
end

end
::p56::
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
::p58::
tick(58)
do
do
a = upvalues[0];
(registers)[3] = (a[2][a[1]]["moving"])
end

end
::p59::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p105
::p69::
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
::p70::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p58
::p72::
tick(72)
do
do
(registers)[3] = upvalues[4][161]
end

end
::p73::
do
do
(registers)[4] = upvalues[4][23]
end

end
::p74::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
goto p114
::p98::
do
do
(registers)[3] = upvalues[4][23]
end

end
::p99::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p100::
do
do
a = upvalues[3]
a[2][a[1]] = registers[3]
end

end
::p101::
do
do
(registers)[3] = upvalues[4][23]
end

end
::p102::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p103::
do
do
a = upvalues[2]
a[2][a[1]] = registers[3]
end

end
goto p72
::p105::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p31
::p107::
do
do
(registers)[3] = environment["entity"]
end

end
::p108::
do
do
registers[3] = (registers[3]["get_flag"])
end

end
::p109::
do
do
(registers)[4] = registers[2]
end

end
::p110::
do
do
registers[5] = ("Occluded")
end

end
::p111::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p112::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p55
::p114::
do
do
a = (upvalues[3]);
(registers)[5] = a[2][a[1]]
end

end
::p115::
do
do
registers[4] = (registers[4] - registers[5])
end

end
::p116::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p117::
branch_taken=false
do
do
if not (not (16 <= registers[3])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p33
end
end
