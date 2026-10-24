
-- Function f286; 87 recovered instruction blocks.
F.f286=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f286",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f286 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p15
::p4::
tick(4)
do
do
(registers)[9] = registers[1]
end

end
::p5::
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
return registers[9]
end

end
::p6::
tick(6)
do
do
(registers)[10] = upvalues[0]["get_player_multiplier"]
end

end
::p7::
do
do
(registers)[11] = registers[4]
end

end
::p8::
do
do
(registers)[12] = registers[2]
end

end
goto p183
::p10::
tick(10)
do
do
(registers)[11] = registers[9]
end

end
::p11::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p12::
branch_taken=false
do
do
if registers[10] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p38
::p15::
do
do
a = {
    ...,
}
for f = 1, 5, 1 do
    registers[f] = (a[f])
end
end

end
::p16::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p159
::p18::
tick(18)
do
do
(registers)[12] = registers[12] + registers[13]
end

end
::p19::
branch_taken=false
do
do
if not (1 < registers[12]) then
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p43
::p30::
tick(30)
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p102
::p38::
branch_taken=false
do
do
if not (registers[9] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p121 end
goto p111
::p43::
branch_taken=false
do
do
if not (not (registers[12] < 900000)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p88
::p45::
tick(45)
do
do
registers[9] = (registers[2]["z"])
end

end
::p46::
do
do
registers[10] = (registers[2]["z"])
end

end
::p47::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p48::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
::p49::
branch_taken=false
do
do
if not (registers[8] <= 0.01) then
    branch_taken=true
end
end

end
if branch_taken then goto p194 end
goto p4
::p53::
tick(53)
do
do
registers[9] = (0)
end

end
::p54::
tick(54)
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p96
::p56::
tick(56)
do
do
(registers)[7] = registers[3]
end

end
goto p100
::p58::
tick(58)
do
do
(registers)[7] = upvalues[1][151]
end

end
::p59::
do
do
(registers)[8] = registers[6]
end

end
::p60::
do
do
(registers)[9] = registers[3]
end

end
::p61::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p53
::p65::
tick(65)
do
do
(registers)[11] = registers[1]
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
return registers[11]
end

end
::p69::
tick(69)
do
do
(registers)[11] = registers[9] * registers[7]
end

end
::p70::
do
do
(registers)[11] = registers[11] * registers[10]
end

end
::p71::
branch_taken=false
do
do
if not (0 < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p222
::p73::
tick(73)
branch_taken=false
do
do
if not (registers[10] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p65
::p88::
do
do
(registers)[13] = registers[2] * registers[11]
end

end
::p89::
do
do
(registers)[13] = registers[1] + registers[13]
end

end
::p90::
do
do
registers[14] = (registers[5] * 0.5)
end

end
::p91::
do
do
(registers)[14] = registers[14] * registers[11]
end

end
::p92::
do
do
(registers)[14] = registers[14] * registers[11]
end

end
::p93::
do
do
(registers)[13] = registers[13] + registers[14]
end

end
::p94::
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
return registers[13]
end

end
::p96::
tick(96)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p56
::p98::
tick(98)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p198
::p100::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p200 end
goto p149
::p102::
do
do
registers[12] = (registers[5]["x"])
end

end
::p103::
do
do
registers[13] = (registers[5]["x"])
end

end
::p104::
do
do
(registers)[12] = registers[12] * registers[13]
end

end
::p105::
do
do
registers[13] = (registers[5]["y"])
end

end
::p106::
do
do
registers[14] = (registers[5]["y"])
end

end
::p107::
do
do
(registers)[13] = registers[13] * registers[14]
end

end
::p108::
do
do
(registers)[12] = registers[12] + registers[13]
end

end
goto p137
::p111::
do
do
(registers)[10] = registers[1]
end

end
::p112::
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
return registers[10]
end

end
::p121::
do
do
(registers)[10] = registers[6] > 0
end

end
::p122::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p6
::p131::
tick(131)
do
do
registers[8] = (registers[2]["x"])
end

end
::p132::
do
do
registers[9] = (registers[2]["x"])
end

end
::p133::
do
do
(registers)[8] = registers[8] * registers[9]
end

end
goto p209
::p137::
do
do
registers[13] = (registers[5]["z"])
end

end
::p138::
do
do
registers[14] = (registers[5]["z"])
end

end
::p139::
do
do
(registers)[13] = registers[13] * registers[14]
end

end
goto p18
::p141::
tick(141)
do
do
(registers)[11] = registers[11] + registers[12]
end

end
goto p30
::p149::
do
do
registers[7] = (0)
end

end
goto p200
::p151::
tick(151)
do
do
(registers)[6] = registers[1]
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
return registers[6]
end

end
::p159::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p151
::p167::
do
do
(registers)[6] = upvalues[0]["get_ticks"]
end

end
::p168::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p169::
do
do
(registers)[7] = registers[6] > 0
end

end
::p170::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p58
::p172::
do
do
(registers)[12] = registers[2] * registers[11]
end

end
::p173::
do
do
(registers)[12] = registers[1] + registers[12]
end

end
::p174::
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
return registers[12]
end

end
::p181::
tick(181)
do
do
(registers)[8] = registers[1]
end

end
::p182::
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
return registers[8]
end

end
::p183::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p98
::p194::
do
do
(registers)[9] = upvalues[1][28]
end

end
::p195::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p196::
do
do
(registers)[10] = environment["type"]
end

end
goto p10
::p198::
do
do
registers[10] = (1)
end

end
goto p73
::p200::
branch_taken=false
do
do
if not (registers[7] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p131 end
goto p181
::p209::
do
do
registers[9] = (registers[2]["y"])
end

end
::p210::
do
do
registers[10] = (registers[2]["y"])
end

end
::p211::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p212::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
goto p45
::p222::
do
do
(registers)[12] = upvalues[0]["get_latency_time"]
end

end
::p223::
do
do
(registers)[13] = registers[9]
end

end
::p224::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p141
end
end
