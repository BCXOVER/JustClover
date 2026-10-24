
-- Function f183; 58 recovered instruction blocks.
F.f183=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f183",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f183 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p137
::p3::
tick(3)
branch_taken=false
do
do
if registers[2] ~= "Onetap" then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p38
::p5::
branch_taken=false
do
do
if registers[2] ~= "TeamSkeet" then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p135
::p8::
branch_taken=false
do
do
if registers[2] ~= "TeamSkeet Velocity" then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p76
::p10::
tick(10)
do
do
registers[2] = ("First")
end

end
::p11::
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
::p12::
tick(12)
branch_taken=false
do
do
if registers[2] ~= 6 then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
goto p31
::p14::
tick(14)
do
do
registers[3] = ("First")
end

end
goto p101
::p26::
tick(26)
do
do
(registers)[3] = registers[2]
end

end
::p27::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p14
::p29::
tick(29)
do
do
registers[3] = ("Fourth")
end

end
::p30::
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
do
do
registers[3] = ("CS2")
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
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p91
::p35::
tick(35)
do
do
registers[3] = ("CS2")
end

end
::p36::
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
::p38::
do
do
registers[3] = ("Second")
end

end
::p39::
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
::p40::
tick(40)
do
do
registers[3] = ("Second")
end

end
::p41::
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
::p42::
tick(42)
branch_taken=false
do
do
if registers[2] ~= "Invictus" then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p133
::p53::
branch_taken=false
do
do
if registers[2] ~= "Fifth" then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p57
::p55::
tick(55)
do
do
registers[3] = ("Fifth")
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
::p57::
do
do
registers[3] = ("Fifth")
end

end
::p58::
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
::p60::
tick(60)
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p61::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p62::
branch_taken=false
do
do
if registers[2] ~= 1 then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
::p70::
do
do
registers[3] = ("First")
end

end
::p71::
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
tick(73)
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p74::
do
do
registers[1] = (registers[1]["stubs"])
end

end
goto p33
::p76::
do
do
registers[3] = ("Fourth")
end

end
::p77::
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
::p79::
tick(79)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
::p82::
do
do
(registers)[1] = nil
end

end
goto p102
::p84::
tick(84)
branch_taken=false
do
do
if registers[2] ~= 5 then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p55
::p86::
tick(86)
do
do
registers[3] = ("First")
end

end
::p87::
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
::p91::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p92::
do
do
registers[1] = (registers[1]["stubs"])
end

end
::p93::
do
do
registers[1] = (registers[1]["manual_arrows_style"])
end

end
goto p79
::p98::
tick(98)
branch_taken=false
do
do
if registers[2] ~= 4 then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p29
::p101::
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
::p102::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p10
::p104::
branch_taken=false
do
do
if registers[2] ~= 2 then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p40
::p123::
tick(123)
do
do
registers[3] = ("Third")
end

end
::p124::
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
::p125::
branch_taken=false
do
do
if registers[2] ~= "Triangle" then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p86
::p133::
do
do
registers[3] = ("First")
end

end
::p134::
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
::p135::
do
do
registers[3] = ("Third")
end

end
::p136::
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
::p137::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p138::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p73
::p140::
branch_taken=false
do
do
if registers[2] ~= "CS2" then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p35
::p142::
branch_taken=false
do
do
if registers[2] ~= 3 then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p123
end
end
