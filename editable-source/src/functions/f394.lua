
-- Function f394; 117 recovered instruction blocks.
F.f394=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f394",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f394 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p1
::p1::
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
::p2::
do
do
(registers)[5] = upvalues[0]["visuals"]
end

end
::p3::
do
do
registers[5] = (registers[5]["stubs"])
end

end
::p4::
do
do
registers[5] = (registers[5]["feature_indicators_offset"])
end

end
::p5::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
::p6::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p234 end
goto p72
::p15::
tick(15)
do
do
(registers)[11] = (registers[11] - 5)
end

end
::p16::
do
do
(registers)[12] = registers[3] + registers[5]
end

end
::p17::
do
do
registers[12] = registers[12] + 5
end

end
::p18::
do
do
(registers)[13] = registers[3] + registers[5]
end

end
::p19::
do
do
registers[13] = registers[13] + 15
end

end
goto p214
::p22::
tick(22)
do
do
(registers)[15] = registers[10]
end

end
::p23::
do
do
(registers)[16] = registers[12]
end

end
::p24::
do
do
registers[17] = (registers[9][1])
end

end
::p25::
do
do
registers[18] = (registers[9][2])
end

end
::p26::
do
do
registers[19] = (registers[9][3])
end

end
goto p92
::p29::
tick(29)
do
do
a = 27
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
::p30::
do
do
a = 18;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p85
::p32::
tick(32)
do
do
registers[14] = (false)
end

end
::p33::
do
do
registers[15] = (false)
end

end
::p34::
do
do
registers[16] = (1)
end

