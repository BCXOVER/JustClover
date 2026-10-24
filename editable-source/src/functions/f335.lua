
-- Function f335; 169 recovered instruction blocks.
F.f335=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f335",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f335 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p115
::p3::
tick(3)
do
do
(registers)[11] = registers[3]
end

end
::p4::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p261 end
goto p346
::p9::
tick(9)
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p10::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
::p11::
do
do
(registers[7])[registers[3]] = registers[8]
end

end
goto p71
::p13::
tick(13)
do
do
registers[6] = (58)
end

end
goto p378
::p16::
tick(16)
do
do
registers[4] = registers[4] + 1
end

end
::p17::
do
do
(registers)[5] = upvalues[3]["miss_counter"]
end

end
::p18::
do
do
(registers[5])[registers[3]] = registers[4]
end

end
goto p312
::p20::
tick(20)
do
do
registers[3] = (registers[1]["target"])
end

end
goto p305
::p32::
tick(32)
do
do
registers[6] = (registers[5]["stable_side"])
end

end
::p33::
do
do
(registers)[6] = registers[6] > 0
end

end
::p34::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p327
::p37::
tick(37)
do
do
(registers)[2] = environment["tostring"]
end

end
::p38::
do
do
registers[3] = (registers[1]["reason"])
end

end
::p39::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p333 end
goto p183
::p47::
tick(47)
do
do
registers[6] = (4)
end

end
goto p89
::p62::
tick(62)
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
::p65::
tick(65)
do
do
registers[7] = (upvalues[4])
end

end
::p66::
do
do
registers[8] = ("Logging")
end

end
::p67::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p68::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p292 end
goto p147
::p71::
do
do
registers[7] = (upvalues[4])
end

end
::p72::
do
do
registers[8] = ("Logging")
end

end
::p73::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p277
::p75::
tick(75)
do
do
registers[3] = (registers[1]["target"])
end

end
::p76::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p326
::p85::
tick(85)
do
do
registers[5] = registers[5] + 1
end

end
::p86::
do
do
(registers)[6] = nil
end

end
::p87::
branch_taken=false
do
do
if not (0 < registers[4]) then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p355
::p89::
tick(89)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p322
::p92::
tick(92)
do
do
(registers)[11] = upvalues[3]["miss_counter"]
end

end
::p93::
do
do
(registers)[11] = registers[11][registers[3]]
end

end
::p94::
do
do
a = 8
z = (4)
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
::p95::
do
do
a = 7;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p292
::p98::
tick(98)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p285
::p100::
tick(100)
do
do
registers[5]["negative_votes"] = (registers[6])
end

end
::p101::
do
do
(registers)[6] = upvalues[1][162]
end

end
::p102::
do
do
registers[7] = (registers[5]["jitter_ticks"])
end

end
::p103::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p308 end
goto p194
::p105::
tick(105)
branch_taken=false
do
do
if registers[2] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p326 end
goto p348
::p113::
tick(113)
do
do
registers[6] = (registers[5]["last_side"])
end

end
goto p338
::p115::
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
::p116::
do
do
registers[2] = (upvalues[0])
end

end
::p117::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p105
::p120::
tick(120)
do
do
registers[5]["positive_votes"] = (registers[6])
end

end
::p121::
do
do
registers[6] = (registers[5]["stable_side"])
end

end
::p122::
do
do
(registers)[6] = (registers[6] < 0)
end

end
goto p238
::p124::
tick(124)
do
do
registers[4] = (0)
end

end
goto p224
::p126::
tick(126)
do
do
registers[9] = ("[Andromeda] Custom resolver miss adapt: %s -> phase %d")
end

end
::p127::
do
do
(registers)[10] = upvalues[1][43]
end

end
::p128::
do
do
(registers)[11] = registers[3]
end

end
::p129::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p130::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p236
::p132::
tick(132)
do
do
(registers)[4] = upvalues[1][33]
end

end
::p133::
do
do
(registers)[5] = registers[3]
end

end
::p134::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p302
::p147::
do
do
(registers)[7] = upvalues[1][70]
end

end
::p148::
do
do
(registers)[8] = environment["string"]
end

end
::p149::
do
do
registers[8] = (registers[8]["format"])
end

