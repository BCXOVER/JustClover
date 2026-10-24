
-- Function f301; 108 recovered instruction blocks.
F.f301=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f301",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f301 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p46
::p9::
tick(9)
do
do
registers[12] = (registers[12] - registers[9])
end

end
::p10::
do
do
registers[13] = (180)
end

end
::p11::
do
do
a = 11
z = (3)
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
::p12::
do
do
a = 10
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p13::
do
do
(registers)[11] = upvalues[0][37]
end

end
goto p264
::p17::
tick(17)
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p95 end
::p21::
do
do
registers[5] = (registers[4]["simtime"])
end

end
::p22::
do
do
registers[5] = (registers[3] - registers[5])
end

end
::p23::
branch_taken=false
do
do
if not (not (registers[5] < 1)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p95 end
goto p259
::p25::
tick(25)
do
do
registers[4] = (0)
end

end
goto p64
::p27::
tick(27)
do
do
registers[3] = (upvalues[1])
end

end
::p28::
do
do
(registers)[4] = registers[2]
end

end
::p29::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p30::
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
::p46::
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
::p47::
do
do
(registers)[3] = upvalues[0][50]
end

end
::p48::
do
do
(registers)[4] = registers[2]
end

end
::p49::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p148
::p64::
tick(64)
do
do
(registers)[5] = upvalues[0][28]
end

end
::p65::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p66::
do
do
registers[4] = (registers[4] / registers[5])
end

end
goto p142
::p68::
tick(68)
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p230
::p85::
tick(85)
do
do
(registers)[14] = (registers[11] ~= 0)
end

end
goto p172
::p87::
tick(87)
do
do
(registers)[8] = upvalues[2]["wraith"]
end

end
::p88::
do
do
registers[8] = (registers[8]["prev"])
end

end
::p89::
do
do
(registers)[8] = registers[8][registers[2]]
end

end
goto p174
::p91::
tick(91)
do
do
registers[7] = (upvalues[1])
end

end
::p92::
do
do
(registers)[8] = registers[2]
end

end
::p93::
do
do
a = (7)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p94::
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
::p95::
do
do
registers[5] = (upvalues[3])
end

end
::p96::
do
do
(registers)[6] = registers[1]
end

end
::p97::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p98::
do
do
registers[6] = (upvalues[3])
end

end
goto p109
::p103::
tick(103)
do
do
registers[12] = (registers[12]["cur"])
end

end
::p104::
do
do
registers[13] = {
}
end

end
::p105::
do
do
(registers)[14] = registers[7]
end

end
::p106::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p269 end
goto p262
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
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p91 end
goto p199
::p126::
tick(126)
do
do
a = 7
z = (3)
q = 3
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
::p127::
do
do
(registers)[9] = upvalues[0][154]
end

end
::p128::
do
do
registers[10] = (upvalues[4])
end

end
::p129::
do
do
registers[11] = (upvalues[5])
end

end
::p130::
do
do
(registers)[12] = registers[5]
end

end
::p131::
do
do
(registers)[13] = registers[6]
end

end
::p132::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p133::
do
do
registers[12] = (180)
end

end
::p134::
do
do
a = 10
z = (3)
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
::p135::
do
do
a = 9
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p136::
do
do
(registers)[10] = upvalues[0][154]
end

end
::p137::
do
do
registers[11] = (upvalues[4])
end

end
::p138::
do
do
(registers)[12] = registers[8]
end

end
::p139::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p190
::p142::
do
do
registers[4] = 0.5 + registers[4]
end

end
::p143::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p144::
do
do
(registers)[4] = upvalues[2]["wraith"]
end

end
::p145::
do
do
registers[4] = (registers[4]["cur"])
end

end
::p146::
do
do
(registers)[4] = registers[4][registers[2]]
end

end
goto p17
::p148::
branch_taken=false
do
do
if registers[3] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p194
::p172::
tick(172)
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p230 end
goto p243
::p174::
do
do
(registers[7])[registers[2]] = registers[8]
end

end
::p175::
do
do
(registers)[7] = upvalues[2]["wraith"]
end

end
::p176::
do
do
registers[7] = (registers[7]["prev"])
end

end
goto p184
::p178::
tick(178)
do
do
registers[13]["last_shot_time"] = (registers[14])
end

end
::p179::
do
do
(registers[12])[registers[2]] = registers[13]
end

end
::p180::
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
::p184::
do
do
(registers[7])[registers[2]] = registers[4]
end

end
::p185::
do
do
(registers)[7] = upvalues[0][47]
end

end
::p186::
do
do
(registers)[8] = registers[2]
end

end
::p187::
do
do
registers[9] = ("m_angEyeAngles")
end

end
goto p126
::p190::
do
do
registers[12] = (0)
end

end
goto p9
::p194::
do
do
(registers)[4] = upvalues[0][42]
end

end
::p195::
do
do
(registers)[5] = registers[2]
end

end
::p196::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p197::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p201 end
goto p27
::p199::
branch_taken=false
do
do
if registers[6] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p247 end
goto p91
::p201::
do
do
(registers)[3] = upvalues[0][154]
end

end
::p202::
do
do
(registers)[4] = upvalues[0][47]
end

end
::p203::
do
do
(registers)[5] = registers[2]
end

end
::p204::
do
do
registers[6] = ("m_flSimulationTime")
end

end
::p205::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p241
::p208::
tick(208)
do
do
(registers[7])[registers[2]] = registers[8]
end

end
::p209::
do
do
(registers)[7] = upvalues[2]["wraith"]
end

end
::p210::
do
do
registers[7] = (registers[7]["pre_prev"])
end

end
goto p87
::p230::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p178 end
goto p275
::p232::
tick(232)
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p85
::p241::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p25
::p243::
do
do
(registers)[14] = upvalues[0][47]
end

end
::p244::
do
do
(registers)[15] = registers[11]
end

end
::p245::
do
do
registers[16] = ("m_fLastShotTime")
end

end
goto p68
::p247::
do
do
(registers)[7] = upvalues[2]["wraith"]
end

end
::p248::
do
do
registers[7] = (registers[7]["pre_pre_prev"])
end

end
::p249::
do
do
(registers)[8] = upvalues[2]["wraith"]
end

end
::p250::
do
do
registers[8] = (registers[8]["pre_prev"])
end

end
::p251::
do
do
(registers)[8] = registers[8][registers[2]]
end

end
goto p208
::p259::
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
::p262::
do
do
registers[14] = (0)
end

end
goto p269
::p264::
do
do
(registers)[12] = registers[2]
end

end
::p265::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p266::
do
do
(registers)[12] = upvalues[2]["wraith"]
end

end
goto p103
::p269::
do
do
registers[13]["pitch"] = (registers[14])
end

end
::p270::
do
do
registers[13]["yaw"] = (registers[10])
end

end
::p271::
do
do
registers[13]["yaw_backwards"] = (registers[9])
end

end
::p272::
do
do
registers[13]["simtime"] = (registers[3])
end

end
::p273::
do
do
registers[14] = (registers[11] ~= registers[0])
end

end
goto p232
::p275::
do
do
(registers)[14] = nil
end

end
goto p178
end
end
