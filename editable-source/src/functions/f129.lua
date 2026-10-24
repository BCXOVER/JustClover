
-- Function f129; 309 recovered instruction blocks.
F.f129=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f129",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f129 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p43
::p3::
tick(3)
do
do
registers[19] = ("%.1f")
end

end
::p4::
do
do
(registers)[20] = registers[12]
end

end
::p5::
do
do
a = 18
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p6::
do
do
registers[19] = ("K/D")
end

end
goto p78
::p8::
tick(8)
do
do
a = (42);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p9::
do
do
(registers)[42] = registers[22] + registers[42]
end

end
::p10::
do
do
registers[43] = (registers[36][1])
end

end
::p11::
do
do
registers[44] = (registers[36][2])
end

end
::p12::
do
do
registers[45] = (registers[36][3])
end

end
::p13::
do
do
registers[46] = (registers[36][4])
end

end
::p14::
do
do
(registers)[47] = registers[37]
end

end
::p15::
do
do
registers[48] = (0)
end

end
::p16::
do
do
registers[49] = (registers[35]["text"])
end

end
goto p207
::p20::
tick(20)
do
do
(registers)[34] = registers[27]
end

end
::p21::
do
do
registers[35] = (0)
end

end
::p22::
do
do
registers[36] = (0)
end

end
::p23::
do
do
registers[37] = (0)
end

end
::p24::
do
do
registers[38] = (0)
end

end
::p25::
do
do
registers[39] = (0)
end

end
::p26::
do
do
registers[40] = (0)
end

end
goto p174
::p28::
tick(28)
do
do
(registers)[39] = registers[40]
end

end
::p29::
do
do
(registers)[40] = upvalues[2][131]
end

end
::p30::
do
do
(registers)[41] = registers[30]
end

end
goto p471
::p33::
tick(33)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p34::
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
::p35::
tick(35)
do
do
a = (15)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p36::
do
do
a = (D.f130)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[16] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p37::
do
do
registers[17] = (upvalues[5])
end

end
::p38::
do
do
(registers)[18] = registers[1]
end

end
::p39::
do
do
registers[19] = ("FPS")
end

end
goto p498
::p41::
tick(41)
do
do
registers[28] = (0)
end

end
goto p487
::p43::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p44::
do
do
registers[5] = (upvalues[0])
end

end
::p45::
do
do
registers[6] = (upvalues[1])
end

end
::p46::
do
do
a = 6
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
::p47::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p48::
do
do
a = (D.f131)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[6] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p49::
do
do
registers[7] = (upvalues[3])
end

end
::p50::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p51::
do
do
(registers)[8] = upvalues[2][151]
end

end
goto p385
::p53::
tick(53)
do
do
(registers)[30] = upvalues[2][128]
end

end
::p54::
do
do
(registers)[31] = registers[21] + registers[24]
end

end
::p55::
do
do
(registers)[32] = registers[26]
end

end
::p56::
do
do
(registers)[33] = registers[25]
end

end
goto p431
::p65::
tick(65)
do
do
registers[17] = (upvalues[5])
end

end
::p66::
do
do
(registers)[18] = registers[1]
end

end
::p67::
do
do
registers[19] = ("K/D ratio")
end

end
::p68::
do
do
a = 17
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p69::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p562
::p71::
tick(71)
do
do
a = 27
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
::p72::
do
do
a = 25
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p73::
do
do
(registers)[24] = registers[25]
end

end
::p74::
do
do
(registers)[25] = upvalues[2][151]
end

end
::p75::
do
do
registers[26] = (0)
end

end
::p76::
do
do
registers[27] = (registers[24] * 2)
end

end
goto p293
::p78::
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p331
::p88::
tick(88)
do
do
(registers)[22] = registers[10]
end

end
::p89::
branch_taken=false
do
do
if registers[22] then
    branch_taken=true
end
end

end
if branch_taken then goto p187 end
goto p200
::p93::
tick(93)
do
do
registers[24] = ("Top Center")
end

end
goto p446
::p96::
tick(96)
do
do
registers[16]["gap"] = 0
end

end
::p97::
do
do
registers[17] = {
}
end

end
::p98::
do
do
registers[17]["text"] = "sense"
end

