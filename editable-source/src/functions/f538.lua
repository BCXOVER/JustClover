
-- Function f538; 128 recovered instruction blocks.
F.f538=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f538",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f538 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p106
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
goto p197
::p12::
tick(12)
branch_taken=false
do
do
if registers[3] ~= "Jitter[2]" then
    branch_taken=true
end
end

end
if branch_taken then goto p239 end
goto p56
::p14::
tick(14)
do
do
registers[4] = (upvalues[0])
end

end
::p15::
do
do
top = (4)
registers[top]()
top = top - 1
end

end
::p16::
branch_taken=false
do
do
if registers[3] ~= "Static" then
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p234
::p18::
tick(18)
do
do
(registers)[10] = upvalues[1][36]
end

end
::p19::
do
do
(registers)[11] = registers[2]
end

end
::p20::
do
do
registers[12] = ("m_flPoseParameter")
end

end
::p21::
do
do
(registers)[13] = registers[9] * registers[8]
end

end
goto p206
::p23::
tick(23)
do
do
(registers)[8] = registers[6]
end

end
::p24::
do
do
a = (7)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p239
::p26::
tick(26)
do
do
registers[6] = ("Always slide")
end

end
goto p135
::p29::
tick(29)
do
do
(registers)[4] = upvalues[1][36]
end

end
::p30::
do
do
(registers)[5] = registers[2]
end

end
::p31::
do
do
registers[6] = ("m_flPoseParameter")
end

end
goto p109
::p34::
tick(34)
do
do
(registers)[4] = upvalues[1][36]
end

end
::p35::
do
do
(registers)[5] = registers[2]
end

end
::p36::
do
do
registers[6] = ("m_flPoseParameter")
end

end
goto p160
::p44::
tick(44)
do
do
(registers)[5] = registers[2]
end

end
::p45::
do
do
registers[6] = ("m_flPoseParameter")
end

end
::p46::
do
do
(registers)[7] = upvalues[1][150]
end

end
::p47::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p48::
do
do
registers[8] = (6)
end

end
::p49::
do
do
a = (4)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p50::
do
do
registers[4] = (upvalues[0])
end

end
::p51::
do
do
top = (4)
registers[top]()
top = top - 1
end

end
goto p282
::p54::
tick(54)
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
::p56::
do
do
registers[4] = (registers[1]["legs_offset_1"])
end

end
::p57::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p58::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p59::
do
do
registers[4] = (registers[4] * 0.01)
end

end
::p60::
do
do
registers[5] = (registers[1]["legs_offset_2"])
end

end
::p61::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p219
::p63::
tick(63)
do
do
(registers)[11] = registers[4]
end

end
::p64::
do
do
(registers)[12] = registers[5]
end

end
::p65::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p170
::p80::
tick(80)
do
do
(registers)[8] = 1 / registers[8]
end

end
::p81::
do
do
registers[9] = (registers[7] * 2)
end

end
::p82::
do
do
registers[9] = registers[4] % registers[9]
end

end
::p83::
do
do
registers[9] = (registers[9] >= registers[7])
end

end
::p84::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p146
::p86::
tick(86)
branch_taken=false
do
do
if registers[3] ~= "Kangaroo" then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p29
::p89::
tick(89)
do
do
registers[8] = (400)
end

end
goto p80
::p91::
tick(91)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p89
::p99::
tick(99)
do
do
registers[6] = ("Off")
end

end
goto p232
::p101::
tick(101)
do
do
registers[3] = (registers[1]["ground_legs"])
end

end
::p102::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p103::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p187
::p106::
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
::p107::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p231
::p109::
do
do
(registers)[7] = upvalues[1][150]
end

end
::p110::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p111::
do
do
registers[8] = (3)
end

end
::p112::
do
do
a = (4)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p113::
do
do
(registers)[4] = upvalues[1][36]
end

end
::p114::
do
do
(registers)[5] = registers[2]
end

end
goto p240
::p116::
tick(116)
do
do
(registers)[4] = upvalues[1][23]
end

end
::p117::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p118::
do
do
registers[5] = (registers[1]["legs_offset_1"])
end

