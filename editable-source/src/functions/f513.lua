
-- Function f513; 211 recovered instruction blocks.
F.f513=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f513",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f513 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
do
do
a = {
    ...,
}
for f = 1, 10, 1 do
    registers[f] = (a[f])
end
end

end
::p3::
do
do
(registers)[2] = registers[2] + registers[5]
end

end
::p4::
do
do
(registers)[11] = registers[10]
end

end
goto p234
::p6::
tick(6)
branch_taken=false
do
do
a = (13)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p168 end
goto p367
::p8::
tick(8)
do
do
(registers)[24] = registers[20]
end

end
::p9::
do
do
a = 21
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p10::
do
do
(registers)[22] = upvalues[0][130]
end

end
::p11::
do
do
registers[23] = (registers[15][1])
end

end
::p12::
do
do
registers[24] = (registers[15][2])
end

end
::p13::
do
do
registers[25] = (registers[21]["r"])
end

end
::p14::
do
do
registers[26] = (registers[21]["g"])
end

end
goto p276
::p16::
tick(16)
do
do
registers[25] = (registers[10]["col2_end"])
end

end
::p17::
do
do
a = (registers)
z = 26
end

end
::p18::
do
do
q = false;
(a)[z] = (q)
end

end
::p19::
do
do
a = (16)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p6
::p21::
tick(21)
do
do
a = (15)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p22::
do
do
registers[16] = new_frame(4)
end

end
::p23::
do
do
(registers)[17] = registers[1]
end

end
::p24::
do
do
(registers)[18] = registers[2]
end

end
::p25::
do
do
(registers)[19] = registers[5]
end

end
::p26::
do
do
registers[20] = (registers[5] * 2)
end

end
goto p307
::p32::
tick(32)
do
do
registers[16] = (registers[2] - registers[5])
end

end
::p33::
do
do
registers[17] = (registers[5] * 2)
end

end
::p34::
do
do
registers[17] = (registers[3] - registers[17])
end

end
::p35::
do
do
(registers)[18] = registers[5]
end

end
::p36::
do
do
a = (14)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p59
::p41::
tick(41)
do
do
(registers)[23] = registers[5]
end

end
::p42::
do
do
registers[24] = (registers[15][3])
end

end
::p43::
do
do
registers[25] = (0.25)
end

end
goto p51
::p46::
tick(46)
do
do
registers[21] = (registers[21]["pi"])
end

end
::p47::
do
do
(registers)[21] = 50 * registers[21]
end

end
::p48::
do
do
registers[21] = 25 + registers[21]
end

end
goto p222
::p51::
do
do
a = (16)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p65
::p53::
tick(53)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p54::
do
do
(registers)[13] = environment["next"]
end

end
::p55::
do
do
(registers)[14] = registers[12]
end

end
::p56::
do
do
(registers)[15] = nil
end

end
goto p76
::p58::
tick(58)
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (13)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p65 end
::p59::
do
do
registers[15] = new_frame(4)
end

end
::p60::
do
do
(registers)[16] = registers[1] + registers[5]
end

end
::p61::
do
do
(registers)[17] = registers[2] + registers[4]
end

end
::p62::
do
do
registers[18] = (registers[5] * 2)
end

end
::p63::
do
do
registers[17] = (registers[17] - registers[18])
end

end
goto p133
::p65::
tick(65)
branch_taken=false
do
do
a = (13)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p165 end
goto p53
::p72::
tick(72)
do
do
registers[18] = (registers[18] * 0.5)
end

end
::p73::
do
do
registers[19] = (registers[15][3])
end

end
::p74::
do
do
(registers)[20] = environment["math"]
end

end
goto p182
::p76::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (13)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p6 end
::p77::
do
do
registers[33] = (code_metadata)
end

end
::p78::
do
do
registers[39] = operand_k
end

end
::p79::
do
do
(registers)[40] = (136 + 57)
end

end
::p80::
do
do
(registers)[40] = (registers[40] - 439)
end

end
::p81::
do
do
registers[40] = 12945 + registers[40]
end

end
::p82::
do
do
registers[40] = registers[40] + -12617
end

end
::p83::
do
do
registers[33][168] = (registers[40])
end

end
::p84::
do
do
registers[39][38] = 5
end

end
::p85::
do
do
for f = 32, 41, 1 do
    (registers)[f] = nil
end
end

end
goto p6
::p87::
tick(87)
do
do
(registers)[15] = registers[2]
end

end
::p88::
do
do
registers[16] = (90)
end

end
::p89::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p90::
do
do
registers[14] = new_frame(3)
end

end
::p91::
do
do
(registers)[15] = registers[1] + registers[5]
end

end
::p92::
do
do
(registers)[16] = registers[2] + registers[4]
end

end
::p93::
do
do
registers[17] = (registers[5] * 2)
end

end
::p94::
do
do
registers[16] = (registers[16] - registers[17])
end

end
::p95::
do
do
registers[17] = (270)
end

end
goto p177
::p109::
tick(109)
do
do
registers[19] = (registers[19]["pi"])
end

