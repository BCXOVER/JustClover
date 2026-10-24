
-- Function f344; 91 recovered instruction blocks.
F.f344=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f344",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f344 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p230
::p2::
tick(2)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p163
::p4::
tick(4)
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p5::
do
do
registers[5]["type"] = "180"
end

end
::p6::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p7::
do
do
registers[6] = (registers[3]["global"])
end

end
::p8::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p206
::p10::
tick(10)
do
do
registers[11] = ("Local view")
end

end
goto p133
::p12::
tick(12)
do
do
registers[5]["base"] = (registers[6])
end

end
::p13::
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
::p15::
tick(15)
do
do
registers[6] = ("Local view")
end

end
goto p69
::p18::
tick(18)
do
do
registers[10] = (registers[1]["yaw"])
end

end
::p19::
do
do
registers[10]["type"] = "180"
end

end
::p20::
do
do
registers[10] = (registers[1]["yaw"])
end

end
goto p46
::p23::
tick(23)
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
::p30::
tick(30)
do
do
a = upvalues[0];
(registers)[11] = (a[2][a[1]]["manual"])
end

end
::p31::
do
do
registers[11] = (registers[11] ~= registers[0])
end

end
::p32::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p10
::p35::
tick(35)
do
do
registers[5] = ("At targets")
end

end
goto p167
::p37::
tick(37)
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p38::
do
do
(registers)[8] = registers[7]
end

end
::p39::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
::p41::
do
do
(registers)[8] = registers[5]
end

end
goto p161
::p46::
do
do
(registers)[11] = upvalues[1]["clamp"]
end

end
::p47::
do
do
registers[12] = (upvalues[2])
end

end
::p48::
do
do
(registers)[13] = registers[5]
end

end
::p49::
do
do
(registers)[14] = registers[6]
end

end
::p50::
do
do
(registers)[15] = registers[9]
end

end
::p51::
do
do
a = upvalues[0];
(registers)[16] = (a[2][a[1]]["current"])
end

end
goto p211
::p58::
tick(58)
branch_taken=false
do
do
if registers[4] ~= "180" then
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p4
::p61::
tick(61)
do
do
registers[5] = (registers[3]["left"])
end

end
::p62::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p63::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p64::
do
do
registers[6] = (registers[3]["right"])
end

end
::p65::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p66::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p67::
do
do
a = (7)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_left_side"]
end

end
goto p37
::p69::
tick(69)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p236
::p71::
tick(71)
do
do
a = 11
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p72::
do
do
registers[10]["value"] = (registers[11])
end

end
::p73::
do
do
registers[10] = (registers[1]["yaw"])
end

end
goto p30
::p100::
tick(100)
do
do
registers[4] = (registers[3]["type"])
end

end
::p101::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p102::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p103::
branch_taken=false
do
do
if registers[4] ~= "Solo" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p58
::p133::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p155
::p143::
tick(143)
do
do
registers[10]["base"] = (registers[11])
end

end
::p144::
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
::p145::
branch_taken=false
do
do
if registers[4] ~= "Double" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p196
::p155::
do
do
registers[11] = ("At targets")
end

end
goto p143
::p159::
tick(159)
do
do
registers[5] = ("Local view")
end

end
goto p175
::p161::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p227 end
goto p188
::p163::
do
do
registers[9] = (registers[3]["right_randomize"])
end

end
::p164::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p165::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p18
::p167::
tick(167)
do
do
registers[4]["base"] = (registers[5])
end

end
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
::p171::
tick(171)
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p172::
branch_taken=false
do
do
if registers[4] ~= "Hidden" then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p198
::p175::
tick(175)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p35
::p180::
tick(180)
do
do
(registers)[12] = registers[8] + registers[12]
end

end
::p181::
do
do
registers[13] = (-180)
end

end
::p182::
do
do
registers[14] = (180)
end

end
goto p71
::p184::
tick(184)
do
do
registers[9] = (registers[3]["left_randomize"])
end

end
::p185::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p186::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p2
::p188::
do
do
(registers)[8] = registers[6]
end

end
goto p227
::p196::
branch_taken=false
do
do
if registers[4] ~= "L / R" then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p61
::p198::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p199::
do
do
registers[4]["type"] = "180"
end

end
::p200::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p201::
do
do
registers[4]["value"] = 0
end

end
::p202::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p203::
do
do
a = upvalues[0];
(registers)[5] = (a[2][a[1]]["manual"])
end

end
::p204::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
goto p239
::p206::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p207::
do
do
registers[5]["value"] = (registers[6])
end

end
::p208::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p209::
do
do
a = upvalues[0];
(registers)[6] = (a[2][a[1]]["manual"])
end

end
goto p255
::p211::
do
do
(registers)[16] = upvalues[3][registers[16]]
end

end
::p212::
do
do
(registers)[17] = registers[7]
end

end
::p213::
do
do
a = 12
top = a + 6 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p180
::p227::
do
do
(registers)[9] = registers[7]
end

end
::p228::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p184
::p230::
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
::p231::
do
do
registers[3] = (registers[2]["yaw"])
end

end
::p232::
do
do
registers[4] = (registers[3]["builder_type"])
end

end
::p233::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p171
::p236::
do
do
registers[6] = ("At targets")
end

end
goto p12
::p239::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p159
::p255::
do
do
registers[6] = (registers[6] ~= registers[0])
end

end
::p256::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p15
end
end
