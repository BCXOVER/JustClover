
-- Function f471; 103 recovered instruction blocks.
F.f471=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f471",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f471 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p263
::p8::
tick(8)
do
do
registers[4] = (registers[1]["attacker"])
end

end
::p9::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p43 end
goto p236
::p18::
tick(18)
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
::p19::
tick(19)
branch_taken=false
do
do
if registers[4] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p98
::p43::
do
do
(registers)[3] = upvalues[0][54]
end

end
::p44::
do
do
(registers)[4] = environment["tonumber"]
end

end
::p45::
do
do
registers[5] = (registers[1]["userid"])
end

end
::p46::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p47::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p164
::p49::
tick(49)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p258 end
goto p142
::p66::
do
do
(registers)[5] = upvalues[0][154]
end

end
::p67::
do
do
(registers)[6] = environment["tonumber"]
end

end
::p68::
do
do
registers[7] = (registers[1]["dmg_health"])
end

end
::p69::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p200
::p78::
tick(78)
do
do
registers[5] = (registers[1]["attacker"])
end

end
::p79::
tick(79)
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p80::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p211
::p88::
tick(88)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p89::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p224
::p98::
tick(98)
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
::p99::
tick(99)
do
do
a = (11)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p100::
do
do
registers[12] = new_frame(2)
end

end
::p101::
do
do
(registers)[13] = registers[8]
end

end
::p102::
do
do
registers[14] = ("got")
end

end
::p103::
do
do
a = (12)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p104::
do
do
registers[13] = new_frame(2)
end

end
goto p136
::p106::
tick(106)
do
do
a = (10)
z = 0
q = registers[a]
for f = 1, 9, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p107::
do
do
a = (9)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p108::
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
::p115::
tick(115)
do
do
(registers)[2] = upvalues[0][32]
end

end
::p116::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p117::
do
do
registers[3] = (registers[1]["userid"])
end

end
::p118::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p236 end
goto p8
::p120::
tick(120)
do
do
registers[16] = new_frame(2)
end

end
::p121::
do
do
(registers)[17] = environment["tostring"]
end

end
::p122::
do
do
(registers)[18] = registers[5]
end

end
::p123::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p124::
do
do
registers[18] = ("got")
end

end
::p125::
do
do
a = (16)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p126::
do
do
registers[17] = new_frame(2)
end

end
goto p146
::p128::
tick(128)
do
do
registers[16] = ("got")
end

end
::p129::
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
::p130::
do
do
registers[15] = new_frame(2)
end

end
::p131::
do
do
registers[16] = (" for ")
end

end
::p132::
do
do
registers[17] = ("text")
end

end
::p133::
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
goto p120
::p136::
do
do
registers[14] = (" in the ")
end

end
::p137::
do
do
registers[15] = ("text")
end

end
::p138::
do
do
a = (13)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p139::
do
do
registers[14] = new_frame(2)
end

end
::p140::
do
do
(registers)[15] = registers[7]
end

end
goto p128
::p142::
do
do
(registers)[9] = upvalues[1]["get_player_health"]
end

end
::p143::
do
do
(registers)[10] = registers[2]
end

end
::p144::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p258
::p146::
do
do
registers[18] = (" damage (")
end

end
::p147::
do
do
registers[19] = ("text")
end

end
::p148::
do
do
a = (17)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p149::
do
do
registers[18] = new_frame(2)
end

end
::p150::
do
do
(registers)[19] = environment["tostring"]
end

end
::p151::
do
do
(registers)[20] = registers[6]
end

end
::p152::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p166
::p155::
tick(155)
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
::p164::
do
do
registers[4] = (registers[1]["userid"])
end

end
goto p88
::p166::
do
do
registers[20] = ("got")
end

end
::p167::
do
do
a = (18)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p168::
do
do
registers[19] = new_frame(2)
end

end
goto p219
::p178::
tick(178)
do
do
(registers)[9] = upvalues[1]["push"]
end

end
::p179::
do
do
registers[10] = new_frame(9)
end

end
::p180::
do
do
registers[11] = new_frame(2)
end

end
::p181::
do
do
registers[12] = ("Got Hit by ")
end

end
::p182::
do
do
registers[13] = ("text")
end

end
goto p99
::p184::
tick(184)
do
do
registers[8] = (registers[1]["hitgroup"])
end

end
::p185::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p186::
do
do
(registers)[8] = upvalues[1]["get_player_name"]
end

end
::p187::
do
do
(registers)[9] = registers[4]
end

end
::p188::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p178
::p200::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p227 end
goto p232
::p211::
branch_taken=false
do
do
if registers[4] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p19
::p213::
tick(213)
do
do
(registers)[4] = upvalues[0][54]
end

end
::p214::
do
do
(registers)[5] = environment["tonumber"]
end

end
::p215::
do
do
registers[6] = (registers[1]["attacker"])
end

end
::p216::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p217::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p78
::p219::
do
do
registers[20] = (" health remaining)")
end

end
::p220::
do
do
registers[21] = ("text")
end

end
::p221::
do
do
a = (19)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p106
::p224::
branch_taken=false
do
do
if registers[3] == registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p213 end
goto p155
::p227::
tick(227)
do
do
registers[6] = registers[6] + 0.5
end

end
::p228::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p229::
do
do
(registers)[6] = upvalues[0][151]
end

end
::p230::
do
do
registers[7] = (0)
end

end
goto p238
::p232::
do
do
registers[6] = (0)
end

end
goto p227
::p236::
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
::p238::
do
do
(registers)[8] = upvalues[0][154]
end

end
::p239::
do
do
(registers)[9] = environment["tonumber"]
end

end
::p240::
do
do
registers[10] = (registers[1]["health"])
end

end
::p241::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p49
::p258::
do
do
registers[9] = registers[9] + 0.5
end

end
::p259::
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
::p260::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p261::
do
do
(registers)[7] = upvalues[1]["get_hitgroup"]
end

end
goto p184
::p263::
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
::p264::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p115 end
goto p18
end
end
