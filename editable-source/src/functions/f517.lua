
-- Function f517; 51 recovered instruction blocks.
F.f517=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f517",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f517 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p62
::p8::
tick(8)
branch_taken=false
do
do
if registers[1] ~= "planted_bomb" then
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p125
::p11::
tick(11)
do
do
registers[2] = (1000)
end

end
::p12::
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
::p13::
tick(13)
branch_taken=false
do
do
if registers[1] ~= "safe" then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p50
::p16::
tick(16)
do
do
registers[2] = (30)
end

end
::p17::
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
::p23::
tick(23)
branch_taken=false
do
do
if registers[1] ~= "duck" then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p148
::p25::
tick(25)
do
do
registers[2] = (10)
end

end
::p26::
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
::p27::
tick(27)
branch_taken=false
do
do
if registers[1] ~= "damage" then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p140
::p37::
tick(37)
do
do
registers[2] = (120)
end

end
::p38::
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
::p50::
do
do
registers[2] = (40)
end

end
::p51::
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
::p52::
tick(52)
branch_taken=false
do
do
if registers[1] ~= "dt" then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p106
::p54::
tick(54)
branch_taken=false
do
do
if registers[1] ~= "osaa" then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p65
::p56::
tick(56)
do
do
registers[2] = (100)
end

end
::p57::
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
::p58::
branch_taken=false
do
do
if registers[1] ~= "ping" then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p155
::p62::
tick(62)
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
::p63::
branch_taken=false
do
do
if registers[1] ~= "fs" then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p25
::p65::
tick(65)
do
do
registers[2] = (70)
end

end
::p66::
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
::p69::
tick(69)
do
do
registers[2] = (50)
end

end
::p70::
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
::p90::
tick(90)
do
do
registers[2] = (60)
end

end
::p91::
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
::p103::
tick(103)
branch_taken=false
do
do
if registers[1] ~= "dormant" then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p90
::p106::
do
do
registers[2] = (90)
end

end
::p107::
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
::p108::
tick(108)
branch_taken=false
do
do
if registers[1] ~= "fatal" then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p130
::p112::
branch_taken=false
do
do
if registers[1] ~= "body" then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p16
::p125::
do
do
registers[2] = (110)
end

end
::p126::
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
::p127::
branch_taken=false
do
do
if registers[1] ~= "hc" then
    branch_taken=true
end
end

end
if branch_taken then goto p153 end
goto p56
::p130::
do
do
registers[2] = (140)
end

end
::p131::
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
::p133::
tick(133)
do
do
registers[2] = (130)
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
return registers[2]
end

end
::p138::
tick(138)
branch_taken=false
do
do
if registers[1] ~= "bomb" then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p133
::p140::
do
do
registers[2] = (20)
end

end
::p141::
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
::p142::
branch_taken=false
do
do
if registers[1] ~= "force" then
    branch_taken=true
end
end

end
if branch_taken then goto p103 end
goto p69
::p145::
branch_taken=false
do
do
if registers[1] ~= "bomb_hp" then
    branch_taken=true
end
end

end
if branch_taken then goto p138 end
goto p37
::p148::
do
do
registers[2] = (150)
end

end
::p149::
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
::p151::
tick(151)
do
do
registers[2] = (105)
end

end
::p152::
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
::p153::
branch_taken=false
do
do
if registers[1] ~= "bomb_planting" then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p151
::p155::
do
do
registers[2] = (80)
end

end
::p156::
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
end
end
