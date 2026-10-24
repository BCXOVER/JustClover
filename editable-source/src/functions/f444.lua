
-- Function f444; 195 recovered instruction blocks.
F.f444=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f444",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f444 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p345
::p17::
tick(17)
do
do
registers[10] = (255)
end

end
::p18::
do
do
registers[11] = (220)
end

end
::p19::
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
goto p306
::p31::
tick(31)
do
do
(registers)[8] = upvalues[2]["antiaim"]
end

end
::p32::
do
do
registers[8] = (registers[8]["features"])
end

end
::p33::
do
do
registers[8] = (registers[8]["hotkeys"])
end

end
::p34::
do
do
registers[8] = (registers[8]["freestanding"])
end

end
goto p320
::p52::
tick(52)
do
do
(registers)[4] = upvalues[4]["is_force_safe_point"]
end

end
::p53::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p54::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p264 end
::p56::
do
do
registers[4] = (upvalues[5])
end

end
::p57::
do
do
(registers)[5] = registers[3]
end

end
::p58::
do
do
registers[6] = ("SAFE")
end

end
::p59::
do
do
registers[7] = new_frame(4)
end

end
goto p97
::p61::
tick(61)
do
do
registers[4] = (upvalues[5])
end

end
::p62::
do
do
(registers)[5] = registers[3]
end

end
::p63::
do
do
registers[6] = ("FS")
end

end
::p64::
do
do
registers[7] = new_frame(4)
end

end
goto p199
::p66::
tick(66)
do
do
(registers)[5] = upvalues[2]["antiaim"]
end

end
::p67::
do
do
registers[5] = (registers[5]["features"])
end

end
::p68::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p389 end
goto p315
::p70::
tick(70)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p124 end
goto p329
::p72::
tick(72)
do
do
registers[9] = ("safe")
end

end
::p73::
do
do
a = (4)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p264
::p83::
tick(83)
do
do
registers[4] = (upvalues[5])
end

end
::p84::
do
do
(registers)[5] = registers[3]
end

end
::p85::
do
do
registers[6] = ("OSAA")
end

end
::p86::
do
do
registers[7] = new_frame(4)
end

end
goto p141
::p89::
tick(89)
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
::p91::
tick(91)
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p92::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
goto p349
::p95::
tick(95)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
goto p221
::p97::
do
do
registers[8] = (255)
end

end
::p98::
do
do
registers[9] = (255)
end

end
::p99::
do
do
registers[10] = (255)
end

end
::p100::
do
do
registers[11] = (220)
end

end
::p101::
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
::p102::
do
do
registers[8] = (50)
end

end
goto p72
::p105::
tick(105)
do
do
registers[9] = (30)
end

end
::p106::
do
do
registers[10] = ("dt")
end

end
::p107::
do
do
a = (5)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p374
::p109::
tick(109)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p226 end
goto p331
::p111::
tick(111)
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p257
::p119::
do
do
registers[3] = {
}
end

end
::p120::
do
do
(registers)[4] = upvalues[4]["is_ping_spike"]
end

end
::p121::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p122::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p295
::p124::
do
do
(registers)[2] = upvalues[3][32]
end

end
::p125::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p126::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p222
::p133::
tick(133)
do
do
(registers)[7] = upvalues[2]["antiaim"]
end

end
::p134::
do
do
registers[7] = (registers[7]["features"])
end

end
::p135::
do
do
registers[7] = (registers[7]["hotkeys"])
end

end
::p136::
do
do
registers[7] = (registers[7]["freestanding"])
end

end
::p137::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p389 end
goto p31
::p141::
do
do
registers[8] = (255)
end

end
::p142::
do
do
registers[9] = (255)
end

end
::p143::
do
do
registers[10] = (255)
end

end
::p144::
do
do
registers[11] = (220)
end

end
::p145::
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
goto p360
::p147::
tick(147)
do
do
(registers)[4] = upvalues[4]["is_on_shot_antiaim"]
end

