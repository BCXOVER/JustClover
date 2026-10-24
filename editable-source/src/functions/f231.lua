
-- Function f231; 143 recovered instruction blocks.
F.f231=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f231",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f231 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p121
::p2::
tick(2)
do
do
registers[14] = ("bayonet")
end

end
::p3::
do
do
registers[15] = ("knife")
end

end
::p4::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p5::
do
do
a = (12)
z = registers[12]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p6::
do
do
registers[14] = ("g3sg1")
end

end
::p7::
do
do
registers[15] = ("autosnipers")
end

end
goto p116
::p9::
tick(9)
branch_taken=false
do
do
if registers[10] ~= "sniper" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p166
::p11::
tick(11)
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
::p14::
tick(14)
do
do
(registers)[15] = upvalues[0][26]
end

end
::p15::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p16::
do
do
(registers)[15] = registers[12] < registers[15]
end

end
goto p241
::p18::
tick(18)
do
do
a = (6)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_state"]
end

end
::p19::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p20::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p256 end
goto p48
::p23::
tick(23)
do
do
registers[8] = (registers[8]["band"])
end

end
::p24::
do
do
a = (upvalues[5]);
(registers)[9] = a[2][a[1]]
end

end
::p25::
do
do
a = (upvalues[6]);
(registers)[10] = a[2][a[1]]
end

end
::p26::
do
do
(registers)[11] = environment["bit"]
end

end
goto p69
::p29::
tick(29)
do
do
registers[9] = (registers[1]["allow_send_packet"])
end

end
::p30::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p126
::p40::
tick(40)
branch_taken=false
do
do
if registers[10] ~= "knife" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
goto p9
::p44::
tick(44)
do
do
(registers)[9] = registers[8] > 0.5
end

end
::p45::
do
do
a = upvalues[4];
(a[2][a[1]])["ducked"] = (registers[9])
end

end
::p46::
do
do
a = upvalues[4];
(a[2][a[1]])["duck_amount"] = (registers[8])
end

end
goto p50
::p48::
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
::p50::
do
do
a = upvalues[4];
(registers)[9] = (a[2][a[1]]["packets"])
end

end
::p51::
do
do
registers[9] = registers[9] + 1
end

end
::p52::
do
do
a = upvalues[4];
(a[2][a[1]])["packets"] = (registers[9])
end

end
goto p245
::p60::
tick(60)
do
do
a = (upvalues[7]);
(registers)[9] = a[2][a[1]]
end

end
::p61::
do
do
a = upvalues[4];
(a[2][a[1]])["fakelag"] = (registers[9])
end

end
goto p136
::p64::
tick(64)
do
do
(registers)[12] = upvalues[0][47]
end

end
::p65::
do
do
(registers)[13] = registers[3]
end

end
::p66::
do
do
registers[14] = ("m_flNextSecondaryAttack")
end

end
goto p94
::p69::
do
do
registers[11] = (registers[11]["lshift"])
end

end
::p70::
do
do
registers[12] = (1)
end

end
::p71::
do
do
registers[13] = (0)
end

end
::p72::
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
::p73::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p74::
do
do
registers[8] = (registers[8] == 0)
end

end
goto p153
::p77::
tick(77)
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
::p78::
tick(78)
do
do
a = upvalues[4];
(a[2][a[1]])["weapon_ready"] = (registers[15])
end

end
::p79::
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
::p80::
tick(80)
do
do
registers[14] = ("_.*")
end

end
::p81::
do
do
registers[15] = ("")
end

end
::p82::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p83::
do
do
a = (12)
z = registers[12]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
goto p2
::p85::
tick(85)
do
do
registers[5] = (upvalues[2])
end

end
::p86::
do
do
(registers)[6] = registers[2]
end

end
::p87::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p88::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p244
::p90::
tick(90)
do
do
registers[10] = (registers[4]["weapon_type_int"])
end

end
::p91::
do
do
(registers)[10] = upvalues[10][registers[10]]
end

end
::p92::
do
do
registers[11] = (registers[4]["console_name"])
end

end
goto p40
::p94::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p95::
do
do
(registers)[13] = upvalues[0][47]
end

end
::p96::
do
do
(registers)[14] = registers[3]
end

end
::p97::
do
do
registers[15] = ("m_flNextPrimaryAttack")
end

end
::p98::
do
do
a = 13
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p99::
do
do
(registers)[14] = upvalues[0][47]
end

end
::p100::
do
do
(registers)[15] = registers[2]
end

end
::p101::
do
do
registers[16] = ("m_flNextAttack")
end

end
::p102::
do
do
a = 14
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p103::
do
do
(registers)[15] = upvalues[0][26]
end

end
::p104::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p105::
do
do
(registers)[15] = registers[14] < registers[15]
end

end
goto p151
::p116::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p117::
do
do
a = (12)
z = registers[12]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p118::
do
do
registers[14] = ("scar20")
end

end
::p119::
do
do
registers[15] = ("autosnipers")
end

