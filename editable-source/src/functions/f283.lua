
-- Function f283; 133 recovered instruction blocks.
F.f283=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f283",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f283 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p165
::p2::
tick(2)
branch_taken=false
do
do
if registers[14] ~= "bomb_planting" then
    branch_taken=true
end
end

end
if branch_taken then goto p149 end
goto p145
::p4::
tick(4)
do
do
(registers)[19] = upvalues[1][136]
end

end
::p5::
do
do
(registers)[20] = registers[7]
end

end
::p6::
do
do
(registers)[21] = registers[18]
end

end
::p7::
do
do
a = 19
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
::p8::
do
do
(registers)[21] = upvalues[1][154]
end

end
::p9::
do
do
(registers)[22] = registers[20]
end

end
::p10::
branch_taken=false
do
do
if registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p68
::p13::
tick(13)
do
do
registers[14] = registers[14] + 0.5
end

end
::p14::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p15::
do
do
registers[13] = (registers[2] - registers[13])
end

end
::p16::
do
do
registers[14] = (registers[1]["kind"])
end

end
goto p84
::p19::
tick(19)
do
do
(registers)[24] = upvalues[0]["get_text_offset"]
end

end
::p20::
do
do
(registers)[25] = registers[14]
end

end
::p21::
do
do
(registers)[26] = registers[23]
end

end
::p22::
do
do
(registers)[27] = registers[6]
end

end
goto p175
::p33::
tick(33)
branch_taken=false
do
do
if registers[10] ~= false then

else
    branch_taken=true
end
end

end
if branch_taken then goto p288 end
goto p206
::p36::
tick(36)
do
do
registers[18] = ("")
end

end
goto p4
::p38::
tick(38)
do
do
registers[18] = (registers[5] - registers[15])
end

end
::p39::
do
do
registers[18] = (registers[18] * 0.5)
end

end
::p40::
do
do
registers[18] = registers[18] + 0.5
end

end
goto p195
::p42::
tick(42)
do
do
(registers)[29] = upvalues[1][131]
end

end
::p43::
do
do
(registers)[30] = registers[24]
end

end
::p44::
do
do
(registers)[31] = registers[21]
end

end
goto p264
::p47::
tick(47)
do
do
(registers)[13] = upvalues[1][154]
end

end
::p48::
do
do
(registers)[14] = upvalues[0]["px"]
end

end
::p49::
do
do
registers[15] = (26)
end

end
::p50::
do
do
(registers)[16] = registers[6]
end

end
::p51::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p52::
do
do
(registers)[14] = registers[14] * registers[12]
end

end
goto p13
::p54::
tick(54)
do
do
(registers)[28] = upvalues[2]["clamp"]
end

end
::p55::
do
do
registers[29] = (registers[1]["a"])
end

end
::p56::
branch_taken=false
do
do
if registers[29] then
    branch_taken=true
end
end

end
if branch_taken then goto p248 end
goto p125
::p59::
tick(59)
branch_taken=false
do
do
if registers[14] ~= "bomb" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p218
::p62::
tick(62)
branch_taken=false
do
do
if not registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p225
::p66::
tick(66)
branch_taken=false
do
do
if registers[22] ~= false then

else
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p190
::p68::
do
do
registers[22] = (8)
end

end
goto p127
::p70::
tick(70)
branch_taken=false
do
do
if registers[14] ~= "fatal" then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p121
::p72::
tick(72)
branch_taken=false
do
do
if registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p36
::p75::
tick(75)
branch_taken=false
do
do
if registers[14] ~= "hc" then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p239
::p84::
do
do
(registers)[15] = upvalues[0]["get_icon_size"]
end

end
::p85::
do
do
(registers)[16] = registers[14]
end

end
::p86::
do
do
(registers)[17] = registers[6]
end

end
goto p157
::p97::
tick(97)
do
do
(registers)[12] = upvalues[0]["get_animation_slide"]
end

end
::p98::
do
do
registers[13] = (registers[1]["key"])
end

end
::p99::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p47
::p103::
tick(103)
do
do
(registers)[36] = registers[26]
end

end
::p104::
do
do
(registers)[37] = registers[27]
end

end
::p105::
do
do
(registers)[38] = registers[28]
end

end
::p106::
do
do
registers[39] = ("f")
end

end
goto p221
::p115::
tick(115)
do
do
registers[27] = (210)
end

end
::p116::
do
do
registers[26] = (220)
end

end
::p117::
do
do
registers[25] = (230)
end

end
goto p33
::p119::
tick(119)
do
do
registers[25] = (255)
end

end
goto p312
::p121::
do
do
registers[27] = (55)
end

end
::p122::
do
do
registers[26] = (45)
end

end
::p123::
do
do
registers[25] = (220)
end

end
goto p33
::p125::
do
do
registers[29] = (255)
end

end
goto p248
::p127::
do
do
registers[22] = (registers[5] - registers[22])
end

end
::p128::
do
do
registers[22] = (registers[22] * 0.5)
end