end
::p148::
do
do
registers[5] = ("no dt")
end

end
::p149::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p150::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p231 end
goto p83
::p152::
tick(152)
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
::p153::
tick(153)
do
do
(registers)[10] = registers[6]
end

end
::p154::
do
do
(registers)[11] = registers[7]
end

end
::p155::
do
do
(registers)[12] = registers[2]
end

end
goto p304
::p164::
tick(164)
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p165::
do
do
registers[1] = (registers[1]["stubs"])
end

end
::p166::
do
do
registers[1] = (registers[1]["feature_indicators"])
end

end
::p167::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
goto p111
::p169::
tick(169)
do
do
(registers)[3] = upvalues[2]["visuals"]
end

end
::p170::
do
do
registers[3] = (registers[3]["stubs"])
end

end
::p171::
do
do
registers[3] = (registers[3]["feature_indicators"])
end

end
::p172::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p164 end
goto p152
::p192::
tick(192)
do
do
registers[8] = (255)
end

end
::p193::
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p290
::p196::
tick(196)
do
do
registers[9] = ("fs")
end

end
::p197::
do
do
a = (4)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p389
::p199::
do
do
registers[8] = (255)
end

end
::p200::
do
do
registers[9] = (255)
end

end
::p201::
do
do
registers[10] = (255)
end

end
::p202::
do
do
registers[11] = (220)
end

end
::p203::
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
::p204::
do
do
registers[8] = (70)
end

end
goto p196
::p206::
tick(206)
do
do
registers[4] = (upvalues[7])
end

end
::p207::
do
do
(registers)[5] = registers[2]
end

end
::p208::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p109
::p216::
tick(216)
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
::p217::
do
do
registers[8] = (60)
end

end
::p218::
do
do
registers[9] = ("baim")
end

end
::p219::
do
do
a = (4)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p254
::p221::
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
::p222::
do
do
(registers)[3] = upvalues[3][50]
end

end
::p223::
do
do
(registers)[4] = registers[2]
end

end
::p224::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p95
::p226::
tick(226)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p290 end
goto p310
::p228::
tick(228)
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
::p231::
tick(231)
do
do
(registers)[4] = upvalues[4]["is_double_tap"]
end

end
::p232::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p233::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p374 end
goto p206
::p236::
tick(236)
do
do
registers[4] = (upvalues[5])
end

end
::p237::
do
do
(registers)[5] = registers[3]
end

end
::p238::
do
do
registers[6] = ("DUCK")
end

end
goto p369
::p241::
tick(241)
do
do
registers[8] = (255)
end

end
::p242::
do
do
registers[9] = (255)
end

end
::p243::
do
do
registers[10] = (255)
end

end
::p244::
do
do
registers[11] = (220)
end

end
goto p216
::p246::
tick(246)
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p226
::p254::
tick(254)
do
do
(registers)[4] = upvalues[2]["antiaim"]
end

end
::p255::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p389 end
goto p66
::p257::
do
do
(registers)[1] = upvalues[2]["visuals"]
end

end
::p258::
do
do
registers[1] = (registers[1]["stubs"])
end

end
::p259::
do
do
registers[1] = (registers[1]["feature_indicators"])
end

end
goto p325
::p264::
do
do
(registers)[4] = upvalues[4]["is_force_baim"]
end

end
::p265::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p266::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p254 end
goto p279
::p268::
tick(268)
do
do
registers[7] = (upvalues[6])
end

end
::p269::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p270::
do
do
registers[8] = (10)
end

end
goto p300
::p279::
do
do
registers[4] = (upvalues[5])
end

end
::p280::
do
do
(registers)[5] = registers[3]
end

end
::p281::
do
do
registers[6] = ("BODY")
end

end
::p282::
do
do
registers[7] = new_frame(4)
end

