
-- Function f221; 88 recovered instruction blocks.
F.f221=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f221",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f221 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p28
::p16::
tick(16)
do
do
registers[5]["order"] = (registers[7])
end

end
::p17::
do
do
registers[5]["sequence"] = (registers[4])
end

end
::p18::
do
do
(registers)[7] = upvalues[1]["get_animation_key"]
end

end
goto p210
::p28::
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
::p29::
do
do
(registers)[2] = upvalues[0]["skip_native_cleanup"]
end

end
::p30::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p31::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p79
::p33::
tick(33)
do
do
(registers)[5] = registers[3]
end

end
goto p88
::p42::
tick(42)
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p43::
do
do
(registers)[4] = upvalues[1]["capture_count"]
end

end
::p44::
do
do
(registers)[5] = upvalues[1]["max_items"]
end

end
goto p191
::p46::
tick(46)
do
do
registers[7] = (255)
end

end
goto p123
::p49::
tick(49)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p180
::p74::
tick(74)
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p146
::p76::
do
do
(registers)[2] = upvalues[1]["active"]
end

end
::p77::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p205 end
goto p143
::p79::
do
do
registers[2] = (true)
end

end
::p80::
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
::p88::
tick(88)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p208
::p91::
tick(91)
do
do
(registers)[3] = upvalues[2][29]
end

end
::p92::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p93::
do
do
(registers)[4] = upvalues[1]["begin_capture_frame"]
end

end
::p94::
do
do
(registers)[5] = environment["type"]
end

end
::p95::
do
do
(registers)[6] = registers[3]
end

end
::p96::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p97::
do
do
registers[5] = (registers[5] == "number")
end

end
::p98::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p33
::p100::
tick(100)
do
do
registers[4] = (true)
end

end
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
return registers[4]
end

end
::p102::
tick(102)
do
do
(registers)[4] = upvalues[1]["capture_count"]
end

end
::p103::
do
do
registers[4] = registers[4] + 1
end

end
::p104::
do
do
(registers)[5] = upvalues[1]["capture_items"]
end

end
::p105::
do
do
(registers)[5] = registers[5][registers[4]]
end

end
goto p74
::p108::
tick(108)
do
do
(registers)[6] = environment["tostring"]
end

end
::p109::
do
do
(registers)[7] = registers[2]
end

end
::p110::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p111::
do
do
registers[7] = (registers[1]["r"])
end

end
::p112::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p199 end
goto p128
::p123::
tick(123)
do
do
registers[5]["a"] = (registers[7])
end

end
::p124::
do
do
(registers)[7] = upvalues[1]["classify"]
end

end
::p125::
do
do
(registers)[8] = registers[6]
end

end
goto p131
::p128::
do
do
registers[7] = (255)
end

end
goto p199
::p131::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p132::
do
do
registers[5]["kind"] = (registers[7])
end

end
::p133::
do
do
(registers)[7] = upvalues[1]["normalize_text"]
end

end
::p134::
do
do
registers[8] = (registers[5]["kind"])
end

end
::p135::
do
do
(registers)[9] = registers[6]
end

end
::p136::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p137::
do
do
registers[5]["text"] = (registers[7])
end

end
::p138::
do
do
(registers)[7] = upvalues[1]["get_order"]
end

end
::p139::
do
do
registers[8] = (registers[5]["kind"])
end

end
::p140::
do
do
registers[9] = (registers[5]["text"])
end

end
::p141::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p16
::p143::
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
::p144::
tick(144)
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p91 end
goto p172
::p146::
do
do
registers[6] = {
}
end

end
::p147::
do
do
(registers)[5] = registers[6]
end

end
::p148::
do
do
(registers)[6] = upvalues[1]["capture_items"]
end

end
goto p226
::p158::
tick(158)
do
do
registers[7] = (255)
end

end
goto p228
::p163::
tick(163)
do
do
registers[2] = (registers[1]["text"])
end

end
goto p49
::p172::
do
do
registers[3] = (true)
end

end
::p173::
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
::p174::
tick(174)
do
do
upvalues[1]["capture_count"] = (registers[4])
end

end
::p175::
do
do
(registers)[7] = upvalues[2][30]
end

end
::p176::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p177::
do
do
upvalues[1]["last_capture_time"] = (registers[7])
end

end
goto p189
::p180::
do
do
(registers)[2] = nil
end

end
goto p144
::p182::
tick(182)
do
do
registers[5]["g"] = (registers[7])
end

end
::p183::
do
do
registers[7] = (registers[1]["b"])
end

end
::p184::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p228 end
goto p158
::p186::
tick(186)
do
do
registers[7] = (255)
end

end
goto p182
::p189::
do
do
registers[7] = (true)
end

end
::p190::
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
return registers[7]
end

end
::p191::
branch_taken=false
do
do
if not (not (registers[5] <= registers[4])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p100
::p199::
do
do
registers[5]["r"] = (registers[7])
end

end
::p200::
do
do
registers[7] = (registers[1]["g"])
end

end
::p201::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p182 end
goto p186
::p205::
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p206::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p49 end
goto p163
::p208::
do
do
registers[5] = (0)
end

end
goto p42
::p210::
do
do
registers[8] = (registers[5]["kind"])
end

end
::p211::
do
do
registers[9] = (registers[5]["text"])
end

end
::p212::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p213::
do
do
registers[5]["key"] = (registers[7])
end

end
goto p174
::p226::
do
do
(registers[6])[registers[4]] = registers[5]
end

end
goto p108
::p228::
do
do
registers[5]["b"] = (registers[7])
end

end
::p229::
do
do
registers[7] = (registers[1]["a"])
end

end
::p230::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p46
end
end