end
::p110::
do
do
(registers)[18] = registers[18] * registers[19]
end

end
::p111::
do
do
registers[18] = (registers[18] * 2)
end

end
::p112::
do
do
(registers)[17] = registers[17] + registers[18]
end

end
::p113::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p114::
do
do
a = (registers)
end

end
::p115::
do
do
z = (16)
q = (registers)
end

end
::p116::
do
do
m = 16
end

end
::p117::
do
do
q = q[m]
m = 1
end

end
::p118::
do
do
q = (q + m);
(a)[z] = (q)
end

end
::p119::
do
do
registers[16] = registers[16] / 2
end

end
::p120::
do
do
(registers)[17] = upvalues[0][163]
end

end
::p121::
do
do
(registers)[18] = upvalues[0][30]
end

end
::p122::
do
do
top = 18;
(registers)[top] = registers[top]()
end

end
::p123::
do
do
registers[18] = (registers[18] * 25)
end

end
::p124::
do
do
registers[18] = (registers[18] * 0.2)
end

end
goto p72
::p133::
do
do
registers[18] = (registers[5] * 2)
end

end
::p134::
do
do
registers[18] = (registers[3] - registers[18])
end

end
::p135::
do
do
(registers)[19] = registers[5]
end

end
goto p21
::p137::
tick(137)
do
do
(registers)[23] = registers[8]
end

end
::p138::
do
do
(registers)[24] = registers[9]
end

end
::p139::
do
do
a = (16)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p6
::p151::
tick(151)
do
do
(registers)[16] = environment["draw_animated_gradient"]
end

end
::p152::
do
do
registers[17] = (registers[15][1])
end

end
::p153::
do
do
registers[18] = (registers[15][2])
end

end
::p154::
do
do
registers[19] = (registers[15][3])
end

end
::p155::
do
do
registers[20] = (registers[15][4])
end

end
::p156::
do
do
registers[21] = (25)
end

end
::p157::
do
do
registers[22] = (registers[10]["col1_start"])
end

end
::p158::
do
do
registers[23] = (registers[10]["col1_end"])
end

end
::p159::
do
do
registers[24] = (registers[10]["col2_start"])
end

end
goto p16
::p161::
tick(161)
do
do
registers[20] = (registers[10]["col2_start"])
end

end
::p162::
do
do
registers[21] = (registers[10]["col2_end"])
end

end
::p163::
do
do
(registers)[22] = registers[17]
end

end
goto p252
::p165::
do
do
registers[16] = (registers[10]["use_gradient"])
end

end
::p166::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p354 end
goto p206
::p168::
do
do
registers[16] = (registers[10]["use_gradient"])
end

end
::p169::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p287 end
goto p151
::p173::
tick(173)
do
do
(registers)[10] = registers[11]
end

end
::p174::
do
do
registers[11] = new_frame(4)
end

end
::p175::
do
do
registers[12] = new_frame(3)
end

end
goto p198
::p177::
do
do
a = (14)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p178::
do
do
registers[15] = new_frame(3)
end

end
::p179::
do
do
(registers)[16] = registers[1] + registers[3]
end

end
::p180::
do
do
registers[16] = (registers[16] - registers[5])
end

end
goto p280
::p182::
do
do
registers[20] = (registers[20]["pi"])
end

end
::p183::
do
do
(registers)[19] = registers[19] * registers[20]
end

end
::p184::
do
do
registers[19] = (registers[19] * 2)
end

end
::p185::
do
do
(registers)[18] = registers[18] + registers[19]
end

end
goto p236
::p188::
tick(188)
do
do
registers[30] = (registers[15][3])
end

end
::p189::
do
do
registers[31] = (0.25)
end

end
::p190::
do
do
a = (22)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p65
::p198::
do
do
(registers)[13] = registers[1] + registers[5]
end

end
::p199::
do
do
(registers)[14] = registers[2]
end

end
::p200::
do
do
registers[15] = (180)
end

end
::p201::
do
do
a = (12)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p202::
do
do
registers[13] = new_frame(3)
end

end
::p203::
do
do
(registers)[14] = registers[1] + registers[3]
end

end
::p204::
do
do
registers[14] = (registers[14] - registers[5])
end

end
goto p87
::p206::
do
do
(registers)[16] = upvalues[0][163]
end

end
::p207::
do
do
(registers)[17] = upvalues[0][30]
end

end
::p208::
do
do
top = 17;
(registers)[top] = registers[top]()
end

end
::p209::
do
do
registers[17] = (registers[17] * 25)
end

end
::p210::
do
do
registers[17] = (registers[17] * 0.2)
end

end
::p211::
do
do
registers[17] = (registers[17] * 0.5)
end

end
::p212::
do
do
registers[18] = (registers[15][3])
end

end
::p213::
do
do
(registers)[19] = environment["math"]
end

end
goto p109
::p222::
do
do
a = (20);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p223::
do
do
registers[20] = registers[20] + 1
end

end
::p224::
do
do
registers[20] = registers[20] / 2
end

