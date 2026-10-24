
-- Function f343; 94 recovered instruction blocks.
F.f343=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f343",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f343 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p99
::p2::
tick(2)
do
do
registers[8] = (registers[6]["builder_type"])
end

end
::p3::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p4::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
do
do
registers[8] = (registers[8] == "Hidden")
end

end
goto p16
::p7::
tick(7)
do
do
registers[5] = (0)
end

end
::p8::
do
do
registers[6] = (registers[2]["yaw"])
end

end
::p9::
do
do
(registers)[7] = registers[6]
end

end
::p10::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p201 end
goto p171
::p12::
tick(12)
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p13::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p14::
do
do
a = (12)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_left_side"]
end

end
goto p222
::p16::
tick(16)
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p207 end
goto p161
::p18::
tick(18)
do
do
registers[4] = (registers[3]["left"])
end

end
::p19::
do
do
(registers)[4] = registers[4] > 0
end

end
goto p84
::p21::
tick(21)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p173
::p23::
tick(23)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p18
::p63::
tick(63)
do
do
a = upvalues[4];
(registers)[17] = (a[2][a[1]]["current"])
end

end
::p64::
do
do
(registers)[17] = upvalues[3][registers[17]]
end

end
::p65::
do
do
(registers)[18] = registers[12]
end

end
goto p102
::p68::
tick(68)
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
::p69::
tick(69)
do
do
registers[10] = (registers[9]["builder_type"])
end

end
::p70::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p71::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p72::
do
do
registers[10] = (registers[10] == "Hidden")
end

end
goto p86
::p82::
tick(82)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p134
::p84::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p182
::p86::
tick(86)
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p108
::p88::
tick(88)
do
do
registers[9] = (registers[7]["type"])
end

end
::p89::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p90::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p91::
branch_taken=false
do
do
if registers[9] ~= "Static" then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p144
::p99::
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
::p100::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p105 end
goto p181
::p102::
do
do
a = 13
top = a + 6 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p103::
do
do
(registers)[5] = registers[5] + registers[13]
end

end
goto p207
::p105::
do
do
(registers)[3] = upvalues[0]["switch_type"]
end

end
::p106::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p176
::p108::
do
do
a = (11)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_yaw_modifier_add"]
end

end
::p109::
do
do
registers[13] = (registers[9]["hidden"])
end

end
::p110::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p111::
do
do
(registers)[5] = registers[5] + registers[11]
end

end
goto p116
::p113::
tick(113)
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p204 end
goto p159
::p116::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p82
::p118::
do
do
registers[10] = (registers[7]["left"])
end

end
::p119::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p120::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p121::
do
do
registers[11] = (registers[7]["right"])
end

end
goto p12
::p125::
tick(125)
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p126::
do
do
registers[11]["add"] = (registers[12])
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
::p134::
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
::p136::
do
do
registers[11] = (registers[1]["pitch"])
end

end
::p137::
do
do
registers[11]["type"] = "Custom"
end

end
::p138::
do
do
registers[11] = (registers[1]["pitch"])
end

end
::p139::
do
do
registers[11]["value"] = 89
end

end
::p140::
do
do
registers[11] = (registers[1]["yaw"])
end

end
::p141::
do
do
(registers)[12] = upvalues[5]["normalize"]
end

end
::p142::
do
do
registers[13] = (registers[1]["yaw"])
end

end
goto p213
::p144::
do
do
registers[10] = (registers[7]["static"])
end

end
::p145::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p146::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p147::
do
do
(registers)[5] = registers[10]
end

end
goto p207
::p149::
tick(149)
do
do
registers[13] = (upvalues[2])
end

end
::p150::
do
do
(registers)[14] = registers[10]
end

end
::p151::
do
do
(registers)[15] = registers[11]
end

end
::p152::
do
do
registers[16] = (13)
end

end
goto p63
::p155::
tick(155)
do
do
a = upvalues[1];
(registers)[3] = (a[2][a[1]]["exploits"])
end

end
::p156::
do
do
registers[3] = (registers[3]["defensive"])
end

end
::p157::
do
do
registers[4] = (registers[1]["force_defensive_active"])
end

end
goto p21
::p159::
do
do
(registers)[13] = registers[11]
end

end
goto p204
::p161::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p207 end
goto p88
::p171::
do
do
registers[7] = (registers[6]["hidden"])
end

end
goto p201
::p173::
tick(173)
do
do
registers[4] = (registers[3] ~= registers[0])
end

end
goto p23
::p176::
do
do
(registers)[4] = upvalues[0]["switch_type"]
end

end
::p177::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p178::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p179::
branch_taken=false
do
do
if registers[4] ~= "Defensive" then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p68
::p181::
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
::p182::
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
::p201::
do
do
registers[8] = (registers[6] ~= registers[0])
end

end
::p202::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p2
::p204::
do
do
(registers)[5] = registers[13]
end

end
::p205::
branch_taken=false
do
do
if registers[9] ~= "Side Reworked" then
    branch_taken=true
end
end

end
if branch_taken then goto p207 end
goto p149
::p207::
do
do
registers[9] = (registers[2]["yaw_modifiers"])
end

end
::p208::
do
do
registers[10] = (registers[9] ~= registers[0])
end

end
::p209::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p86 end
goto p69
::p211::
tick(211)
do
do
(registers)[13] = registers[10]
end

end
goto p113
::p213::
do
do
registers[13] = (registers[13]["add"])
end

end
::p214::
do
do
(registers)[13] = registers[13] + registers[5]
end

end
::p215::
do
do
registers[14] = (-180)
end

end
::p216::
do
do
registers[15] = (180)
end

end
goto p125
::p222::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p223::
do
do
(registers)[13] = registers[12]
end

end
::p224::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p211
end
end
