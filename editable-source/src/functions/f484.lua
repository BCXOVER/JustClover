
-- Function f484; 182 recovered instruction blocks.
F.f484=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f484",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f484 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p27
::p3::
tick(3)
do
do
registers[9] = (upvalues[8])
end

end
::p4::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p142
::p6::
tick(6)
do
do
registers[12] = (upvalues[6])
end

end
::p7::
do
do
registers[13] = (0)
end

end
::p8::
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
::p9::
do
do
a = 9;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p265
::p11::
tick(11)
do
do
registers[3] = (registers[3] * 0.1)
end

end
::p12::
do
do
a = (registers)
end

end
::p13::
do
do
z = 4
end

end
::p14::
do
do
q = (upvalues)
end

end
::p15::
do
do
m = 3
q = (q[m])
a[z] = q
end

end
::p16::
do
do
(registers)[5] = upvalues[4]["viewmodel_offset_y"]
end

end
::p17::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p18::
do
do
registers[4] = (registers[4] * 0.1)
end

end
::p19::
do
do
registers[5] = (upvalues[3])
end

end
goto p49
::p21::
tick(21)
do
do
(registers)[3] = upvalues[0][50]
end

end
::p22::
do
do
(registers)[4] = registers[2]
end

end
::p23::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p24::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p115 end
goto p243
::p27::
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
::p28::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p29::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p30::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p243 end
goto p21
::p32::
tick(32)
do
do
registers[12] = (upvalues[7])
end

end
::p33::
do
do
registers[13] = (0)
end

end
::p34::
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
::p35::
do
do
a = 9;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p3
::p43::
tick(43)
do
do
(registers)[9] = registers[3]
end

end
::p44::
do
do
(registers)[10] = registers[4]
end

end
::p45::
do
do
(registers)[11] = registers[5]
end

end
::p46::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (9)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p49::
do
do
(registers)[6] = upvalues[4]["viewmodel_offset_z"]
end

end
::p50::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
do
do
registers[5] = (registers[5] * 0.1)
end

end
::p52::
do
do
(registers)[6] = upvalues[4]["viewmodel_options"]
end

end
::p53::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p54::
do
do
a = (registers)
z = 8
end

end
::p55::
do
do
q = "CSS Animation";
(a)[z] = (q)
end

end
::p56::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p57::
do
do
(registers)[7] = upvalues[4]["viewmodel_options"]
end

end
goto p270
::p59::
tick(59)
do
do
(registers)[3] = registers[10]
end

end
::p60::
do
do
(registers)[10] = upvalues[11]["lerp"]
end

end
::p61::
do
do
(registers)[11] = registers[4]
end

end
::p62::
do
do
registers[12] = (-5)
end

end
::p63::
do
do
a = (upvalues[2]);
(registers)[13] = a[2][a[1]]
end

end
goto p287
::p65::
tick(65)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p207 end
goto p305
::p67::
tick(67)
do
do
registers[11] = (upvalues[7])
end

end
::p68::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p69::
do
do
registers[13] = (0)
end

end
goto p146
::p71::
tick(71)
do
do
registers[11] = (upvalues[8])
end

end
::p72::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p202 end
goto p158
::p74::
tick(74)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p200
::p94::
tick(94)
do
do
registers[9] = (upvalues[6])
end

end
::p95::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p265 end
goto p120
::p97::
tick(97)
do
do
registers[13] = (0.05)
end

end
::p98::
do
do
a = 10
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p99::
do
do
a = upvalues[2]
a[2][a[1]] = registers[10]
end

end
::p100::
do
do
(registers)[10] = upvalues[11]["lerp"]
end

end
goto p129
::p111::
tick(111)
do
do
registers[11] = (upvalues[7])
end

end
::p112::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p67
::p115::
do
do
registers[3] = (upvalues[3])
end

end
::p116::
do
do
(registers)[4] = upvalues[4]["viewmodel_offset_x"]
end

end
::p117::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p11
::p120::
do
do
registers[9] = (upvalues[6])
end

end
::p121::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p122::
do
do
registers[11] = (upvalues[10])
end

end
goto p6
::p129::
do
do
(registers)[11] = registers[3]
end

end
::p130::
do
do
registers[12] = (-4.75)
end

end
::p131::
do
do
a = (upvalues[2]);
(registers)[13] = a[2][a[1]]
end

end
::p132::
do
do
a = 10
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p59
::p134::
tick(134)
do
do
a = (upvalues[9])
a[2][a[1]] = (false)
end

end
goto p65
::p136::
tick(136)
do
do
registers[12] = (upvalues[8])
end

end
::p137::
do
do
registers[13] = (0)
end

end
::p138::
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
::p139::
do
do
a = 9;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p134
::p142::
do
do
registers[9] = (upvalues[8])
end

end
::p143::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p144::
do
do
registers[11] = (upvalues[10])
end

end
goto p136
::p146::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p71
::p154::
tick(154)
do
do
registers[9] = (upvalues[12])
end

end
::p155::
do
do
(registers)[10] = registers[1]
end

end
::p156::
do
do
a = (9)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p43
::p158::
do
do
registers[11] = (upvalues[8])
end

end
::p159::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p160::
do
do
registers[13] = (0)
end

end
::p161::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p202
::p163::
tick(163)
do
do
registers[12] = ("m_vecVelocity")
end

end
::p164::
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
::p165::
do
do
a = 9
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p166::
do
do
(registers)[10] = upvalues[0][162]
end

end
::p167::
do
do
registers[11] = (1)
end

end
::p168::
do
do
a = (12)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["length"]
end

end
::p169::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p170::
do
do
registers[12] = registers[12] / 300
end