end
goto p272
::p234::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p173 end
goto p351
::p236::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p237::
do
do
registers[17] = registers[17] + 1
end

end
::p238::
do
do
registers[17] = registers[17] / 2
end

end
::p239::
do
do
(registers)[18] = environment["lerp_color"]
end

end
goto p332
::p243::
tick(243)
do
do
registers[21] = (registers[4] - registers[21])
end

end
::p244::
do
do
a = (17)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p245::
do
do
a = (12)
z = 0
q = registers[a]
for f = 1, 5, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p246::
do
do
a = (registers)
end

end
::p247::
do
do
z = (13)
q = (environment)
end

end
::p248::
do
do
m = "next"
q = (q[m])
a[z] = q
end

end
::p249::
do
do
(registers)[14] = registers[11]
end

end
::p250::
do
do
(registers)[15] = nil
end

end
goto p58
::p252::
do
do
a = 19
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p253::
do
do
(registers)[20] = upvalues[0][163]
end

end
::p254::
do
do
(registers)[21] = environment["math"]
end

end
goto p46
::p272::
do
do
(registers)[21] = environment["lerp_color"]
end

end
::p273::
do
do
(registers)[22] = registers[18]
end

end
::p274::
do
do
(registers)[23] = registers[19]
end

end
goto p8
::p276::
do
do
registers[27] = (registers[21]["b"])
end

end
::p277::
do
do
registers[28] = (registers[21]["a"])
end

end
::p278::
do
do
(registers)[29] = registers[5]
end

end
goto p188
::p280::
do
do
(registers)[17] = registers[2] + registers[4]
end

end
::p281::
do
do
registers[18] = (registers[5] * 2)
end

end
::p282::
do
do
registers[17] = (registers[17] - registers[18])
end

end
::p283::
do
do
registers[18] = (0)
end

end
::p284::
do
do
a = (15)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p285::
do
do
a = (11)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p319
::p287::
do
do
(registers)[16] = upvalues[0][128]
end

end
::p288::
do
do
registers[17] = (registers[15][1])
end

end
::p289::
do
do
registers[18] = (registers[15][2])
end

end
::p290::
do
do
registers[19] = (registers[15][3])
end

end
::p291::
do
do
registers[20] = (registers[15][4])
end

end
::p292::
do
do
(registers)[21] = registers[6]
end

end
::p293::
do
do
(registers)[22] = registers[7]
end

end
goto p137
::p307::
do
do
registers[20] = (registers[4] - registers[20])
end

end
::p308::
do
do
a = (16)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p309::
do
do
registers[17] = new_frame(4)
end

end
::p310::
do
do
a = (registers)
z = 18
end

end
::p311::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p312::
do
do
m = registers
x = 3
end

end
::p313::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p314::
do
do
registers[18] = (registers[18] - registers[5])
end

end
::p315::
do
do
(registers)[19] = registers[2]
end

end
::p316::
do
do
(registers)[20] = registers[5]
end

end
::p317::
do
do
registers[21] = (registers[5] * 2)
end

end
goto p243
::p319::
do
do
registers[12] = new_frame(5)
end

end
::p320::
do
do
registers[13] = new_frame(4)
end

end
::p321::
do
do
(registers)[14] = registers[1] + registers[5]
end

end
::p322::
do
do
(registers)[15] = registers[2]
end

end
::p323::
do
do
registers[16] = (registers[5] * 2)
end

end
::p324::
do
do
registers[16] = (registers[3] - registers[16])
end

end
::p325::
do
do
registers[17] = (registers[5] * 2)
end

end
::p326::
do
do
registers[17] = (registers[4] - registers[17])
end

end
::p327::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p328::
do
do
registers[14] = new_frame(4)
end

end
::p329::
do
do
(registers)[15] = registers[1] + registers[5]
end

end
goto p32
::p332::
do
do
registers[19] = (registers[10]["col1_start"])
end

end
::p333::
do
do
registers[20] = (registers[10]["col1_end"])
end

end
::p334::
do
do
(registers)[21] = registers[16]
end

end
::p335::
do
do
a = 18
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p336::
do
do
(registers)[19] = environment["lerp_color"]
end

end
goto p161
::p338::
tick(338)
do
do
(registers)[19] = registers[6]
end

end
::p339::
do
do
a = (registers)
z = 20
end

end
::p340::
do
do
q = registers
m = 7
q = (q[m])
end

end
::p341::
do
do
(a)[z] = q
end

end
::p342::
do
do
(registers)[21] = registers[8]
end

end
::p343::
do
do
(registers)[22] = registers[9]
end

end
goto p41
::p351::
do
do
registers[11] = {
}
end

end
::p352::
do
do
registers[11]["use_gradient"] = false
end

end
goto p173
::p354::
do
do
(registers)[16] = upvalues[0][130]
end

end
::p355::
do
do
registers[17] = (registers[15][1])
end

end
::p356::
do
do
registers[18] = (registers[15][2])
end

end
goto p338
::p367::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p368::
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