end
goto p126
::p151::
branch_taken=false
do
do
if not (not (registers[4] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p179 end
goto p351
::p153::
tick(153)
do
do
(registers)[4] = upvalues[3]["wraith"]
end

end
::p154::
do
do
registers[4] = (registers[4]["last_value"])
end

end
::p155::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
::p156::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p224 end
goto p124
::p160::
tick(160)
do
do
registers[5]["jitter_ticks"] = (registers[6])
end

end
goto p169
::p167::
tick(167)
branch_taken=false
do
do
if registers[2] ~= "resolver" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p321
::p169::
tick(169)
do
do
(registers)[6] = upvalues[1][162]
end

end
::p170::
do
do
(registers)[7] = (registers[4] - 1)
end

end
::p171::
do
do
registers[7] = (registers[7] * 0.18)
end

end
::p172::
do
do
registers[8] = (0.75)
end

end
::p173::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p174::
do
do
registers[6] = 0.85 + registers[6]
end

end
::p175::
do
do
(registers)[7] = upvalues[3]["correction_until"]
end

end
::p176::
do
do
(registers)[8] = upvalues[1][23]
end

end
::p177::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
goto p185
::p179::
do
do
registers[7] = registers[5] % 2
end

end
::p180::
branch_taken=false
do
do
if registers[7] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p200
::p183::
do
do
registers[3] = ("?")
end

end
goto p333
::p185::
do
do
(registers)[9] = upvalues[1][154]
end

end
::p186::
do
do
(registers)[10] = upvalues[1][28]
end

end
::p187::
do
do
top = 10;
(registers)[top] = registers[top]()
end

end
goto p341
::p189::
tick(189)
do
do
registers[6] = -registers[6]
end

end
::p190::
do
do
registers[5]["stable_side"] = (registers[6])
end

end
::p191::
do
do
registers[6] = (registers[5]["stable_side"])
end

end
::p192::
do
do
registers[5]["last_side"] = (registers[6])
end

end
goto p32
::p194::
do
do
registers[7] = (0)
end

end
goto p308
::p196::
tick(196)
do
do
registers[4] = (upvalues[2])
end

end
::p197::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p198::
branch_taken=false
do
do
if registers[4] ~= "Auto" then
    branch_taken=true
end
end

end
if branch_taken then goto p287 end
goto p153
::p200::
do
do
registers[6] = (-58)
end

end
goto p378
::p204::
tick(204)
do
do
(registers[7])[registers[3]] = registers[6]
end

end
::p205::
do
do
(registers)[7] = upvalues[3]["wraith"]
end

end
::p206::
do
do
registers[7] = (registers[7]["miss_until"])
end

end
goto p293
::p220::
tick(220)
do
do
(registers)[11] = upvalues[1][28]
end

end
::p221::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p222::
do
do
registers[10] = (registers[10] / registers[11])
end

end
goto p9
::p224::
do
do
(registers)[5] = upvalues[3]["wraith"]
end

end
::p225::
do
do
registers[5] = (registers[5]["misses"])
end

end
::p226::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p227::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p267
::p236::
do
do
(registers)[10] = registers[3]
end

end
goto p92
::p238::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p47
::p250::
tick(250)
do
do
(registers)[7] = upvalues[1][70]
end

end
::p251::
do
do
(registers)[8] = environment["string"]
end

end
::p252::
do
do
registers[8] = (registers[8]["format"])
end

end
::p253::
do
do
registers[9] = ("[Andromeda] Auto resolver adapt: %s -> %d")
end

end
::p254::
do
do
(registers)[10] = upvalues[1][43]
end

end
goto p3
::p256::
tick(256)
do
do
(registers)[3] = environment["tonumber"]
end

end
::p257::
do
do
registers[4] = (registers[1]["target"])
end

end
::p258::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p259::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p305 end
goto p20
::p261::
tick(261)
do
do
(registers)[11] = registers[6]
end

end
::p262::
do
do
a = 8
z = (4)
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
::p263::
do
do
a = 7;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p284
::p267::
do
do
registers[5] = (0)
end

end
goto p85
::p277::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p284 end
goto p250
::p284::
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
::p285::
do
do
registers[6] = (0)
end

end
goto p120
::p287::
do
do
(registers)[4] = upvalues[3]["miss_counter"]
end

end
::p288::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
::p289::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p317 end
goto p324
::p292::
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
::p293::
do
do
(registers)[8] = upvalues[1][23]
end

end
::p294::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
::p295::
do
do
(registers)[9] = upvalues[1][154]
end

end
::p296::
do
do
(registers)[10] = upvalues[1][162]
end

end
::p297::
do
do
registers[11] = (registers[5] * 0.12)
end

end
::p298::
do
do
registers[12] = (0.55)
end

end
::p299::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p300::
do
do
registers[10] = 0.9 + registers[10]
end

end
goto p220
::p302::
branch_taken=false
do
do
if registers[4] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p196 end
goto p62
::p305::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p132
::p308::
do
do
registers[7] = registers[7] + 4
end

end
::p309::
do
do
registers[8] = (12)
end

end
::p310::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p160
::p312::
do
do
(registers)[5] = upvalues[3]["records"]
end

end
::p313::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p314::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p169 end
goto p329
::p317::
tick(317)
do
do
registers[5] = (upvalues[5])
end

end
::p318::
do
do
registers[5] = (#registers[5])
end

end
::p319::
do
do
registers[4] = registers[4] % registers[5]
end

end
goto p16
::p321::
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
::p322::
do
do
registers[6] = (0)
end

end
goto p100
::p324::
do
do
registers[4] = (1)
end

end
goto p317
::p326::
tick(326)
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
::p327::
do
do
registers[6] = (4)
end

end
goto p98
::p329::
do
do
registers[6] = (registers[5]["stable_side"])
end

end
::p330::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p338 end
goto p113
::p333::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p334::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["lower"]
end

end
::p335::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p336::
branch_taken=false
do
do
if registers[2] ~= "?" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p167
::p338::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p189 end
goto p353
::p341::
do
do
registers[10] = (registers[6] / registers[10])
end

end
::p342::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p343::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
::p344::
do
do
(registers[7])[registers[3]] = registers[8]
end

end
goto p65
::p346::
do
do
(registers)[10] = registers[3]
end

end
goto p261
::p348::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p326 end
goto p75
::p351::
do
do
registers[6] = (58)
end

end
goto p378
::p353::
do
do
registers[6] = (1)
end

end
goto p189
::p355::
do
do
registers[6] = (-58)
end

end
::p378::
do
do
(registers)[7] = upvalues[3]["wraith"]
end

end
::p379::
do
do
registers[7] = (registers[7]["misses"])
end

end
::p380::
do
do
(registers[7])[registers[3]] = registers[5]
end

end
::p381::
do
do
(registers)[7] = upvalues[3]["wraith"]
end

end
::p382::
do
do
registers[7] = (registers[7]["miss_side"])
end

end
goto p204
end
end
