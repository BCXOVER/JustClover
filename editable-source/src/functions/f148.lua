
-- Function f148; 147 recovered instruction blocks.
F.f148=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f148",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f148 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p101
::p5::
tick(5)
do
do
(registers)[15] = environment["table"]
end

end
::p6::
do
do
registers[15] = (registers[15]["remove"])
end

end
::p7::
do
do
registers[16] = (registers[1]["configs_db"])
end

end
::p8::
do
do
registers[16] = (registers[16]["cfg_list"])
end

end
::p9::
do
do
(registers)[17] = registers[13]
end

end
goto p189
::p11::
tick(11)
do
do
registers[14] = (registers[1]["configs_db"])
end

end
::p12::
do
do
registers[14] = (registers[14]["cfg_list"])
end

end
::p13::
do
do
(registers)[14] = registers[14][registers[13]]
end

end
goto p208
::p16::
tick(16)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p225
::p18::
tick(18)
do
do
registers[8] = (#registers[7])
end

end
::p19::
do
do
registers[9] = (#registers[5])
end

end
::p20::
do
do
registers[8] = (registers[8] ~= registers[9])
end

end
goto p213
::p24::
tick(24)
do
do
registers[8] = (registers[8] ~= registers[9])
end

end
::p25::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
goto p18
::p27::
tick(27)
do
do
registers[14] = (registers[12][1])
end

end
::p28::
do
do
(registers[7])[registers[13]] = registers[14]
end

end
goto p331
::p30::
tick(30)
do
do
registers[4] = {
}
end

end
goto p215
::p40::
tick(40)
do
do
registers[16] = (registers[12][2])
end

end
::p41::
do
do
a = (14)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p42::
do
do
(registers[6])[registers[13]] = registers[14]
end

end
::p43::
do
do
registers[13] = (#registers[7])
end

end
::p44::
do
do
registers[13] = registers[13] + 1
end

end
goto p27
::p46::
tick(46)
do
do
registers[4] = (0)
end

end
goto p267
::p48::
tick(48)
do
do
(registers)[13] = registers[4][registers[12]]
end

end
::p49::
do
do
(registers)[14] = environment["type"]
end

end
::p50::
do
do
(registers)[15] = registers[13]
end

end
::p51::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p52::
branch_taken=false
do
do
if registers[14] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p222 end
goto p117
::p62::
tick(62)
branch_taken=false
do
do
if registers[14] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p108
::p66::
tick(66)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p67::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p232 end
goto p187
::p69::
tick(69)
branch_taken=false
do
do
if registers[17] ~= registers[18] then
    branch_taken=true
end
end

end
if branch_taken then goto p222 end
goto p323
::p71::
tick(71)
do
do
registers[6] = {
}
end

end
::p72::
do
do
registers[7] = {
}
end

end
::p73::
do
do
registers[8] = (1)
end

end
goto p291
::p75::
tick(75)
branch_taken=false
do
do
if registers[15] ~= registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p222 end
goto p239
::p77::
tick(77)
do
do
registers[5] = (registers[5]["cfg_list"])
end

end
::p78::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p79::
do
do
registers[4] = (registers[4] == "table")
end

end
goto p271
::p81::
tick(81)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p307 end
goto p232
::p83::
tick(83)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p84::
do
do
registers[8] = (#registers[6])
end

end
::p85::
do
do
registers[9] = (#registers[4])
end

end
goto p24
::p87::
tick(87)
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
    (registers)[10 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p66
::p90::
tick(90)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p215 end
goto p30
::p101::
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
::p102::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["read_db"]
end

end
::p103::
do
do
a = 2
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
::p104::
do
do
(registers)[4] = environment["type"]
end

end
::p105::
do
do
(registers)[5] = registers[2]
end

end
goto p319
::p108::
do
do
(registers)[15] = environment["type"]
end

end
::p109::
do
do
registers[16] = (registers[12][2])
end

end
::p110::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p111::
branch_taken=false
do
do
if registers[15] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p315
::p113::
tick(113)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 9
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p295 end
::p114::
tick(114)
do
do
registers[5] = {
}
end

end
goto p71
::p117::
do
do
registers[15] = (registers[13][1])
end

end
::p118::
do
do
(registers)[16] = registers[6][registers[12]]
end

end
::p119::
do
do
registers[16] = (registers[16][1])
end

end
goto p75
::p127::
tick(127)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p297 end
goto p273
::p130::
tick(130)
do
do
(registers)[12] = registers[4][registers[11]]
end

end
::p131::
do
do
(registers)[13] = environment["type"]
end

end
::p132::
do
do
(registers)[14] = registers[12]
end

end
::p133::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p134::
branch_taken=false
do
do
if registers[13] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p198
::p136::
tick(136)
do
do
(registers)[4] = registers[2]
end

end
goto p90
::p160::
tick(160)
do
do
registers[17] = (registers[12][1])
end

end
::p161::
branch_taken=false
do
do
if registers[17] ~= "Default - Admin" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p286
::p163::
tick(163)
do
do
registers[16] = (registers[14][1])
end

end
::p164::
branch_taken=false
do
do
if registers[16] ~= "Default - Admin" then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p5
::p185::
tick(185)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p114
::p187::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p232 end
goto p81
::p189::
do
do
a = 15;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p190::
do
do
(registers)[15] = environment["table"]
end

end
::p191::
do
do
registers[15] = (registers[15]["remove"])
end

end
::p192::
do
do
registers[16] = (registers[1]["configs_db"])
end

end
::p193::
do
do
registers[16] = (registers[16]["menu_list"])
end

end
::p194::
do
do
(registers)[17] = registers[13]
end

end
::p195::
do
do
a = 15;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p196::
do
do
registers[9] = (true)
end

end
goto p87
::p198::
do
do
(registers)[14] = environment["type"]
end

end
::p199::
do
do
registers[15] = (registers[12][1])
end

end
::p200::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p62
::p208::
do
do
(registers)[15] = environment["type"]
end

end
::p209::
do
do
(registers)[16] = registers[14]
end

end
::p210::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p211::
branch_taken=false
do
do
if registers[15] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p163
::p213::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p225 end
goto p275
::p215::
do
do
registers[1]["configs_db"] = (registers[4])
end

end
::p216::
do
do
(registers)[4] = environment["tonumber"]
end

end
::p217::
do
do
registers[5] = (registers[1]["configs_db"])
end

end
::p218::
do
do
registers[5] = (registers[5]["revision"])
end

end
::p219::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p220::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p267 end
goto p46
::p222::
tick(222)
do
do
registers[8] = (true)
end

end
goto p16
::p225::
do
do
registers[9] = (registers[1]["configs_db"])
end

end
::p226::
do
do
registers[9]["cfg_list"] = (registers[6])
end

end
::p227::
do
do
registers[9] = (registers[1]["configs_db"])
end

end
::p228::
do
do
registers[9]["menu_list"] = (registers[7])
end

end
::p229::
do
do
registers[9] = (false)
end

end
goto p263
::p232::
do
do
a = (10)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["write_db"]
end

end
::p233::
do
do
a = (10)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p307
::p236::
tick(236)
do
do
registers[5] = (registers[1]["configs_db"])
end

end
::p237::
do
do
registers[5] = (registers[5]["menu_list"])
end

end
goto p185
::p239::
do
do
registers[17] = (registers[13][2])
end

end
::p240::
do
do
(registers)[18] = registers[6][registers[12]]
end

end
::p241::
do
do
registers[18] = (registers[18][2])
end

end
goto p69
::p251::
tick(251)
do
do
registers[11] = (1)
end

end
::p252::
do
do
registers[12] = (-1)
end

end
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
a = 10
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p87 end
goto p71
::p263::
do
do
registers[10] = (registers[1]["configs_db"])
end

end
::p264::
do
do
registers[10] = (registers[10]["cfg_list"])
end

end
::p265::
do
do
registers[10] = (#registers[10])
end

end
goto p251
::p267::
do
do
registers[1]["write_revision"] = (registers[4])
end

end
::p268::
do
do
(registers)[4] = environment["type"]
end

end
::p269::
do
do
registers[5] = (registers[1]["configs_db"])
end

end
goto p77
::p271::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p304
::p273::
do
do
registers[4] = {
}
end

end
goto p297
::p275::
do
do
registers[9] = (1)
end

end
::p276::
do
do
registers[10] = (#registers[6])
end

end
::p277::
do
do
registers[11] = (1)
end

end
goto p113
::p286::
do
do
registers[13] = (#registers[6])
end

end
::p287::
do
do
registers[13] = registers[13] + 1
end

end
::p288::
do
do
registers[14] = new_frame(2)
end

end
::p289::
do
do
registers[15] = (registers[12][1])
end

end
goto p40
::p291::
do
do
registers[9] = (#registers[4])
end

end
::p292::
do
do
registers[10] = (1)
end

end
::p293::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 8
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p331 end
goto p24
::p295::
tick(295)
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
    (registers)[9 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p16
::p297::
do
do
(registers)[5] = environment["type"]
end

end
::p298::
do
do
registers[6] = (registers[1]["configs_db"])
end

end
::p299::
do
do
registers[6] = (registers[6]["menu_list"])
end

end
goto p327
::p304::
do
do
registers[4] = (registers[1]["configs_db"])
end

end
::p305::
do
do
registers[4] = (registers[4]["cfg_list"])
end

end
goto p127
::p307::
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
::p315::
do
do
registers[16] = (registers[12][1])
end

end
::p316::
branch_taken=false
do
do
if registers[16] ~= "" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p331 end
goto p160
::p319::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p320::
do
do
registers[4] = (registers[4] == "table")
end

end
::p321::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p136
::p323::
do
do
(registers)[19] = registers[5][registers[12]]
end

end
::p324::
do
do
(registers)[20] = registers[7][registers[12]]
end

end
::p325::
branch_taken=false
do
do
if registers[19] == registers[20] then
    branch_taken=true
end
end

end
if branch_taken then goto p295 end
goto p222
::p327::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p328::
do
do
registers[5] = (registers[5] == "table")
end

end
::p329::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p185 end
goto p236
::p331::
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
    (registers)[8 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p83
end
end
