
-- Function f407; 148 recovered instruction blocks.
F.f407=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f407",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f407 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p201
::p2::
tick(2)
branch_taken=false
do
do
if registers[3] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
::p4::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p5::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p6::
do
do
registers[5] = (registers[5]["add"])
end

end
goto p289
::p8::
tick(8)
do
do
registers[4] = (registers[4]["value"])
end

end
::p9::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p10::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
goto p197
::p13::
tick(13)
do
do
(registers)[4] = registers[2]
end

end
::p14::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p15::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p70
::p24::
tick(24)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p25::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p26::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p27::
do
do
registers[2] = (registers[2]["edge_yaw"])
end

end
::p28::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p29::
do
do
registers[4] = (registers[1]["edge_yaw"])
end

end
goto p292
::p64::
tick(64)
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p65::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p66::
do
do
registers[4] = (registers[4]["type"])
end

end
::p67::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p144
::p70::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p71::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p72::
do
do
registers[5] = (registers[5]["add"])
end

end
goto p277
::p74::
tick(74)
do
do
registers[2] = (registers[2]["freestanding_body_yaw"])
end

end
::p75::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p76::
do
do
registers[4] = (registers[1]["body_yaw"])
end

end
::p77::
do
do
registers[4] = (registers[4]["freestanding"])
end

end
::p78::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p128
::p96::
tick(96)
do
do
(registers)[6] = upvalues[3]["normalize"]
end

end
::p97::
do
do
registers[7] = (registers[1]["yaw"])
end

end
::p98::
do
do
registers[7] = (registers[7]["value"])
end

end
::p109::
do
do
registers[8] = (registers[1]["yaw"])
end

end
::p110::
do
do
registers[8] = (registers[8]["add"])
end

end
::p111::
do
do
(registers)[7] = registers[7] + registers[8]
end

end
::p112::
do
do
registers[8] = (registers[1]["yaw"])
end

end
::p113::
do
do
registers[8] = (registers[8]["body"])
end

end
::p114::
do
do
(registers)[7] = registers[7] + registers[8]
end

end
goto p210
::p116::
tick(116)
do
do
(registers)[4] = upvalues[0]["antiaim"]
end

end
::p117::
do
do
registers[4] = (registers[4]["angles"])
end

end
::p118::
do
do
registers[4] = (registers[4]["yaw"])
end

end
::p119::
do
do
registers[4] = (registers[4][2])
end

end
::p120::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p96
::p128::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p129::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p130::
do
do
registers[2] = (registers[2]["freestanding"])
end

end
::p131::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p132::
do
do
registers[4] = (registers[1]["freestanding"])
end

end
::p133::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p185
::p135::
tick(135)
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p136::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p137::
do
do
registers[4] = (registers[4]["base"])
end

end
::p138::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p139::
do
do
registers[2] = (upvalues[1])
end

end
::p140::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p141::
do
do
registers[3] = (upvalues[2])
end

end
goto p13
::p144::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p145::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p146::
do
do
registers[2] = (registers[2]["yaw_base"])
end

end
goto p135
::p148::
tick(148)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p183 end
goto p285
::p151::
tick(151)
do
do
registers[4] = (registers[4]["yaw_jitter"])
end

end
::p152::
do
do
registers[4] = (registers[4][1])
end

end
::p153::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p240
::p155::
tick(155)
do
do
registers[2] = (registers[2]["hotkey"])
end

end
::p156::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p157::
do
do
registers[4] = (registers[1]["freestanding"])
end

end
goto p148
::p159::
tick(159)
do
do
(registers)[4] = upvalues[3]["normalize"]
end

end
::p160::
do
do
registers[5] = (registers[1]["body_yaw"])
end

end
::p161::
do
do
registers[5] = (registers[5]["value"])
end

end
goto p233
::p177::
tick(177)
do
do
registers[4] = new_frame(1)
end

end
::p178::
do
do
registers[5] = ("On hotkey")
end

