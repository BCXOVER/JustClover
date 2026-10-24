
-- Function f224; 159 recovered instruction blocks.
F.f224=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f224",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f224 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p104
::p8::
tick(8)
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p9::
do
do
(registers)[4] = upvalues[2][154]
end

end
::p10::
do
do
(registers)[5] = 5 * registers[3]
end

end
goto p172
::p25::
tick(25)
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
    (registers)[11 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p138
::p27::
tick(27)
do
do
a = 9
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
::p28::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p29::
do
do
(registers)[8] = upvalues[2][151]
end

end
::p30::
do
do
registers[9] = (2)
end

end
::p31::
do
do
(registers)[10] = upvalues[2][154]
end

end
::p32::
do
do
(registers)[11] = 3 * registers[3]
end

end
::p33::
do
do
registers[11] = registers[11] + 0.5
end

end
::p34::
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
::p35::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p36::
do
do
(registers)[9] = upvalues[1]["get_gradient_alpha"]
end

end
::p37::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p38::
do
do
registers[10] = (0)
end

end
::p39::
do
do
(registers)[11] = registers[1]
end

end
::p40::
do
do
registers[12] = (1)
end

end
::p41::
do
do
registers[13] = (-1)
end

end
::p51::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 11
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p25 end
::p52::
tick(52)
do
do
registers[33] = (registers[15]["segments"])
end

end
::p53::
do
do
(registers)[33] = registers[33][registers[32]]
end

end
::p54::
do
do
(registers)[34] = upvalues[1]["get_segment_color"]
end

end
::p55::
do
do
registers[35] = (registers[33][2])
end

end
::p56::
do
do
(registers)[36] = registers[19]
end

end
::p57::
do
do
a = 34
z = (3)
q = 5
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
::p58::
do
do
(registers)[38] = upvalues[2][131]
end

end
::p59::
do
do
(registers)[39] = registers[26]
end

end
goto p100
::p61::
tick(61)
do
do
(registers)[21] = registers[17]
end

end
::p62::
do
do
(registers)[22] = registers[18]
end

end
::p63::
do
do
a = 20
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p64::
do
do
(registers)[20] = 255 * registers[20]
end

end
::p65::
do
do
registers[20] = registers[20] + 0.5
end

end
goto p225
::p68::
tick(68)
do
do
registers[29] = (1)
end

end
::p69::
do
do
registers[30] = (registers[15]["segments"])
end

end
::p70::
do
do
registers[30] = (#registers[30])
end

end
::p71::
do
do
registers[31] = (1)
end

end
goto p253
::p79::
tick(79)
do
do
(registers)[2] = upvalues[2][30]
end

end
::p80::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p81::
do
do
(registers)[3] = upvalues[1]["get_dpi_scale"]
end

end
goto p8
::p83::
tick(83)
do
do
(registers)[43] = registers[36]
end

end
::p84::
do
do
(registers)[44] = registers[37]
end

end
::p85::
do
do
registers[45] = ("d")
end

end
::p86::
do
do
registers[46] = (0)
end

end
goto p270
::p96::
tick(96)
do
do
registers[16] = (registers[2] - registers[16])
end

end
::p97::
do
do
(registers)[17] = upvalues[1]["hold_time"]
end

end
::p98::
branch_taken=false
do
do
if not (registers[17] < registers[16]) then
    branch_taken=true
end
end

end
if branch_taken then goto p282 end
goto p124
::p100::
do
do
(registers)[40] = registers[27]
end

end
::p101::
do
do
(registers)[41] = registers[34]
end

end
::p102::
do
do
(registers)[42] = registers[35]
end

end
goto p83
::p104::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p105::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p106::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p196
::p110::
do
do
(registers)[15] = upvalues[1]["items"]
end

end
::p111::
do
do
(registers)[15] = registers[15][registers[14]]
end

end
::p112::
do
do
registers[16] = (registers[15]["time"])
end

end
goto p96
::p124::
do
do
(registers)[17] = environment["table"]
end

end
::p125::
do
do
registers[17] = (registers[17]["remove"])
end

end
::p126::
do
do
(registers)[18] = upvalues[1]["items"]
end

end
::p127::
do
do
(registers)[19] = registers[14]
end

end
::p128::
do
do
a = 17;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p25
::p132::
tick(132)
do
do
registers[29] = registers[29] / 255
end

end
::p133::
do
do
registers[29] = registers[29] + 0.5
end

end
::p134::
do
do
a = (28);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p135::
do
do
(registers)[29] = upvalues[1]["draw_background"]
end

end
::p136::
do
do
(registers)[30] = registers[24]
end

end
goto p234
::p138::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p139::
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
::p140::
do
do
(registers)[1] = upvalues[1]["active"]
end

end
::p141::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p224
::p143::
tick(143)
do
do
a = 38
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p144::
do
do
(registers)[39] = registers[38]
end

end
::p145::
branch_taken=false
do
do
if registers[39] then
    branch_taken=true
end
end

end
if branch_taken then goto p194 end
::p157::
do
do
registers[39] = (0)
end

end
goto p194
::p159::
do
do
(registers)[1] = upvalues[1]["items"]
end

end
::p160::
do
do
registers[1] = (#registers[1])
end

end
::p161::
branch_taken=false
do
do
if registers[1] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p184
::p163::
tick(163)
do
do
a = (24);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p164::
do
do
registers[24] = (registers[4] - registers[24])
end

end
::p165::
do
do
(registers)[25] = registers[23] + registers[6]
end

end
::p166::
do
do
(registers)[25] = registers[10] * registers[25]
end

end
::p167::
do
do
(registers)[25] = registers[5] + registers[25]
end

end
::p168::
do
do
(registers)[26] = registers[24] + registers[7]
end

end
::p169::
do
do
(registers)[27] = upvalues[2][154]
end

end
goto p261
::p172::
do
do
registers[5] = registers[5] + 0.5
end

end
::p173::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p174::
do
do
(registers)[5] = upvalues[2][154]
end

end
::p175::
do
do
(registers)[6] = 5 * registers[3]
end

end
::p176::
do
do
registers[6] = registers[6] + 0.5
end

end
::p177::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p178::
do
do
(registers)[6] = upvalues[2][151]
end

end
::p179::
do
do
registers[7] = (2)
end

end
::p180::
do
do
(registers)[8] = upvalues[2][154]
end

end
::p181::
do
do
(registers)[9] = 4 * registers[3]
end

end
::p182::
do
do
registers[9] = registers[9] + 0.5
end

end
goto p297
::p184::
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
::p185::
tick(185)
do
do
registers[22] = (registers[7] * 2)
end

end
::p186::
do
do
(registers)[22] = registers[20] + registers[22]
end

end
::p187::
do
do
registers[23] = (registers[8] * 2)
end

end
::p188::
do
do
(registers)[23] = registers[21] + registers[23]
end

end
::p189::
do
do
(registers)[24] = upvalues[2][154]
end

end
::p190::
do
do
registers[25] = 1 - registers[18]
end

end
::p191::
do
do
registers[25] = (registers[25] * 12)
end

end
::p192::
do
do
registers[25] = registers[25] + 0.5
end

end
goto p163
::p194::
do
do
(registers)[26] = registers[26] + registers[39]
end

end
goto p200
::p196::
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
::p200::
tick(200)
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
    (registers)[29 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p231
::p224::
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
::p225::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p226::
do
do
(registers)[20] = upvalues[1]["measure_item"]
end

end
::p227::
do
do
(registers)[21] = registers[15]
end

end
::p228::
do
do
registers[22] = ("d")
end

end
::p229::
do
do
a = 20
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
goto p185
::p231::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p232::
do
do
registers[10] = registers[10] + 1
end

end
goto p25
::p234::
do
do
(registers)[31] = registers[25]
end

end
::p235::
do
do
(registers)[32] = registers[22]
end

end
::p236::
do
do
(registers)[33] = registers[23]
end

end
::p237::
do
do
(registers)[34] = registers[28]
end

end
::p238::
do
do
a = (29)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p68
::p253::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 29
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p200 end
::p254::
do
do
registers[63] = (operand_g)
end

end
::p255::
do
do
registers[65] = operand_k
end

end
::p256::
do
do
registers[63][52] = 33
end

end
::p257::
do
do
registers[65][67] = 199
end

end
::p258::
do
do
for f = 58, 65, 1 do
    (registers)[f] = nil
end
end

end
goto p200
::p261::
do
do
registers[28] = (registers[23] - registers[21])
end

end
::p262::
do
do
registers[28] = (registers[28] * 0.5)
end

end
::p263::
do
do
registers[28] = registers[28] + 0.5
end

end
::p264::
do
do
a = (27);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p266::
do
do
(registers)[27] = registers[25] + registers[27]
end

end
::p267::
do
do
(registers)[28] = upvalues[2][154]
end

end
::p268::
do
do
(registers)[29] = registers[9] * registers[19]
end

end
goto p132
::p270::
do
do
registers[47] = (registers[33][1])
end

end
::p271::
do
do
a = (38)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p272::
do
do
(registers)[38] = upvalues[2][136]
end

end
::p273::
do
do
registers[39] = ("d")
end

end
::p274::
do
do
registers[40] = (registers[33][1])
end

end
goto p143
::p282::
do
do
(registers)[17] = upvalues[3]["clamp"]
end

end
::p283::
do
do
(registers)[18] = upvalues[1]["hold_time"]
end

end
::p284::
do
do
registers[18] = (registers[18] - registers[16])
end

end
::p285::
do
do
registers[18] = registers[18] / 0.45
end

end
::p286::
do
do
registers[19] = (0)
end

end
::p287::
do
do
registers[20] = (1)
end

end
::p288::
do
do
a = 17
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p289::
do
do
(registers)[18] = upvalues[3]["clamp"]
end

end
::p290::
do
do
registers[19] = registers[16] / 0.18
end

end
::p291::
do
do
registers[20] = (0)
end

end
::p292::
do
do
registers[21] = (1)
end

end
::p293::
do
do
a = 18
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p294::
do
do
(registers)[19] = upvalues[2][154]
end

end
::p295::
do
do
(registers)[20] = upvalues[2][162]
end

end
goto p61
::p297::
do
do
a = 8
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
::p298::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p299::
do
do
(registers)[7] = upvalues[2][151]
end

end
::p300::
do
do
registers[8] = (4)
end

end
::p301::
do
do
(registers)[9] = upvalues[2][154]
end

end
::p302::
do
do
(registers)[10] = 6 * registers[3]
end

end
::p303::
do
do
registers[10] = registers[10] + 0.5
end

end
goto p27
end
end