end
goto p190
::p100::
tick(100)
do
do
a = 38
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
::p101::
do
do
(registers)[40] = registers[38]
end

end
::p102::
branch_taken=false
do
do
if registers[40] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p229
::p113::
tick(113)
do
do
(registers)[35] = registers[15][registers[34]]
end

end
::p114::
do
do
registers[36] = (registers[35]["color"])
end

end
::p115::
do
do
registers[37] = (registers[35]["flags"])
end

end
::p116::
branch_taken=false
do
do
if registers[37] then
    branch_taken=true
end
end

end
if branch_taken then goto p196 end
goto p163
::p119::
tick(119)
do
do
registers[21] = (1)
end

end
::p120::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 19
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p124 end
::p121::
tick(121)
do
do
registers[19] = (255)
end

end
::p122::
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
goto p512
::p124::
tick(124)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[19 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p202 end
goto p253
::p134::
tick(134)
do
do
(registers)[40] = registers[18]
end

end
goto p28
::p136::
tick(136)
do
do
registers[21] = (upvalues[6])
end

end
::p137::
do
do
(registers)[22] = registers[19]
end

end
::p138::
do
do
(registers)[23] = registers[20]
end

end
::p139::
do
do
(registers)[24] = registers[2]
end

end
::p140::
branch_taken=false
do
do
if registers[24] then
    branch_taken=true
end
end

end
if branch_taken then goto p446 end
goto p93
::p142::
tick(142)
do
do
registers[30] = registers[30] + 0.5
end

end
::p143::
do
do
a = (29);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p144::
do
do
registers[30] = (0)
end

end
::p145::
do
do
registers[31] = (255)
end

end
goto p417
::p147::
tick(147)
do
do
(registers)[30] = registers[40] + registers[41]
end

end
goto p314
::p149::
tick(149)
do
do
registers[26] = (registers[23]["text"])
end

end
::p150::
do
do
a = 24
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
::p151::
do
do
(registers)[26] = registers[24]
end

end
::p152::
branch_taken=false
do
do
if registers[26] then
    branch_taken=true
end
end

end
if branch_taken then goto p232 end
goto p316
::p154::
tick(154)
do
do
(registers)[38] = registers[40]
end

end
::p155::
do
do
(registers)[40] = registers[39]
end

end
::p156::
branch_taken=false
do
do
if registers[40] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p134
::p163::
do
do
(registers)[37] = nil
end

end
goto p196
::p174::
do
do
registers[41] = (0)
end

end
::p175::
do
do
(registers)[42] = registers[28]
end

end
::p176::
do
do
registers[43] = (true)
end

end
::p177::
do
do
a = (30)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p178::
branch_taken=false
do
do
if not (0 < registers[25]) then
    branch_taken=true
end
end

end
if branch_taken then goto p546 end
goto p53
::p181::
tick(181)
do
do
(registers)[17] = registers[26] + registers[27]
end

end
::p182::
do
do
(registers)[26] = upvalues[2][151]
end

end
::p183::
do
do
(registers)[27] = registers[18]
end

end
::p184::
do
do
(registers)[28] = registers[25]
end

end
::p185::
branch_taken=false
do
do
if registers[28] then
    branch_taken=true
end
end

end
if branch_taken then goto p487 end
goto p41
::p187::
tick(187)
do
do
(registers)[23] = registers[11]
end

end
::p188::
branch_taken=false
do
do
if registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p286 end
goto p411
::p190::
do
do
registers[17]["color"] = (registers[3])
end

end
::p191::
do
do
(registers)[18] = registers[6]
end

end
::p192::
do
do
registers[19] = (13)
end

end
::p193::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p194::
do
do
registers[17]["gap"] = (registers[18])
end

end
goto p35
::p196::
do
do
(registers)[38] = upvalues[2][136]
end

end
::p197::
do
do
(registers)[39] = registers[37]
end

end
::p198::
do
do
registers[40] = (registers[35]["text"])
end

end
goto p100
::p200::
do
do
registers[22] = (0)
end

end
goto p187
::p202::
do
do
(registers)[23] = registers[15][registers[22]]
end

end
::p203::
do
do
(registers)[24] = upvalues[2][136]
end

end
::p204::
do
do
registers[25] = (registers[23]["flags"])
end

end
::p205::
branch_taken=false
do
do
if registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p149 end
goto p569
::p207::
do
do
a = (40)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p208::
do
do
(registers)[40] = registers[30] + registers[38]
end

end
::p209::
do
do
registers[41] = (registers[35]["gap"])
end

end
::p210::
branch_taken=false
do
do
if registers[41] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p227
::p212::
tick(212)
do
do
registers[15] = (217)
end

end
::p213::
do
do
registers[16] = (217)
end

end
::p214::
do
do
registers[17] = (217)
end

end
::p215::
do
do
registers[18] = (238)
end

end
goto p249
::p227::
do
do
registers[41] = (0)
end

end
goto p147
::p229::
do
do
registers[40] = (0)
end

end
goto p154
::p232::
tick(232)
do
do
(registers)[26] = registers[17] + registers[26]
end

end
::p233::
do
do
registers[27] = (registers[23]["gap"])
end

end
::p234::
branch_taken=false
do
do
if registers[27] then
    branch_taken=true
end
end

end
if branch_taken then goto p181 end
goto p560
::p236::
tick(236)
do
do
registers[17] = (#registers[15])
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
registers[18] = {
}
end

end
::p239::
do
do
(registers)[19] = environment["string"]
end

end
::p240::
do
do
registers[19] = (registers[19]["format"])
end

end
::p241::
do
do
registers[20] = ("%02d:%02d:%02d")
end

end
::p242::
do
do
(registers)[21] = registers[9]
end

end
goto p491
::p245::
tick(245)
do
do
(registers)[31] = registers[22]
end

end
::p246::
do
do
a = (30)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p247::
do
do
(registers)[30] = upvalues[2][129]
end

end
goto p407
::p249::
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
::p250::
do
do
(registers)[15] = registers[3]
end

end
::p251::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p512 end
goto p322
::p253::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p254::
do
do
(registers)[19] = registers[6]
end

end
::p255::
do
do
registers[20] = (34)
end

end
goto p308
::p257::
tick(257)
do
do
a = 17
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p258::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p484 end
goto p236
::p279::
tick(279)
do
do
a = 9
z = (1)
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
::p280::
do
do
registers[12] = (upvalues[4])
end

end
::p281::
do
do
(registers)[13] = upvalues[2][32]
end

end
::p282::
do
do
a = 13
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
::p283::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p284::
do
do
registers[13] = new_frame(4)
end

end
goto p345
::p286::
tick(286)
do
do
a = 19
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p287::
do
do
registers[18]["text"] = (registers[19])
end

end
::p288::
do
do
registers[18]["color"] = (registers[13])
end

end
::p289::
do
do
registers[18]["gap"] = 0
end

end
::p290::
do
do
(registers[15])[registers[17]] = registers[18]
end

end
goto p493
::p293::
do
do
registers[27] = (registers[19] - registers[27])
end

end
::p294::
do
do
a = 25
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p295::
do
do
(registers)[26] = registers[22] + registers[23]
end

end
::p296::
do
do
(registers)[27] = upvalues[2][151]
end

end
::p303::
do
do
registers[28] = (1)
end

end
::p304::
do
do
registers[29] = (registers[23] * 2)
end

end
::p305::
do
do
registers[29] = (registers[20] - registers[29])
end

end
::p306::
do
do
a = 27
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p555
::p308::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p309::
do
do
(registers)[19] = registers[17] + registers[19]
end

end
::p310::
do
do
(registers)[20] = registers[6]
end

end
::p311::
do
do
registers[21] = (20)
end

end
::p312::
do
do
a = (20);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p136
::p314::
tick(314)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[31 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p33
::p316::
do
do
registers[26] = (0)
end

end
goto p232
::p320::
tick(320)
do
do
registers[30] = (110)
end

end
goto p142
::p322::
do
do
registers[15] = new_frame(4)
end

end
::p323::
do
do
registers[16] = (186)
end

end
::p324::
do
do
registers[17] = (255)
end

end
::p325::
do
do
registers[18] = (15)
end

end
goto p121
::p328::
tick(328)
do
do
(registers)[38] = registers[28]
end

end
::p329::
do
do
a = (30)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p546
::p331::
tick(331)
do
do
registers[17] = (upvalues[5])
end

end
::p332::
do
do
(registers)[18] = registers[1]
end

end
::p333::
do
do
registers[19] = ("Clock")
end

end
goto p257
::p345::
do
do
registers[14] = (242)
end

end
::p346::
do
do
registers[15] = (242)
end

end
::p347::
do
do
registers[16] = (242)
end

end
::p348::
do
do
registers[17] = (248)
end

end
::p349::
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
::p350::
do
do
registers[14] = new_frame(4)
end

end
goto p212
::p366::
tick(366)
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p65
::p368::
tick(368)
do
do
(registers)[30] = upvalues[2][154]
end

end
::p369::
do
do
registers[31] = (registers[19] - registers[17])
end

end
::p370::
do
do
registers[31] = (registers[31] * 0.5)
end

end
::p371::
do
do
registers[31] = registers[31] + 0.5
end

end
::p372::
do
do
a = (30);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p373::
do
do
(registers)[30] = registers[21] + registers[30]
end

end
::p374::
do
do
registers[31] = (1)
end

end
::p375::
do
do
registers[32] = (#registers[15])
end

end
::p376::
do
do
registers[33] = (1)
end

end
::p377::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 31
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p314 end
goto p187
::p379::
tick(379)
do
do
registers[17] = (upvalues[5])
end

end
::p380::
do
do
(registers)[18] = registers[1]
end

end
::p381::
do
do
registers[19] = ("Ping")
end

end
::p382::
do
do
a = 17
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p383::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p551
::p385::
do
do
registers[9] = (0)
end

end
::p386::
do
do
(registers)[10] = upvalues[2][154]
end

end
::p387::
do
do
(registers)[11] = upvalues[2][67]
end

end
::p388::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p389::
do
do
registers[11] = (registers[11] * 1000)
end

end
::p390::
do
do
registers[11] = registers[11] + 0.5
end

end
::p391::
do
do
a = 10
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
::p392::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p393::
do
do
(registers)[9] = upvalues[2][96]
end

end
goto p279
::p403::
tick(403)
do
do
(registers)[17] = registers[16]
end

end
::p404::
do
do
(registers)[18] = environment["string"]
end

end
::p405::
do
do
registers[18] = (registers[18]["format"])
end

end
goto p3
::p407::
do
do
(registers)[31] = registers[21]
end

end
::p408::
do
do
(registers)[32] = registers[26]
end

end
::p409::
do
do
(registers)[33] = registers[24]
end

end
goto p20
::p411::
do
do
registers[23] = (0)
end

end
goto p286
::p415::
tick(415)
do
do
registers[21] = (0)
end

end
goto p88
::p417::
do
do
a = 28
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p418::
do
do
a = (D.f132)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[29] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p419::
do
do
(registers)[30] = registers[29]
end

end
goto p245
::p427::
tick(427)
do
do
registers[41] = (0)
end

end
::p428::
do
do
registers[42] = (0)
end

end
::p429::
do
do
registers[43] = (true)
end

end
goto p535
::p431::
do
do
(registers)[34] = registers[27]
end

end
::p432::
do
do
registers[35] = (0)
end

end
::p433::
do
do
registers[36] = (0)
end

end
::p434::
do
do
registers[37] = (0)
end

end
goto p328
::p436::
tick(436)
do
do
(registers)[26] = registers[24]
end

end
::p437::
do
do
(registers)[27] = upvalues[2][154]
end

end
::p438::
do
do
registers[28] = (registers[19] * 0.5)
end

end
goto p71
::p446::
do
do
(registers)[25] = registers[5]
end

end
::p447::
do
do
a = 21
z = (5)
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
::p448::
do
do
(registers)[23] = upvalues[2][151]
end

end
::p449::
do
do
registers[24] = (1)
end

end
::p450::
do
do
(registers)[25] = registers[6]
end

end
::p451::
do
do
registers[26] = (1)
end

end
::p452::
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
::p453::
do
do
a = 23
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p454::
do
do
(registers)[24] = upvalues[2][151]
end

end
goto p564
::p463::
tick(463)
do
do
(registers)[26] = upvalues[2][154]
end

end
::p464::
do
do
registers[27] = (registers[19] * 0.08)
end

end
::p465::
do
do
registers[27] = registers[27] + 0.5
end

end
::p466::
do
do
a = 26
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
::p467::
do
do
a = 24
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p468::
do
do
(registers)[25] = upvalues[2][162]
end

end
goto p436
::p471::
do
do
(registers)[42] = upvalues[2][154]
end

end
::p472::
do
do
registers[43] = (registers[20] - registers[39])
end

end
::p473::
do
do
registers[43] = (registers[43] * 0.5)
end

end
::p474::
do
do
registers[43] = registers[43] + 0.5
end

end
goto p8
::p484::
do
do
registers[17] = (#registers[15])
end

end
::p485::
branch_taken=false
do
do
if not (0 < registers[17]) then
    branch_taken=true
end
end

end
if branch_taken then goto p493 end
goto p529
::p487::
do
do
a = 26
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p488::
do
do
(registers)[18] = registers[26]
end

end
goto p124
::p491::
branch_taken=false
do
do
if registers[21] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p415
::p493::
tick(493)
do
do
registers[17] = (0)
end

end
::p494::
do
do
registers[18] = (0)
end

end
::p495::
do
do
registers[19] = (1)
end

end
::p496::
do
do
registers[20] = (#registers[15])
end

end
goto p119
::p498::
do
do
a = 17
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p499::
branch_taken=false
do
do
if not registers[17] then
    branch_taken=true
end
end

end
if branch_taken then goto p379 end
goto p541
::p501::
tick(501)
do
do
(registers)[33] = registers[24]
end

end
::p502::
do
do
(registers)[34] = registers[27]
end

end
::p503::
do
do
registers[35] = (0)
end

end
::p504::
do
do
registers[36] = (0)
end

end
::p505::
do
do
registers[37] = (0)
end

end
goto p525
::p512::
do
do
(registers)[3] = registers[15]
end

end
::p513::
do
do
registers[15] = new_frame(2)
end

end
::p514::
do
do
registers[16] = {
}
end

end
::p515::
do
do
registers[16]["text"] = "game"
end

end
::p516::
do
do
registers[16]["color"] = (registers[13])
end

end
goto p96
::p525::
do
do
(registers)[38] = registers[28]
end

end
::p526::
do
do
registers[39] = (0)
end

end
::p527::
do
do
registers[40] = (0)
end

end
goto p427
::p529::
do
do
registers[17] = (#registers[15])
end

end
::p530::
do
do
(registers)[17] = registers[15][registers[17]]
end

end
::p531::
do
do
registers[17]["gap"] = 0
end

end
goto p493
::p535::
do
do
a = (30)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p536::
do
do
(registers)[30] = registers[29]
end

end
::p537::
do
do
(registers)[31] = registers[22] + registers[20]
end

end
::p538::
do
do
registers[31] = (registers[31] - registers[23])
end

end
::p539::
do
do
a = (30)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p368
::p541::
do
do
(registers)[17] = registers[16]
end

end
::p542::
do
do
(registers)[18] = registers[7]
end

end
::p543::
do
do
registers[19] = ("FPS")
end

end
::p544::
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p379
::p546::
do
do
(registers)[30] = upvalues[2][129]
end

end
::p547::
do
do
(registers)[31] = registers[21] + registers[24]
end

end
::p548::
do
do
(registers)[31] = registers[31] + registers[25]
end

end
::p549::
do
do
(registers)[32] = registers[26]
end

end
goto p501
::p551::
do
do
(registers)[17] = registers[16]
end

end
::p552::
do
do
(registers)[18] = registers[8]
end

end
::p553::
do
do
registers[19] = ("PING")
end

end
goto p366
::p555::
do
do
(registers)[28] = upvalues[7]["clamp"]
end

end
::p556::
do
do
(registers)[29] = upvalues[2][154]
end

end
::p557::
do
do
(registers)[30] = registers[4]
end

end
::p558::
branch_taken=false
do
do
if registers[30] then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p320
::p560::
do
do
registers[27] = (0)
end

end
goto p181
::p562::
branch_taken=false
do
do
if registers[12] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p403
::p564::
do
do
(registers)[25] = registers[6]
end

end
::p565::
do
do
registers[26] = (8)
end

end
::p566::
do
do
a = (25);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p463
::p569::
do
do
(registers)[25] = nil
end

end
goto p149
end
end