end
goto p241
::p284::
tick(284)
do
do
registers[8] = registers[8] + 0.5
end

end
::p285::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p286::
do
do
registers[8] = (upvalues[8])
end

end
::p287::
do
do
(registers)[9] = registers[3]
end

end
goto p153
::p290::
do
do
registers[5] = (upvalues[5])
end

end
::p291::
do
do
(registers)[6] = registers[3]
end

end
::p292::
do
do
registers[7] = ("DT")
end

end
::p293::
do
do
(registers)[8] = registers[4]
end

end
goto p105
::p295::
do
do
registers[4] = (upvalues[5])
end

end
::p296::
do
do
(registers)[5] = registers[3]
end

end
::p297::
do
do
registers[6] = ("PING")
end

end
goto p268
::p300::
do
do
registers[9] = ("ping")
end

end
::p301::
do
do
a = (4)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p147
::p304::
do
do
a = (8)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p305::
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
::p306::
do
do
registers[8] = (40)
end

end
::p307::
do
do
registers[9] = ("duck")
end

end
::p308::
do
do
a = (4)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p52
::p310::
do
do
registers[4] = new_frame(4)
end

end
::p311::
do
do
registers[5] = (255)
end

end
::p312::
do
do
registers[6] = (0)
end

end
::p313::
do
do
registers[7] = (50)
end

end
goto p192
::p315::
do
do
(registers)[6] = upvalues[2]["antiaim"]
end

end
::p316::
do
do
registers[6] = (registers[6]["features"])
end

end
::p317::
do
do
registers[6] = (registers[6]["hotkeys"])
end

end
::p318::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p389 end
goto p133
::p320::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p321::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p322::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p389 end
goto p61
::p325::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p326::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p327::
do
do
registers[1] = (registers[1] == true)
end

end
goto p70
::p329::
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
::p331::
do
do
registers[4] = new_frame(4)
end

end
::p332::
do
do
registers[5] = (255)
end

end
::p333::
do
do
registers[6] = (255)
end

end
::p334::
do
do
registers[7] = (255)
end

end
::p335::
do
do
registers[8] = (200)
end

end
goto p246
::p345::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p346::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p347::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p384 end
goto p89
::p349::
do
do
(registers)[2] = upvalues[2]["visuals"]
end

end
::p350::
do
do
registers[2] = (registers[2]["stubs"])
end

end
::p351::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
goto p169
::p360::
do
do
registers[8] = (20)
end

end
::p361::
do
do
registers[9] = ("hide")
end

end
::p362::
do
do
a = (4)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p231
::p369::
do
do
registers[7] = new_frame(4)
end

end
::p370::
do
do
registers[8] = (255)
end

end
::p371::
do
do
registers[9] = (255)
end

end
goto p17
::p374::
do
do
(registers)[4] = upvalues[4]["is_fake_duck"]
end

end
::p375::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p376::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p236
::p384::
do
do
registers[1] = (upvalues[1])
end

end
::p385::
do
do
registers[2] = ("paint:feature_indicators")
end

end
::p386::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p387::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p91 end
goto p228
::p389::
do
do
(registers)[4] = environment["table"]
end

end
::p390::
do
do
registers[4] = (registers[4]["sort"])
end

end
::p391::
do
do
(registers)[5] = registers[3]
end

end
::p392::
do
do
a = (D.f445)
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
::p393::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p394::
do
do
(registers)[4] = upvalues[3][57]
end

end
::p395::
do
do
a = 4
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
::p396::
do
do
(registers)[6] = upvalues[3][154]
end

end
::p397::
do
do
registers[7] = (registers[4] * 0.5)
end

end
::p398::
do
do
registers[7] = registers[7] + 0.5
end

end
::p399::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p400::
do
do
(registers)[7] = upvalues[3][154]
end

end
::p401::
do
do
registers[8] = (registers[5] * 0.5)
end

end
goto p284
end
end