end
goto p259
::p180::
tick(180)
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p328 end
goto p154
::p182::
tick(182)
do
do
(registers)[5] = registers[10]
end

end
goto p298
::p187::
tick(187)
do
do
registers[12] = (1)
end

end
goto p74
::p189::
tick(189)
do
do
(registers)[11] = upvalues[0][163]
end

end
::p190::
do
do
(registers)[12] = upvalues[0][30]
end

end
::p191::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p192::
do
do
registers[12] = (registers[12] * 6)
end

end
::p193::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p194::
do
do
(registers)[11] = registers[11] * registers[10]
end

end
goto p221
::p196::
tick(196)
do
do
a = (upvalues[2]);
(registers)[11] = a[2][a[1]]
end

end
::p197::
do
do
(registers)[12] = registers[9]
end

end
::p198::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p187
::p200::
do
do
registers[12] = (0)
end

end
goto p97
::p202::
do
do
(registers)[11] = environment["cvar"]
end

end
::p203::
do
do
registers[11] = (registers[11]["viewmodel_offset_y"])
end

end
::p204::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p233 end
goto p253
::p207::
do
do
a = (upvalues[2])
a[2][a[1]] = (0)
end

end
goto p298
::p221::
do
do
registers[11] = (registers[11] * 0.8)
end

end
::p222::
do
do
(registers)[4] = registers[4] + registers[11]
end

end
::p223::
do
do
(registers)[11] = upvalues[0][163]
end

end
::p224::
do
do
(registers)[12] = upvalues[0][30]
end

end
::p225::
do
do
top = 12;
(registers)[top] = registers[top]()
end

end
::p226::
do
do
registers[12] = (registers[12] * 3)
end

end
goto p237
::p228::
tick(228)
do
do
(registers)[11] = environment["cvar"]
end

end
::p229::
do
do
registers[11] = (registers[11]["viewmodel_offset_z"])
end

end
::p230::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p231::
do
do
(registers)[13] = registers[5]
end

end
goto p300
::p233::
tick(233)
do
do
(registers)[11] = environment["cvar"]
end

end
::p234::
do
do
registers[11] = (registers[11]["viewmodel_offset_z"])
end

end
::p235::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p189 end
goto p228
::p237::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p238::
do
do
(registers)[11] = registers[11] * registers[10]
end

end
::p239::
do
do
registers[11] = (registers[11] * 0.2)
end

end
::p240::
do
do
(registers)[5] = registers[5] + registers[11]
end

end
::p241::
do
do
a = (upvalues[9])
a[2][a[1]] = (true)
end

end
goto p65
::p243::
do
do
registers[3] = (upvalues[1])
end

end
::p244::
do
do
top = (3)
registers[top]()
top = top - 1
end

end
::p245::
do
do
a = (upvalues[2])
a[2][a[1]] = (0)
end

end
::p246::
do
do
for f = 3, 5, 1 do
    (registers)[f] = nil
end
end

end
goto p275
::p248::
tick(248)
do
do
registers[11] = (upvalues[6])
end

end
::p249::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_int"]
end

end
::p250::
do
do
registers[13] = (0)
end

end
::p251::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p111
::p253::
do
do
(registers)[11] = environment["cvar"]
end

end
::p254::
do
do
registers[11] = (registers[11]["viewmodel_offset_y"])
end

end
::p255::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p256::
do
do
(registers)[13] = registers[4]
end

end
::p257::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p233
::p259::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p260::
do
do
registers[11] = (upvalues[6])
end

end
::p261::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p248
::p265::
do
do
registers[9] = (upvalues[7])
end

end
::p266::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p353
::p268::
tick(268)
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p335 end
goto p331
::p270::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p271::
do
do
registers[9] = ("CS2 Viewmodel Scope")
end

end
::p272::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p273::
do
do
(registers)[8] = registers[7]
end

end
goto p268
::p275::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (3)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p287::
do
do
a = 10
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p288::
do
do
a = (registers)
z = 4
end

end
::p289::
do
do
q = registers
m = 10
q = (q[m])
end

end
::p290::
do
do
(a)[z] = q
end

end
::p291::
do
do
(registers)[10] = upvalues[11]["lerp"]
end

end
::p292::
do
do
(registers)[11] = registers[5]
end

end
::p293::
do
do
registers[12] = (-2)
end

end
::p294::
do
do
a = (upvalues[2]);
(registers)[13] = a[2][a[1]]
end

end
::p295::
do
do
a = 10
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p182
::p298::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p328 end
goto p180
::p300::
do
do
a = 11;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p189
::p305::
do
do
(registers)[9] = upvalues[0][47]
end

end
::p306::
do
do
a = (registers)
z = 10
end

end
::p307::
do
do
q = registers
m = 2
q = (q[m])
end

end
::p308::
do
do
(a)[z] = q
end

end
::p309::
do
do
registers[11] = ("m_bIsScoped")
end

end
::p310::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p311::
do
do
registers[9] = (registers[9] == 1)
end

end
::p312::
do
do
(registers)[10] = upvalues[11]["lerp"]
end

end
goto p196
::p328::
do
do
registers[9] = (upvalues[1])
end

end
::p329::
do
do
top = (9)
registers[top]()
top = top - 1
end

end
goto p43
::p331::
do
do
registers[9] = (upvalues[5])
end

end
::p332::
do
do
(registers)[10] = upvalues[0][47]
end

end
::p333::
do
do
(registers)[11] = registers[2]
end

end
goto p163
::p335::
do
do
a = (upvalues[9]);
(registers)[9] = a[2][a[1]]
end

end
::p336::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p94
::p353::
do
do
registers[9] = (upvalues[7])
end

end
::p354::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p355::
do
do
registers[11] = (upvalues[10])
end

end
goto p32
end
end
