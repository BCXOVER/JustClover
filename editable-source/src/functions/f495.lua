
-- Function f495; 78 recovered instruction blocks.
F.f495=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f495",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f495 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p68
::p2::
tick(2)
do
do
registers[11] = (registers[9]["left"])
end

end
::p3::
do
do
(registers)[11] = registers[11] < registers[10]
end

end
goto p44
::p5::
tick(5)
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p6::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p7::
do
do
(registers)[11] = registers[9]
end

end
goto p158
::p10::
tick(10)
do
do
(registers)[8] = registers[7]
end

end
goto p60
::p26::
tick(26)
do
do
registers[9] = (false)
end

end
::p27::
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
::p28::
tick(28)
do
do
(registers)[5] = upvalues[1]["builder"]
end

end
::p29::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p30::
do
do
registers[5] = (registers[5]["force_defensive"])
end

end
goto p117
::p42::
tick(42)
do
do
(registers)[5] = nil
end

end
goto p199
::p44::
tick(44)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p127
::p60::
tick(60)
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p202
::p62::
tick(62)
do
do
(registers)[6] = upvalues[2]["is_double_tap"]
end

end
::p63::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p64::
do
do
(registers)[7] = upvalues[2]["is_on_shot_antiaim"]
end

end
::p65::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p66::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p154
::p68::
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
::p69::
do
do
registers[3] = (upvalues[0])
end

end
::p70::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p71::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p209
::p73::
tick(73)
do
do
a = (8)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p74::
do
do
registers[10] = ("Double tap")
end

end
::p75::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p76::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
goto p156
::p78::
tick(78)
do
do
a = (8)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p79::
do
do
registers[10] = ("On shot anti-aim")
end

end
::p80::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p81::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p10
::p89::
do
do
(registers)[4] = upvalues[1]["defensive"]
end

end
::p90::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
::p91::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p211 end
goto p120
::p102::
tick(102)
do
do
a = upvalues[4];
(registers)[9] = (a[2][a[1]]["exploits"])
end

end
::p103::
do
do
registers[9] = (registers[9]["defensive"])
end

end
::p104::
do
do
registers[10] = (registers[4]["duration"])
end

end
goto p5
::p107::
tick(107)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p2
::p117::
tick(117)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p199 end
goto p42
::p120::
do
do
registers[5] = (false)
end

end
::p121::
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
::p122::
tick(122)
do
do
registers[11] = (registers[9]["left"])
end

end
::p123::
do
do
(registers)[11] = registers[11] > 0
end

end
goto p107
::p125::
tick(125)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p78
::p127::
do
do
registers[12] = (false)
end

end
::p128::
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
::p140::
tick(140)
do
do
(registers)[5] = upvalues[1]["builder"]
end

end
::p141::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p142::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
goto p215
::p146::
tick(146)
do
do
registers[9] = (upvalues[3])
end

end
::p147::
do
do
registers[10] = (registers[4]["def_yaw"])
end

end
::p148::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p149::
do
do
a = 10
z = (2)
q = 0
if z == 0 then

else
    top = (a + z - 1)
end
m, x = nil
if z ~= 1 then
    m, x = pack_returns(registers[a](unpack_range(top, registers, a + 1)))
else
    m, x = pack_returns(registers[a]())
end
if q ~= 1 then
    if q ~= 0 then
        m = a + q - 2
        top = (m + 1)
    else
        m = m + a - 1
        top = m
    end
    z = 0
    for f = a, m do
        z = (z + 1);
        (registers)[f] = x[z]
    end
else
    top = a - 1
end
end

end
::p150::
do
do
a = 9
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p151::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p26
::p154::
do
do
(registers)[7] = not registers[6]
end

end
goto p73
::p156::
do
do
(registers)[8] = registers[6]
end

end
goto p125
::p158::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p122
::p168::
tick(168)
do
do
(registers)[16] = registers[4]
end

end
::p169::
do
do
a = (12)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p170::
do
do
registers[12] = (true)
end

end
goto p217
::p172::
do
do
a = (12)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_defensive_yaw_double_side"]
end

end
::p173::
do
do
(registers)[14] = registers[2]
end

end
::p174::
do
do
(registers)[15] = registers[3]
end

end
goto p168
::p199::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p207
::p202::
do
do
registers[9] = (registers[4]["toggle_builder"])
end

end
::p203::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p204::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p205::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p146
::p207::
do
do
registers[6] = (false)
end

end
::p208::
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
::p209::
do
do
registers[4] = (false)
end

end
::p210::
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
::p211::
do
do
(registers)[5] = upvalues[1]["builder"]
end

end
::p212::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
::p213::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p215 end
goto p140
::p215::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p28
::p217::
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
end
end
