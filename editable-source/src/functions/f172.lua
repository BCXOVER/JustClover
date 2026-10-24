
-- Function f172; 72 recovered instruction blocks.
F.f172=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f172",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f172 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p208
::p45::
tick(45)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p172 end
goto p75
::p47::
tick(47)
do
do
(registers)[3] = registers[1]
end

end
goto p108
::p57::
tick(57)
do
do
registers[14] = (registers[14]["stubs"])
end

end
::p58::
do
do
registers[14] = (registers[14]["damage_indicator"])
end

end
::p59::
branch_taken=false
do
do
if registers[14] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p116
::p61::
tick(61)
do
do
(registers)[13] = registers[17]
end

end
::p62::
do
do
(registers)[12] = registers[16]
end

end
::p63::
do
do
(registers)[11] = registers[15]
end

end
goto p96
::p71::
tick(71)
do
do
registers[8] = ("b")
end

end
::p72::
do
do
(registers)[9] = registers[6]
end

end
::p73::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p199
::p75::
do
do
(registers)[3] = registers[1]
end

end
goto p172
::p77::
tick(77)
do
do
(registers)[7] = registers[3]
end

end
::p78::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p79::
do
do
(registers)[7] = upvalues[2][136]
end

end
goto p71
::p81::
tick(81)
do
do
registers[2] = (registers[2]["minimum_damage_override"])
end

end
::p82::
do
do
registers[2] = (registers[2][2])
end

end
::p83::
do
do
registers[3] = (registers[2] ~= registers[0])
end

end
goto p181
::p96::
tick(96)
do
do
(registers)[15] = 255 * registers[5]
end

end
::p97::
do
do
(registers)[16] = upvalues[2][131]
end

end
::p98::
do
do
(registers)[17] = registers[9]
end

end
::p99::
do
do
(registers)[18] = registers[10]
end

end
::p100::
do
do
(registers)[19] = registers[11]
end

end
goto p165
::p102::
tick(102)
do
do
registers[10] = (registers[7] * 0.5)
end

end
::p103::
do
do
registers[9] = (registers[9] - registers[10])
end

end
::p104::
do
do
registers[9] = registers[9] + 10
end

end
goto p195
::p108::
tick(108)
do
do
(registers)[4] = upvalues[0]["is_minimum_damage"]
end

end
::p109::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p110::
do
do
registers[5] = (upvalues[1])
end

end
::p111::
do
do
(registers)[6] = registers[4]
end

end
::p112::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p113::
do
do
(registers)[6] = environment["tostring"]
end

end
goto p77
::p116::
do
do
registers[15] = (registers[14]["get_color"])
end

end
::p117::
branch_taken=false
do
do
if registers[15] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
::p125::
do
do
a = (15)
z = registers[14]
registers[a + 1] = (z);
(registers)[a] = z["get_color"]
end

end
::p126::
do
do
a = 15
z = (2)
q = 4
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
branch_taken=false
do
do
if registers[15] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p61
::p145::
tick(145)
do
do
registers[11] = (255)
end

end
::p146::
do
do
registers[12] = (255)
end

end
::p147::
do
do
registers[13] = (255)
end

end
::p148::
do
do
(registers)[14] = upvalues[4]["visuals"]
end

end
goto p57
::p150::
tick(150)
do
do
a = 25
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
::p151::
do
do
a = 16;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p152::
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
::p165::
do
do
(registers)[20] = registers[12]
end

end
::p166::
do
do
(registers)[21] = registers[13]
end

end
::p167::
do
do
(registers)[22] = registers[15]
end

end
goto p183
::p172::
do
do
(registers)[4] = environment["type"]
end

end
::p173::
do
do
(registers)[5] = registers[3]
end

end
::p174::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p175::
branch_taken=false
do
do
if registers[4] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p47
::p178::
tick(178)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p179::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p45
::p181::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p178
::p183::
do
do
registers[23] = ("")
end

end
::p184::
do
do
registers[24] = (0)
end

end
::p185::
do
do
(registers)[25] = environment["tostring"]
end

end
::p186::
do
do
(registers)[26] = registers[3]
end

end
goto p150
::p195::
do
do
registers[10] = (registers[8]["y"])
end

end
::p196::
do
do
registers[10] = (registers[10] * 0.5)
end

end
::p197::
do
do
(registers)[10] = (registers[10] - 20)
end

end
goto p145
::p199::
do
do
registers[8] = (upvalues[3])
end

end
::p200::
do
do
(registers)[9] = upvalues[2][57]
end

end
::p201::
do
do
a = 9
z = (1)
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
::p202::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p203::
do
do
registers[9] = (registers[8]["x"])
end

end
::p204::
do
do
registers[9] = (registers[9] * 0.5)
end

end
goto p102
::p208::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p209::
do
do
registers[1] = (registers[1]["minimum_damage"])
end

end
::p210::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p211::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p212::
do
do
(registers)[2] = upvalues[0]["ragebot"]
end

end
goto p81
end
end
