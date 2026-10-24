
-- Function f363; 85 recovered instruction blocks.
F.f363=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f363",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f363 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p135
::p2::
tick(2)
do
do
registers[7] = (registers[1]["body_yaw"])
end

end
::p3::
do
do
registers[7] = (registers[7]["inverter"])
end

end
::p4::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p216
::p31::
tick(31)
do
do
registers[7] = (registers[1]["body_yaw"])
end

end
::p32::
do
do
registers[7]["value"] = (registers[6])
end

end
::p33::
do
do
registers[7] = (registers[1]["yaw"])
end

end
::p34::
do
do
registers[7]["body"] = 0
end

end
goto p183
::p50::
tick(50)
branch_taken=false
do
do
if registers[7] ~= "Hidden" then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p178
::p53::
tick(53)
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p54::
do
do
registers[6]["type"] = "Static"
end

end
::p55::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p56::
do
do
registers[7] = (registers[4]["value"])
end

end
goto p79
::p66::
tick(66)
do
do
registers[6]["body"] = 0
end

end
::p67::
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
::p68::
tick(68)
do
do
registers[6] = (registers[4]["value"])
end

end
::p69::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p70::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p71::
do
do
registers[7] = (registers[1]["body_yaw"])
end

end
::p72::
do
do
registers[7]["type"] = "Static"
end

end
goto p131
::p74::
tick(74)
do
do
registers[6] = (registers[4]["type"])
end

end
::p75::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p76::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p77::
branch_taken=false
do
do
if registers[6] ~= "Opposite" then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p123
::p79::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p80::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p81::
do
do
registers[6]["value"] = (registers[7])
end

end
goto p156
::p83::
tick(83)
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p84::
do
do
registers[6]["freestanding"] = false
end

end
::p85::
do
do
registers[6] = (registers[1]["yaw"])
end

end
::p86::
do
do
registers[6]["body"] = 0
end

end
goto p177
::p88::
tick(88)
do
do
registers[6] = (registers[4]["type"])
end

end
::p89::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p90::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p91::
branch_taken=false
do
do
if registers[6] ~= "Off" then
    branch_taken=true
end
end

end
if branch_taken then goto p186 end
goto p170
::p94::
do
do
registers[6] = (registers[4]["type"])
end

end
::p95::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p96::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p213
::p113::
tick(113)
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p144
::p115::
tick(115)
do
do
registers[6] = (-1)
end

end
goto p2
::p123::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p124::
do
do
registers[6]["type"] = "Opposite"
end

end
::p125::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p126::
do
do
registers[6]["value"] = 0
end

end
::p127::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p128::
do
do
registers[6]["freestanding"] = true
end

end
::p129::
do
do
registers[6] = (registers[1]["yaw"])
end

end
goto p142
::p131::
do
do
registers[7] = (registers[1]["body_yaw"])
end

end
::p132::
do
do
registers[7]["freestanding"] = false
end

end
::p133::
branch_taken=false
do
do
if registers[6] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p115
::p135::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p136::
do
do
registers[4] = (registers[3]["body_yaw"])
end

end
::p137::
do
do
registers[5] = (registers[3]["yaw"])
end

end
::p138::
do
do
(registers)[6] = upvalues[0][32]
end

end
::p139::
do
do
top = (6)
registers[top]()
top = top - 1
end

end
::p140::
do
do
registers[6] = (registers[4]["builder_type"])
end

end
goto p113
::p142::
do
do
registers[6]["body"] = 0
end

end
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
do
do
registers[7] = (registers[4]["builder_type"])
end

end
::p145::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p146::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p50
::p149::
tick(149)
branch_taken=false
do
do
if registers[6] ~= "Static" then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p53
::p152::
tick(152)
do
do
registers[6]["freestanding"] = false
end

end
::p153::
do
do
registers[6] = (registers[1]["yaw"])
end

end
::p154::
do
do
registers[6]["body"] = 0
end

end
::p155::
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
::p156::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p157::
do
do
registers[6]["freestanding"] = false
end

end
::p158::
do
do
registers[6] = (registers[1]["yaw"])
end

end
goto p66
::p161::
tick(161)
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
::p170::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p171::
do
do
registers[6]["type"] = "Off"
end

end
::p172::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p173::
do
do
registers[6]["value"] = 0
end

end
::p174::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
goto p152
::p177::
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
::p178::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p179::
do
do
registers[6]["type"] = "Off"
end

end
::p180::
do
do
registers[6] = (registers[1]["body_yaw"])
end

end
::p181::
do
do
registers[6]["value"] = 0
end

end
goto p83
::p183::
tick(183)
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
::p186::
do
do
registers[6] = (registers[4]["type"])
end

end
::p187::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p188::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p149
::p213::
branch_taken=false
do
do
if registers[6] ~= "Jitter" then
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
goto p68
::p216::
do
do
registers[6] = -registers[6]
end

end
goto p31
end
end
