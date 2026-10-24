
-- Function f336; 100 recovered instruction blocks.
F.f336=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f336",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f336 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p156
::p10::
tick(10)
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p11::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p85
::p13::
tick(13)
do
do
(registers)[4] = upvalues[0]["is_on_ground"]
end

end
::p14::
do
do
(registers)[5] = registers[1]
end

end
::p15::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p175
::p30::
tick(30)
do
do
(registers)[5] = upvalues[1]["ragebot"]
end

end
::p31::
do
do
registers[5] = (registers[5]["hitchance"])
end

end
::p32::
do
do
registers[5] = (registers[5]["hotkey"])
end

end
::p33::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p34::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p35::
branch_taken=false
do
do
if registers[5] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p208
::p47::
tick(47)
do
do
(registers)[4] = upvalues[0]["option_enabled"]
end

end
::p48::
do
do
(registers)[5] = registers[3]
end

end
::p49::
do
do
registers[6] = ("In Air")
end

end
::p50::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p119
::p56::
tick(56)
do
do
(registers)[6] = upvalues[0]["get_option_value"]
end

end
::p57::
do
do
(registers)[7] = registers[3]
end

end
::p58::
do
do
registers[8] = ("No Scope")
end

end
goto p186
::p60::
tick(60)
do
do
(registers)[4] = upvalues[1]["ragebot"]
end

end
::p61::
do
do
registers[4] = (registers[4]["hitchance"])
end

end
::p62::
do
do
registers[4] = (registers[4]["hotkey"])
end

end
::p63::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p30
::p78::
tick(78)
do
do
(registers)[4] = upvalues[2]["is_fake_duck"]
end

end
::p79::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p80::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
goto p189
::p85::
do
do
registers[4] = (registers[3]["No Scope"])
end

end
::p86::
do
do
registers[5] = (registers[4]["distance"])
end

end
::p87::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
::p88::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p123 end
goto p144
::p90::
tick(90)
do
do
(registers)[4] = upvalues[2]["is_quick_peek"]
end

end
::p91::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p92::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p182 end
goto p168
::p94::
tick(94)
do
do
(registers)[4] = nil
end

end
::p95::
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
::p104::
tick(104)
do
do
(registers)[6] = upvalues[0]["get_distance"]
end

end
::p105::
do
do
(registers)[7] = registers[1]
end

end
::p106::
do
do
(registers)[8] = upvalues[3][52]
end

end
::p107::
do
do
a = 8
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
::p108::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p109::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p150
::p111::
tick(111)
do
do
(registers)[7] = upvalues[0]["get_option_value"]
end

end
::p112::
do
do
(registers)[8] = registers[3]
end

end
::p113::
do
do
registers[9] = ("No Scope")
end

end
::p114::
do
do
a = (7)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p115::
tick(115)
do
do
registers[6] = ("Hotkey")
end

end
::p116::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p117::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p60
::p119::
do
do
(registers)[4] = upvalues[0]["is_on_ground"]
end

end
::p120::
do
do
(registers)[5] = registers[1]
end

end
::p121::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p153
::p123::
tick(123)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p148 end
goto p173
::p144::
do
do
registers[5] = (registers[4]["distance"])
end

end
::p145::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p146::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p123
::p148::
tick(148)
branch_taken=false
do
do
if registers[5] ~= 101 then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p56
::p150::
do
do
registers[7] = (registers[6] * 0.083333336)
end

end
::p151::
branch_taken=false
do
do
if not (not (registers[7] <= registers[5])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p111
::p153::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p195
::p156::
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
::p157::
do
do
upvalues[0]["hotkey_active"] = false
end

end
::p158::
do
do
(registers)[4] = upvalues[0]["option_enabled"]
end

end
::p159::
do
do
(registers)[5] = registers[3]
end

end
goto p115
::p162::
do
do
(registers)[4] = upvalues[0]["option_enabled"]
end

end
::p163::
do
do
(registers)[5] = registers[3]
end

end
::p164::
do
do
registers[6] = ("Crouch")
end

end
::p165::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p166::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
goto p13
::p168::
do
do
(registers)[4] = upvalues[0]["get_option_value"]
end

end
::p169::
do
do
(registers)[5] = registers[3]
end

end
::p170::
do
do
registers[6] = ("Peek Assist")
end

end
::p171::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p173::
do
do
registers[5] = (101)
end

end
goto p148
::p175::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
::p176::
do
do
(registers)[4] = upvalues[0]["is_crouched"]
end

end
::p177::
do
do
(registers)[5] = registers[1]
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
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
goto p78
::p182::
tick(182)
do
do
(registers)[4] = upvalues[0]["option_enabled"]
end

end
::p183::
do
do
(registers)[5] = registers[3]
end

end
::p184::
do
do
registers[6] = ("No Scope")
end

end
goto p10
::p186::
do
do
a = (6)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p189::
do
do
(registers)[4] = upvalues[0]["get_option_value"]
end

end
::p190::
do
do
(registers)[5] = registers[3]
end

end
::p191::
do
do
registers[6] = ("Crouch")
end

end
::p192::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p195::
do
do
(registers)[4] = upvalues[0]["get_option_value"]
end

end
::p196::
do
do
(registers)[5] = registers[3]
end

end
::p197::
do
do
registers[6] = ("In Air")
end

end
::p198::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p208::
do
do
upvalues[0]["hotkey_active"] = true
end

end
::p209::
do
do
(registers)[4] = upvalues[0]["get_option_value"]
end

end
::p210::
do
do
(registers)[5] = registers[3]
end

end
::p211::
do
do
registers[6] = ("Hotkey")
end

end
::p212::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p213::
do
do
(registers)[4] = upvalues[0]["option_enabled"]
end

end
::p214::
do
do
(registers)[5] = registers[3]
end

end
::p215::
do
do
registers[6] = ("Peek Assist")
end

end
::p216::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p217::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p182 end
goto p90
end
end