end
::p179::
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 1, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p24
::p183::
tick(183)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p177
::p185::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p186::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p187::
do
do
registers[2] = (registers[2]["freestanding"])
end

end
goto p155
::p197::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p198::
do
do
registers[2] = (registers[2]["yaw"])
end

end
::p199::
do
do
registers[2] = (registers[2][1])
end

end
goto p64
::p201::
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
::p202::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p203::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p204::
do
do
registers[2] = (registers[2]["enabled"])
end

end
::p205::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p206::
do
do
registers[4] = (true)
end

end
::p207::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p208::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
goto p265
::p210::
do
do
registers[8] = (-180)
end

end
::p211::
do
do
registers[9] = (180)
end

end
::p212::
do
do
a = 6
z = (4)
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
::p213::
do
do
a = 4;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p214::
do
do
(registers)[4] = upvalues[0]["antiaim"]
end

end
::p215::
do
do
registers[4] = (registers[4]["angles"])
end

end
goto p151
::p218::
tick(218)
do
do
registers[4] = (registers[1]["pitch"])
end

end
::p219::
do
do
registers[4] = (registers[4]["type"])
end

end
::p220::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p221::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
goto p270
::p224::
tick(224)
do
do
registers[2] = (registers[2]["roll"])
end

end
::p225::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p226::
do
do
registers[4] = (0)
end

end
::p227::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p228::
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
::p229::
tick(229)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p230::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p231::
do
do
registers[2] = (registers[2]["angles"])
end

end
goto p280
::p233::
do
do
registers[6] = (-180)
end

end
::p234::
do
do
registers[7] = (180)
end

end
::p235::
do
do
a = 4
z = (4)
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
::p236::
do
do
a = 2;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p237::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p238::
do
do
registers[2] = (registers[2]["angles"])
end

end
goto p74
::p240::
do
do
registers[6] = ("Off")
end

end
::p241::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p242::
do
do
(registers)[4] = upvalues[0]["antiaim"]
end

end
::p243::
do
do
registers[4] = (registers[4]["angles"])
end

end
::p244::
do
do
registers[4] = (registers[4]["yaw_jitter"])
end

end
::p245::
do
do
registers[4] = (registers[4][2])
end

end
::p246::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p247::
do
do
registers[6] = (0)
end

end
::p248::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p249::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p250::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p251::
do
do
registers[2] = (registers[2]["body_yaw"])
end

end
::p252::
do
do
registers[2] = (registers[2][1])
end

end
::p253::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p254::
do
do
registers[4] = (registers[1]["body_yaw"])
end

end
::p255::
do
do
registers[4] = (registers[4]["type"])
end

end
goto p229
::p265::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p266::
do
do
registers[2] = (registers[2]["pitch"])
end

end
::p267::
do
do
registers[2] = (registers[2][1])
end

end
::p268::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p218
::p270::
do
do
registers[2] = (registers[2]["angles"])
end

end
::p271::
do
do
registers[2] = (registers[2]["pitch"])
end

end
::p272::
do
do
registers[2] = (registers[2][2])
end

end
::p273::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p274::
do
do
registers[4] = (registers[1]["pitch"])
end

end
goto p8
::p277::
do
do
registers[5] = registers[5] + 180
end

end
::p278::
do
do
registers[4]["add"] = (registers[5])
end

end
goto p116
::p280::
do
do
registers[2] = (registers[2]["body_yaw"])
end

end
::p281::
do
do
registers[2.0] = (registers[2][2])
end

end
::p282::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p159
::p285::
do
do
registers[4] = new_frame(1)
end

end
::p286::
do
do
registers[5] = ("Always on")
end

end
::p287::
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 1, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p183
::p289::
do
do
(registers)[5] = registers[5] + registers[3]
end

end
::p290::
do
do
registers[4]["add"] = (registers[5])
end

end
goto p116
::p292::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p293::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p294::
do
do
registers[2] = (registers[2]["angles"])
end

end
goto p224
end
end
