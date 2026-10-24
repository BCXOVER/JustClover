
-- Function f197; 75 recovered instruction blocks.
F.f197=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f197",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f197 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p72
::p10::
tick(10)
do
do
registers[5] = (true)
end

end
::p11::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p12::
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
goto p171
::p35::
tick(35)
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
::p36::
do
do
registers[3] = (registers[3]["angles"])
end

end
::p37::
do
do
registers[3] = (registers[3]["edge_yaw"])
end

end
::p38::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p185
::p52::
tick(52)
do
do
registers[1]["freestanding_side"] = (registers[0])
end

end
goto p177
::p56::
tick(56)
do
do
registers[3] = (registers[3]["angles"])
end

end
::p57::
do
do
registers[3] = (registers[3]["freestanding"])
end

end
::p58::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p66
::p61::
tick(61)
do
do
a = upvalues[2];
(registers)[3] = (a[2][a[1]]["manual"])
end

end
::p62::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p126
::p66::
do
do
registers[5] = (false)
end

end
::p67::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p68::
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
::p69::
do
do
registers[3] = (registers[3]["angles"])
end

end
goto p139
::p72::
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
::p73::
do
do
registers[1]["edge_yaw"] = false
end

end
::p74::
do
do
registers[1]["freestanding"] = false
end

end
::p75::
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
goto p56
::p104::
tick(104)
do
do
registers[6] = ("Always on")
end

end
::p105::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 1, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p106::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p112
::p108::
tick(108)
do
do
registers[5] = (false)
end

end
::p109::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p110::
do
do
registers[3] = (upvalues[1])
end

end
goto p130
::p112::
do
do
registers[1]["freestanding"] = true
end

end
::p113::
do
do
registers[3] = (registers[2]["chokedcommands"])
end

end
::p114::
branch_taken=false
do
do
if registers[3] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p177 end
::p116::
do
do
registers[3] = (upvalues[4])
end

end
::p117::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p118::
do
do
registers[1]["freestanding_side"] = (registers[3])
end

end
goto p177
::p120::
tick(120)
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
::p121::
do
do
registers[3] = (registers[3]["angles"])
end

end
::p122::
do
do
registers[3] = (registers[3]["edge_yaw"])
end

end
::p123::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p108
::p126::
tick(126)
do
do
registers[1]["freestanding_side"] = (registers[0])
end

end
::p127::
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
::p130::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p131::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p61
::p134::
tick(134)
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
::p135::
do
do
registers[3] = (registers[3]["angles"])
end

end
::p136::
do
do
registers[3] = (registers[3]["freestanding"])
end

end
::p137::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p10
::p139::
do
do
registers[3] = (registers[3]["freestanding"])
end

end
::p140::
do
do
registers[3] = (registers[3]["hotkey"])
end

end
::p141::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p142::
do
do
registers[5] = new_frame(1)
end

end
::p143::
do
do
registers[6] = ("On hotkey")
end

end
::p144::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 1, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p145::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p120
::p154::
do
do
(registers)[3] = upvalues[3]["antiaim"]
end

end
::p155::
do
do
registers[3] = (registers[3]["features"])
end

end
::p156::
do
do
registers[3] = (registers[3]["hotkeys"])
end

end
::p157::
do
do
registers[3] = (registers[3]["freestanding"])
end

end
::p167::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p168::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p169::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p134
::p171::
do
do
registers[3] = (registers[3]["angles"])
end

end
::p172::
do
do
registers[3] = (registers[3]["freestanding"])
end

end
::p173::
do
do
registers[3] = (registers[3]["hotkey"])
end

end
::p174::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p175::
do
do
registers[5] = new_frame(1)
end

end
goto p104
::p177::
do
do
(registers)[3] = upvalues[3]["antiaim"]
end

end
::p178::
do
do
registers[3] = (registers[3]["features"])
end

end
::p179::
do
do
registers[3] = (registers[3]["hotkeys"])
end

end
::p180::
do
do
registers[3] = (registers[3]["edgeyaw"])
end

end
::p181::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p182::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p183::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p198 end
goto p35
::p185::
do
do
registers[5] = (true)
end

end
::p186::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p187::
do
do
registers[1]["edge_yaw"] = true
end

end
::p198::
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
end
end
