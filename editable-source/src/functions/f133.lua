
-- Function f133; 66 recovered instruction blocks.
F.f133=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f133",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f133 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p102
::p10::
tick(10)
do
do
registers[1] = (upvalues[1])
end

end
::p11::
do
do
registers[2] = ("paint_ui:watermark")
end

end
::p12::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p13::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p169
::p39::
tick(39)
do
do
registers[4] = (upvalues[4])
end

end
::p40::
do
do
registers[5] = (registers[1]["watermark_accent_color"])
end

end
::p41::
do
do
registers[6] = new_frame(4)
end

end
goto p138
::p43::
tick(43)
do
do
registers[6] = (upvalues[5])
end

end
::p44::
do
do
registers[7] = (registers[1]["watermark_display"])
end

end
::p45::
do
do
(registers)[8] = registers[3]
end

end
goto p162
::p47::
tick(47)
do
do
registers[3] = ("Top Right")
end

end
goto p97
::p55::
tick(55)
do
do
registers[5] = (110)
end

end
goto p43
::p58::
tick(58)
do
do
registers[5] = (registers[1]["watermark_cs2_gradient"])
end

end
::p59::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p60::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p111
::p64::
tick(64)
do
do
a = (6)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p65::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p66::
do
do
registers[5] = (registers[1]["watermark_cs2_gradient"])
end

end
::p67::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
::p68::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p58
::p76::
tick(76)
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p135
::p91::
tick(91)
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
::p97::
tick(97)
branch_taken=false
do
do
if registers[2] ~= "Supremacy" then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p150
::p99::
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p100::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p143
::p102::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p103::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p104::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p91
::p107::
tick(107)
do
do
registers[3] = (registers[1]["watermark_position"])
end

end
::p108::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
::p109::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p131
::p111::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p43 end
goto p55
::p114::
tick(114)
do
do
registers[3] = (registers[1]["watermark"])
end

end
::p115::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
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
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p179 end
goto p168
::p121::
tick(121)
do
do
registers[2] = (registers[1]["watermark_style"])
end

end
::p122::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p123::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p147
::p129::
tick(129)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p47
::p131::
do
do
registers[3] = (registers[1]["watermark_position"])
end

end
::p132::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p133::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p129
::p135::
do
do
registers[2] = (registers[1]["watermark"])
end

end
::p136::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p114
::p138::
do
do
registers[7] = (186)
end

end
::p139::
do
do
registers[8] = (255)
end

end
::p140::
do
do
registers[9] = (15)
end

end
::p141::
do
do
registers[10] = (255)
end

end
goto p64
::p143::
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p144::
do
do
registers[1] = (registers[1]["stubs"])
end

end
goto p76
::p147::
tick(147)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p166
::p150::
do
do
registers[4] = (upvalues[3])
end

end
::p151::
do
do
(registers)[5] = registers[3]
end

end
::p152::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p153::
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
::p162::
do
do
(registers)[9] = registers[4]
end

end
::p163::
do
do
(registers)[10] = registers[5]
end

end
::p164::
do
do
a = (6)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p165::
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
::p166::
do
do
registers[2] = ("CS2")
end

end
goto p107
::p168::
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
::p169::
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
::p179::
do
do
registers[2] = (registers[1]["watermark_style"])
end

end
::p180::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
::p181::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p121
end
end