end
::p129::
do
do
registers[22] = registers[22] + 0.5
end

end
goto p272
::p132::
tick(132)
do
do
registers[27] = (255)
end

end
goto p54
::p134::
tick(134)
do
do
registers[26] = (255)
end

end
::p138::
tick(138)
do
do
registers[27] = (registers[1]["b"])
end

end
::p139::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p132
::p141::
tick(141)
do
do
(registers)[33] = registers[15]
end

end
::p142::
do
do
(registers)[34] = registers[15]
end

end
::p143::
do
do
(registers)[35] = registers[25]
end

end
goto p103
::p145::
tick(145)
do
do
registers[27] = (115)
end

end
::p146::
do
do
registers[26] = (105)
end

end
::p147::
do
do
registers[25] = (225)
end

end
goto p33
::p149::
branch_taken=false
do
do
if registers[14] ~= "bomb_hp" then
    branch_taken=true
end
end

end
if branch_taken then goto p75 end
goto p115
::p157::
do
do
a = 15
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p158::
do
do
(registers)[16] = upvalues[0]["get_icon_offset"]
end

end
::p159::
do
do
(registers)[17] = registers[14]
end

end
::p160::
do
do
(registers)[18] = registers[6]
end

end
::p161::
do
do
a = 16
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p162::
do
do
(registers)[16] = registers[13] + registers[16]
end

end
::p163::
do
do
(registers)[17] = upvalues[1][154]
end

end
goto p38
::p165::
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
::p166::
do
do
(registers)[11] = registers[8]
end

end
::p167::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p203 end
goto p186
::p175::
do
do
a = 24
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p176::
do
do
(registers)[24] = registers[13] + registers[24]
end

end
::p177::
do
do
registers[25] = (registers[1]["r"])
end

end
goto p269
::p186::
do
do
(registers)[11] = upvalues[0]["get_animation_alpha"]
end

end
::p187::
do
do
registers[12] = (registers[1]["key"])
end

end
::p188::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p203
::p190::
do
do
(registers)[29] = upvalues[1][139]
end

end
::p191::
do
do
(registers)[30] = registers[22]
end

end
::p192::
do
do
(registers)[31] = registers[16]
end

end
::p193::
do
do
(registers)[32] = registers[17]
end

end
goto p141
::p195::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p196::
do
do
(registers)[17] = registers[3] + registers[17]
end

end
::p197::
do
do
registers[18] = (registers[1]["text"])
end

end
goto p72
::p199::
tick(199)
do
do
(registers)[24] = registers[15]
end

end
::p200::
do
do
a = 22
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p201::
do
do
registers[23] = (registers[22] ~= registers[0])
end

end
goto p62
::p203::
do
do
(registers)[12] = registers[9]
end

end
::p204::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p97
::p206::
do
do
(registers)[29] = upvalues[0]["draw_row_background"]
end

end
::p207::
do
do
(registers)[30] = registers[13]
end

end
::p208::
do
do
(registers)[31] = registers[3]
end

end
::p209::
do
do
(registers)[32] = registers[4]
end

end
goto p284
::p218::
branch_taken=false
do
do
if registers[14] ~= "planted_bomb" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p2
::p221::
do
do
a = (29)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p42
::p225::
do
do
(registers)[23] = (registers[22] ~= false)
end

end
goto p19
::p236::
tick(236)
do
do
(registers)[38] = registers[18]
end

end
::p237::
do
do
a = (29)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p238::
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
::p239::
do
do
registers[27] = (220)
end

end
::p240::
do
do
registers[26] = (220)
end

end
::p241::
do
do
registers[25] = (220)
end

end
goto p33
::p248::
do
do
registers[30] = (0)
end

end
::p249::
do
do
registers[31] = (255)
end

end
::p250::
do
do
a = 28
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p70
::p264::
do
do
(registers)[32] = registers[25]
end

end
::p265::
do
do
(registers)[33] = registers[26]
end

end
::p266::
do
do
(registers)[34] = registers[27]
end

end
goto p290
::p269::
branch_taken=false
do
do
if registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p312 end
goto p119
::p272::
do
do
a = (21);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p273::
do
do
(registers)[21] = registers[3] + registers[21]
end

end
::p274::
do
do
(registers)[22] = upvalues[0]["get_texture"]
end

end
::p275::
do
do
(registers)[23] = registers[14]
end

end
goto p199
::p284::
do
do
(registers)[33] = registers[5]
end

end
::p285::
do
do
(registers)[34] = registers[11]
end

end
::p286::
do
do
a = (29)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p288::
branch_taken=false
do
do
if registers[22] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p66
::p290::
do
do
(registers)[35] = registers[28]
end

end
::p291::
do
do
(registers)[36] = registers[7]
end

end
::p292::
do
do
registers[37] = (0)
end

end
goto p236
::p312::
do
do
registers[26] = (registers[1]["g"])
end

end
::p313::
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p138 end
goto p134
end
end