end
goto p209
::p121::
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
::p122::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p123::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p124::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p276 end
goto p143
::p126::
do
do
registers[9] = (upvalues[8])
end

end
::p127::
do
do
(registers)[10] = registers[2]
end

end
::p128::
do
do
(registers)[11] = registers[1]
end

end
::p129::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p130::
do
do
a = upvalues[4];
(a[2][a[1]])["body_yaw"] = (registers[9])
end

end
goto p44
::p132::
tick(132)
do
do
(registers)[12] = registers[9]
end

end
::p133::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p134::
do
do
a = upvalues[4];
(a[2][a[1]])["peeking"] = (registers[10])
end

end
goto p90
::p136::
tick(136)
do
do
registers[9] = (registers[6]["m_velocity"])
end

end
::p137::
do
do
a = upvalues[4];
(a[2][a[1]])["velocity"] = (registers[9])
end

end
::p138::
do
do
registers[9] = (registers[1]["chokedcommands"])
end

end
::p139::
do
do
a = upvalues[7]
a[2][a[1]] = registers[9]
end

end
::p140::
do
do
registers[9] = (registers[1]["chokedcommands"])
end

end
::p141::
branch_taken=false
do
do
if registers[9] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p245 end
goto p29
::p143::
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
::p145::
tick(145)
do
do
a = (12)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p146::
do
do
registers[14] = ("weapon_")
end

end
::p147::
do
do
registers[15] = ("")
end

end
::p148::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p149::
do
do
a = (12)
z = registers[12]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
goto p80
::p151::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p241 end
goto p14
::p153::
do
do
a = upvalues[4];
(a[2][a[1]])["air"] = (registers[8])
end

end
::p154::
do
do
registers[8] = (registers[6]["hit_in_ground_animation"])
end

end
::p155::
do
do
registers[8] = (registers[8] == true)
end

end
goto p212
::p157::
tick(157)
do
do
(registers)[15] = upvalues[0][26]
end

end
::p158::
do
do
top = 15;
(registers)[top] = registers[top]()
end

end
::p159::
do
do
(registers)[15] = registers[13] < registers[15]
end

end
goto p78
::p161::
tick(161)
do
do
registers[4] = (upvalues[1])
end

end
::p162::
do
do
(registers)[5] = registers[3]
end

end
::p163::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p164::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p77
::p166::
do
do
a = (12)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p167::
do
do
registers[14] = ("weapon_")
end

end
::p168::
do
do
registers[15] = ("")
end

end
::p169::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p170::
branch_taken=false
do
do
if registers[12] ~= "deagle" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p145 end
::p206::
do
do
registers[13.0] = (registers[4]["is_revolver"])
end

end
::p207::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p274 end
goto p145
::p209::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p210::
do
do
a = upvalues[4];
(a[2][a[1]])["weapon_group"] = (registers[12])
end

end
goto p64
::p212::
do
do
a = upvalues[4];
(a[2][a[1]])["on_land"] = (registers[8])
end

end
::p213::
do
do
(registers)[8] = upvalues[0][47]
end

end
::p214::
do
do
(registers)[9] = registers[2]
end

end
::p215::
do
do
registers[10] = ("m_flDuckAmount")
end

end
::p216::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p251
::p218::
tick(218)
do
do
a = 8
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
::p219::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p220::
do
do
a = (8)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["length2dsqr"]
end

end
::p221::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p222::
do
do
(registers)[8] = registers[8] > 25
end

end
::p223::
do
do
a = upvalues[4];
(a[2][a[1]])["moving"] = (registers[8])
end

end
::p224::
do
do
(registers)[8] = environment["bit"]
end

end
goto p23
::p241::
branch_taken=false
do
do
if not registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p157
::p244::
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
::p245::
do
do
(registers)[9] = upvalues[0][52]
end

end
::p246::
do
do
top = 9;
(registers)[top] = registers[top]()
end

end
::p247::
do
do
registers[10] = (upvalues[9])
end

end
::p248::
do
do
(registers)[11] = registers[2]
end

end
goto p132
::p251::
do
do
a = (upvalues[7]);
(registers)[9] = a[2][a[1]]
end

end
::p252::
do
do
registers[10] = (registers[1]["chokedcommands"])
end

end
::p253::
branch_taken=false
do
do
if not (registers[10] < registers[9]) then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p60
::p256::
do
do
registers[7] = (upvalues[3])
end

end
::p257::
do
do
(registers)[8] = upvalues[0][47]
end

end
::p258::
do
do
(registers)[9] = registers[2]
end

end
::p259::
do
do
registers[10] = ("m_vecVelocity")
end

end
goto p218
::p274::
do
do
a = upvalues[4];
(a[2][a[1]])["weapon_group"] = (registers[10])
end

end
goto p64
::p276::
do
do
(registers)[3] = upvalues[0][37]
end

end
::p277::
do
do
(registers)[4] = registers[2]
end

end
::p278::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p279::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
goto p11
end
end