end
::p119::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p164
::p124::
tick(124)
do
do
registers[8] = (7)
end

end
::p125::
do
do
a = (4)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p126::
do
do
(registers)[4] = upvalues[1][36]
end

end
goto p44
::p135::
tick(135)
do
do
(registers)[7] = upvalues[1][36]
end

end
::p136::
do
do
(registers)[8] = registers[2]
end

end
::p137::
do
do
registers[9] = ("m_flPoseParameter")
end

end
::p138::
do
do
(registers)[10] = upvalues[2]["random_float"]
end

end
goto p63
::p146::
do
do
(registers)[9] = registers[5]
end

end
goto p2
::p160::
do
do
registers[7] = (0)
end

end
::p161::
do
do
registers[8] = (7)
end

end
::p162::
do
do
a = (4)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p244
::p164::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p165::
do
do
registers[6] = (registers[1]["legs_offset_2"])
end

end
::p166::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p167::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p277
::p170::
do
do
registers[11] = (0)
end

end
::p171::
do
do
a = (7)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p172::
do
do
registers[7] = (upvalues[0])
end

end
goto p23
::p183::
tick(183)
do
do
registers[7] = (1)
end

end
::p184::
do
do
registers[8] = (0)
end

end
::p185::
do
do
a = (4)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p268
::p187::
branch_taken=false
do
do
if registers[3] ~= "Off" then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p274
::p189::
tick(189)
do
do
registers[8] = (200)
end

end
goto p91
::p192::
tick(192)
do
do
registers[8] = registers[4] % registers[8]
end

end
::p193::
do
do
registers[9] = (registers[7] * 2)
end

end
::p194::
do
do
registers[8] = (registers[8] >= registers[9])
end

end
::p195::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p91 end
goto p189
::p197::
do
do
(registers)[9] = registers[6]
end

end
goto p18
::p206::
do
do
registers[14] = (0)
end

end
::p207::
do
do
a = (10)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p208::
do
do
registers[10] = (upvalues[0])
end

end
::p209::
do
do
registers[11] = ("Always slide")
end

end
::p210::
do
do
a = (10)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p54
::p219::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p220::
do
do
registers[5] = (registers[5] * 0.01)
end

end
::p221::
do
do
(registers)[6] = upvalues[2]["random_int"]
end

end
::p222::
do
do
registers[7] = (0)
end

end
goto p250
::p231::
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
::p232::
tick(232)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p26
::p234::
do
do
(registers)[4] = upvalues[1][36]
end

end
::p235::
do
do
(registers)[5] = registers[2]
end

end
::p236::
do
do
registers[6] = ("m_flPoseParameter")
end

end
goto p183
::p239::
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
::p240::
do
do
registers[6] = ("m_flPoseParameter")
end

end
::p241::
do
do
(registers)[7] = upvalues[1][150]
end

end
::p242::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
goto p124
::p244::
do
do
registers[4] = (upvalues[0])
end

end
::p245::
do
do
registers[5] = ("Never slide")
end

end
::p246::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p247::
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
::p250::
do
do
registers[8] = (1)
end

end
::p251::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p252::
do
do
registers[6] = (registers[6] == 0)
end

end
::p253::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p232 end
goto p99
::p256::
branch_taken=false
do
do
if registers[3] ~= "Jitter" then
    branch_taken=true
end
end

end
if branch_taken then goto p272 end
goto p116
::p268::
do
do
registers[4] = (upvalues[0])
end

end
::p269::
do
do
registers[5] = ("Always slide")
end

end
::p270::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p271::
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
::p272::
branch_taken=false
do
do
if registers[3] ~= "Moonwalk" then
    branch_taken=true
end
end

end
if branch_taken then goto p86 end
goto p34
::p274::
do
do
registers[4] = (upvalues[0])
end

end
::p275::
do
do
top = (4)
registers[top]()
top = top - 1
end

end
::p276::
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
::p277::
do
do
registers[7] = (registers[1]["legs_jitter_time"])
end

end
::p278::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p279::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p280::
do
do
registers[8] = (registers[7] * 4)
end

end
goto p192
::p282::
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