end
::p35::
do
do
registers[17] = (#registers[1])
end

end
goto p192
::p43::
tick(43)
do
do
registers[10] = (0)
end

end
::p44::
do
do
registers[11] = (255)
end

end
::p45::
do
do
a = (7)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p179
::p54::
tick(54)
branch_taken=false
do
do
if registers[20] ~= "hide" then
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p253
::p57::
tick(57)
do
do
registers[8] = (upvalues[2])
end

end
::p58::
do
do
a = 8
z = (1)
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
::p59::
do
do
registers[10] = registers[2] + 10
end

end
::p60::
do
do
(registers)[11] = registers[3] + registers[5]
end

end
goto p15
::p70::
tick(70)
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p260
::p72::
do
do
(registers)[5] = upvalues[0]["visuals"]
end

end
::p73::
do
do
registers[5] = (registers[5]["stubs"])
end

end
::p74::
do
do
registers[5] = (registers[5]["feature_indicators_offset"])
end

end
::p75::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p257
::p77::
tick(77)
do
do
(registers)[20] = registers[1][registers[19]]
end

end
::p78::
do
do
registers[20] = (registers[20]["legacy"])
end

end
::p79::
branch_taken=false
do
do
if registers[20] ~= "dt" then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p218
::p81::
tick(81)
do
do
(registers)[23] = registers[6]
end

end
::p82::
do
do
a = (14)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p83::
do
do
(registers)[14] = upvalues[3][131]
end

end
goto p22
::p85::
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
::p86::
tick(86)
do
do
registers[27] = (upvalues[4])
end

end
::p87::
do
do
a = (28)
z = registers[16]
registers[a + 1] = (z);
(registers)[a] = z["upper"]
end

end
::p88::
do
do
a = (28);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p89::
do
do
registers[29] = (1)
end

end
goto p29
::p92::
do
do
registers[20] = (registers[9][4])
end

end
::p93::
do
do
registers[21] = ("")
end

end
::p94::
do
do
registers[22] = (0)
end

end
::p95::
do
do
(registers)[23] = registers[8]
end

end
::p96::
do
do
a = (14)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p32
::p108::
tick(108)
do
do
registers[16] = (upvalues[4])
end

end
::p109::
do
do
registers[17] = ("AA")
end

end
::p110::
do
do
registers[18] = (1)
end

end
::p111::
do
do
a = 16
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p112::
do
do
(registers)[17] = upvalues[3][131]
end

end
::p113::
do
do
(registers)[18] = registers[10]
end

end
::p114::
do
do
(registers)[19] = registers[13]
end

end
::p115::
do
do
registers[20] = (209)
end

end
goto p196
::p126::
tick(126)
do
do
registers[6] = ("ANDROMEDA")
end

end
goto p134
::p130::
tick(130)
do
do
(registers)[6] = upvalues[1]["is_slow_motion"]
end

end
::p131::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p132::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p255 end
goto p160
::p134::
tick(134)
do
do
(registers)[7] = upvalues[1]["is_slow_motion"]
end

end
::p135::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p136::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p179 end
goto p162
::p138::
tick(138)
do
do
(registers)[18] = upvalues[3][131]
end

end
::p139::
do
do
(registers)[19] = registers[10]
end

end
::p140::
do
do
(registers)[20] = registers[13]
end

end
::p141::
do
do
registers[21] = (registers[17][1])
end

end
::p142::
do
do
registers[22] = (registers[17][2])
end

end
::p143::
do
do
registers[23] = (registers[17][3])
end

end
goto p175
::p145::
tick(145)
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
    (registers)[16 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
::p146::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p147::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p108
::p160::
do
do
registers[6] = ("DANGEROUS")
end

end
goto p255
::p162::
do
do
registers[7] = new_frame(4)
end

end
::p163::
do
do
registers[8] = (255)
end

end
::p164::
do
do
registers[9] = (25)
end

end
goto p43
::p167::
tick(167)
do
do
registers[5] = (25)
end

end
goto p130
::p175::
do
do
registers[24] = (registers[17][4])
end

end
::p176::
do
do
registers[25] = ("")
end

end
::p177::
do
do
registers[26] = (0)
end

end
goto p86
::p179::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
::p181::
do
do
registers[7] = new_frame(4)
end

end
::p182::
do
do
registers[8] = (218)
end

end
::p183::
do
do
registers[9] = (118)
end

end
::p184::
do
do
registers[10] = (0)
end

end
::p185::
do
do
registers[11] = (255)
end

end
::p186::
do
do
a = (7)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p57
::p188::
tick(188)
do
do
registers[20] = (registers[7][4])
end

end
::p189::
do
do
registers[21] = ("")
end

end
::p190::
do
do
registers[22] = (0)
end

end
goto p81
::p192::
do
do
registers[18] = (1)
end

end
::p193::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 16
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p145 end
::p194::
do
do
z = (84)
q = (environment)
end

end
goto p204
::p196::
do
do
registers[21] = (139)
end

end
::p197::
do
do
registers[22] = (230)
end

end
::p198::
do
do
registers[23] = (255)
end

end
::p199::
do
do
registers[24] = ("")
end

end
::p200::
do
do
registers[25] = (0)
end

end
::p201::
do
do
(registers)[26] = registers[16]
end

end
::p202::
do
do
a = (17)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p70
::p204::
tick(204)
do
do
registers[17] = (registers[7][1])
end

end
::p205::
do
do
registers[18] = (registers[7][2])
end

end
::p206::
do
do
registers[19] = (registers[7][3])
end

end
goto p188
::p214::
do
do
(registers)[14] = upvalues[3][131]
end

end
::p215::
do
do
(registers)[15] = registers[10]
end

end
::p216::
do
do
(registers)[16] = registers[11]
end

end
goto p204
::p218::
do
do
registers[14] = (true)
end

end
goto p145
::p234::
tick(234)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p167
::p253::
do
do
registers[15] = (true)
end

end
goto p145
::p255::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p126
::p257::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p234
::p260::
do
do
registers[16] = (upvalues[5])
end

end
::p261::
do
do
(registers)[17] = registers[4]
end

end
::p262::
do
do
a = 16
z = (2)
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
goto p138
end
end
