
-- Function f397; 167 recovered instruction blocks.
F.f397=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f397",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f397 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p225
::p2::
tick(2)
do
do
(registers)[16] = upvalues[1]["render_items"]
end

end
::p3::
do
do
(registers)[16] = registers[16][registers[13]]
end

end
::p4::
do
do
(registers)[17] = upvalues[1]["draw_bomb_group"]
end

end
goto p344
::p6::
tick(6)
do
do
(registers)[7] = registers[4]
end

end
::p7::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p330
::p9::
tick(9)
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p26
::p11::
tick(11)
do
do
upvalues[1]["render_count"] = 0
end

end
::p12::
do
do
upvalues[1]["published_frame"] = -1
end

end
::p13::
do
do
upvalues[1]["published_count"] = 0
end

end
::p14::
do
do
(registers)[2] = upvalues[1]["update_planting_state"]
end

end
::p15::
do
do
registers[3] = (false)
end

end
::p16::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p17::
do
do
(registers)[2] = upvalues[1]["clear_table"]
end

end
goto p213
::p19::
tick(19)
do
do
(registers)[2] = upvalues[1]["render_count"]
end

end
::p20::
branch_taken=false
do
do
if not (registers[2] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p350
::p23::
tick(23)
branch_taken=false
do
do
if registers[15] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p143
::p26::
do
do
(registers)[16] = upvalues[1]["find_bomb_subitem_index"]
end

end
::p27::
do
do
(registers)[17] = registers[11]
end

end
::p28::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p134
::p36::
tick(36)
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p269
::p46::
tick(46)
do
do
(registers)[6] = upvalues[1]["px"]
end

end
::p47::
do
do
registers[7] = (28)
end

end
::p48::
do
do
(registers)[8] = registers[2]
end

end
::p49::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p6
::p54::
tick(54)
do
do
(registers)[2] = environment["type"]
end

end
::p55::
do
do
(registers)[3] = registers[1]
end

end
::p56::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p57::
branch_taken=false
do
do
if registers[2] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p90
::p59::
tick(59)
do
do
a = 7
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
::p60::
do
do
(registers)[9] = upvalues[1]["px"]
end

end
::p61::
do
do
registers[10] = (14)
end

end
::p62::
do
do
(registers)[11] = registers[2]
end

end
goto p74
::p64::
tick(64)
do
do
(registers)[20] = upvalues[1]["measure_item"]
end

end
::p65::
do
do
(registers)[21] = registers[15]
end

end
::p66::
do
do
registers[22] = ("+bd")
end

end
goto p174
::p69::
tick(69)
do
do
registers[11] = registers[11] + 0.5
end

end
::p70::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p71::
do
do
registers[11] = (1)
end

end
::p72::
do
do
(registers)[12] = registers[10]
end

end
goto p211
::p74::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p75::
do
do
(registers)[10] = upvalues[2][154]
end

end
::p76::
do
do
registers[11] = (registers[8] * 0.6)
end

end
goto p69
::p78::
tick(78)
do
do
(registers)[8] = upvalues[1]["px"]
end

end
::p79::
do
do
registers[9] = (4)
end

end
::p80::
do
do
(registers)[10] = registers[2]
end

end
goto p253
::p82::
tick(82)
branch_taken=false
do
do
if not (0.15 < registers[3]) then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p11
::p85::
tick(85)
do
do
(registers)[16] = upvalues[1]["draw_item"]
end

end
::p86::
do
do
(registers)[17] = registers[15]
end

end
::p87::
do
do
(registers)[18] = registers[9]
end

end
::p88::
do
do
(registers)[19] = registers[12]
end

end
goto p64
::p90::
do
do
(registers)[3] = upvalues[2][30]
end

end
::p91::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p92::
do
do
(registers)[4] = upvalues[1]["last_capture_time"]
end

end
::p93::
do
do
registers[3] = (registers[3] - registers[4])
end

end
goto p82
::p101::
tick(101)
do
do
(registers)[1] = upvalues[2][29]
end

end
::p102::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p103::
do
do
(registers)[2] = environment["type"]
end

end
goto p245
::p105::
tick(105)
do
do
(registers)[22] = registers[2]
end

end
::p106::
do
do
registers[23] = ("+bd")
end

end
::p107::
do
do
a = (16)
top = a + 8 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p128
::p110::
tick(110)
do
do
(registers)[14] = upvalues[1]["render_count"]
end

end
::p111::
branch_taken=false
do
do
if not (not (registers[11] <= registers[14])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p148 end
goto p150
::p115::
tick(115)
do
do
a = 18
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p116::
do
do
(registers)[17] = registers[17] + registers[18]
end

end
::p117::
do
do
(registers)[12] = registers[17] + registers[6]
end

end
::p118::
do
do
registers[11] = registers[11] + 1
end

end
goto p110
::p128::
do
do
(registers)[16] = registers[12] + registers[5]
end

end
::p129::
do
do
(registers)[12] = registers[16] + registers[6]
end

end
::p130::
do
do
registers[11] = registers[11] + 1
end

end
goto p110
::p132::
tick(132)
branch_taken=false
do
do
if registers[15] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p197
::p134::
do
do
(registers)[13] = registers[16]
end

end
goto p23
::p136::
do
do
(registers)[2] = upvalues[1]["get_dpi_scale"]
end

end
::p137::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p138::
do
do
(registers)[3] = upvalues[2][136]
end

end
goto p339
::p140::
tick(140)
branch_taken=false
do
do
if registers[15] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p207
::p143::
do
do
registers[16] = (registers[15]["kind"])
end

end
::p144::
branch_taken=false
do
do
if registers[16] ~= "bomb_planting" then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p266
::p148::
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
::p150::
do
do
(registers)[15] = upvalues[1]["render_items"]
end

end
::p151::
do
do
(registers)[15] = registers[15][registers[11]]
end

end
::p152::
branch_taken=false
do
do
if registers[11] ~= registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p172
::p167::
tick(167)
do
do
registers[25] = ("+bd")
end

end
::p168::
do
do
a = (17)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p169::
do
do
registers[17] = (registers[5] * 2)
end

end
::p170::
do
do
(registers)[17] = registers[12] + registers[17]
end

end
goto p352
::p172::
do
do
registers[11] = registers[11] + 1
end

end
goto p110
::p174::
do
do
(registers)[23] = registers[2]
end

end
::p175::
do
do
a = 20
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p176::
do
do
(registers)[21] = registers[5]
end

end
goto p105
::p178::
tick(178)
do
do
(registers)[8] = registers[2]
end

end
::p179::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p180::
do
do
(registers)[7] = upvalues[2][57]
end

end
goto p59
::p182::
tick(182)
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
::p183::
tick(183)
do
do
(registers)[23] = registers[15]
end

end
::p184::
do
do
(registers)[24] = registers[16]
end

end
::p185::
do
do
registers[25] = ("+bd")
end

end
::p186::
do
do
(registers)[26] = registers[2]
end

end
::p187::
do
do
a = 22
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p188::
do
do
(registers)[23] = registers[5]
end

end
::p189::
do
do
(registers)[24] = registers[2]
end

end
goto p167
::p191::
tick(191)
do
do
(registers)[3] = upvalues[1]["capture_frame"]
end

end
::p192::
do
do
registers[3] = (registers[1] - registers[3])
end

end
::p193::
branch_taken=false
do
do
if not (1 < registers[3]) then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p249
::p197::
do
do
(registers)[16] = upvalues[1]["is_bomb_main_kind"]
end

end
::p198::
do
do
registers[17] = (registers[15]["kind"])
end

end
::p199::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p9
::p207::
do
do
(registers)[16] = upvalues[1]["is_bomb_main_kind"]
end

end
::p208::
do
do
registers[17] = (registers[15]["kind"])
end

end
::p209::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p36
::p211::
do
do
(registers)[13] = nil
end

end
goto p110
::p213::
do
do
(registers)[3] = upvalues[1]["visible_keys"]
end

end
::p214::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p19
::p225::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p226::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p227::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p234 end
goto p182
::p229::
tick(229)
do
do
registers[11] = registers[11] + 1
end

end
goto p110
::p231::
tick(231)
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
::p234::
do
do
(registers)[1] = upvalues[1]["active"]
end

end
::p235::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p231
::p245::
do
do
(registers)[3] = registers[1]
end

end
::p246::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p247::
branch_taken=false
do
do
if registers[2] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p191
::p249::
do
do
upvalues[1]["render_count"] = 0
end

end
::p250::
do
do
upvalues[1]["published_frame"] = -1
end

end
::p251::
do
do
upvalues[1]["published_count"] = 0
end

end
goto p324
::p253::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p254::
do
do
(registers)[7] = registers[7] + registers[8]
end

end
::p255::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p256::
do
do
(registers)[6] = upvalues[1]["px"]
end

end
::p257::
do
do
registers[7] = (8)
end

end
goto p178
::p266::
branch_taken=false
do
do
if registers[13] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p297
::p269::
branch_taken=false
do
do
if registers[13] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p2
::p275::
tick(275)
do
do
(registers)[22] = registers[2]
end

end
::p276::
do
do
registers[23] = ("+bd")
end

end
::p277::
do
do
a = (16)
top = a + 8 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p278::
do
do
(registers)[16] = registers[12] + registers[5]
end

end
::p279::
do
do
(registers)[12] = registers[16] + registers[6]
end

end
goto p229
::p281::
tick(281)
do
do
(registers)[19] = registers[12]
end

end
::p282::
do
do
(registers)[20] = upvalues[1]["measure_planting_item"]
end

end
::p283::
do
do
(registers)[21] = registers[15]
end

end
::p284::
do
do
registers[22] = ("+bd")
end

end
::p285::
do
do
(registers)[23] = registers[2]
end

end
::p286::
do
do
a = 20
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p287::
do
do
(registers)[21] = registers[5]
end

end
goto p275
::p297::
do
do
(registers)[16] = upvalues[1]["draw_planting_item"]
end

end
::p298::
do
do
(registers)[17] = registers[15]
end

end
::p299::
do
do
(registers)[18] = registers[9]
end

end
goto p281
::p324::
do
do
(registers)[2] = upvalues[1]["update_planting_state"]
end

end
::p325::
do
do
registers[3] = (false)
end

end
::p326::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p327::
do
do
(registers)[2] = upvalues[1]["clear_table"]
end

end
goto p376
::p330::
do
do
registers[7] = (20)
end

end
goto p78
::p339::
do
do
registers[4] = ("+bd")
end

end
::p340::
do
do
registers[5] = ("A")
end

end
::p341::
do
do
a = 3
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
::p342::
do
do
(registers)[5] = upvalues[2][151]
end

end
goto p46
::p344::
do
do
(registers)[18] = registers[15]
end

end
::p345::
do
do
(registers)[19] = registers[16]
end

end
::p346::
do
do
(registers)[20] = registers[9]
end

end
::p347::
do
do
(registers)[21] = registers[12]
end

end
::p348::
do
do
(registers)[22] = upvalues[1]["measure_bomb_group"]
end

end
goto p183
::p350::
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
::p352::
do
do
(registers)[18] = upvalues[1]["px"]
end

end
::p353::
do
do
registers[19] = (1)
end

end
::p354::
do
do
(registers)[20] = registers[2]
end

end
goto p115
::p376::
do
do
(registers)[3] = upvalues[1]["visible_keys"]
end

end
::p377::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p19
end
end
