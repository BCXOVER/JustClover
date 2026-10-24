
-- Function f470; 75 recovered instruction blocks.
F.f470=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f470",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f470 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p58
::p23::
tick(23)
do
do
registers[7] = (registers[1]["id"])
end

end
::p24::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p120
::p34::
tick(34)
do
do
registers[6] = (registers[2]["hitgroup"])
end

end
goto p133
::p45::
tick(45)
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
::p46::
do
do
registers[12] = new_frame(2)
end

end
::p47::
do
do
(registers)[13] = registers[5]
end

end
::p48::
do
do
registers[14] = ("miss")
end

end
::p49::
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
::p50::
do
do
registers[13] = new_frame(2)
end

end
::p51::
do
do
registers[14] = (" due to ")
end

end
goto p78
::p54::
tick(54)
do
do
(registers)[2] = upvalues[0]["shots"]
end

end
::p55::
do
do
registers[3] = (registers[1]["id"])
end

end
::p56::
do
do
(registers)[2] = registers[2][registers[3]]
end

end
goto p66
::p58::
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
::p59::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p160
::p61::
tick(61)
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
::p62::
tick(62)
do
do
registers[2] = (registers[1]["id"])
end

end
::p63::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
::p64::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p54
::p66::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p180
::p74::
tick(74)
do
do
(registers)[5] = upvalues[0]["get_hitgroup"]
end

end
::p75::
do
do
registers[6] = (registers[1]["hitgroup"])
end

end
::p76::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p182
::p78::
do
do
registers[15] = ("text")
end

end
::p79::
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
::p80::
do
do
registers[14] = new_frame(2)
end

end
::p81::
do
do
(registers)[15] = registers[6]
end

end
::p82::
do
do
registers[16] = ("miss")
end

end
::p83::
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
goto p99
::p93::
tick(93)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p94::
do
do
registers[6] = (registers[1]["reason"])
end

end
::p95::
do
do
registers[6] = (registers[6] == "?")
end

end
::p97::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p172
::p99::
do
do
a = (8)
z = 0
q = registers[a]
for f = 1, 6, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p100::
do
do
a = (7)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p101::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
goto p23
::p103::
tick(103)
do
do
registers[6] = (0)
end

end
goto p93
::p105::
tick(105)
do
do
registers[11] = new_frame(2)
end

end
::p106::
do
do
registers[12] = (" in the ")
end

end
::p107::
do
do
registers[13] = ("text")
end

end
goto p45
::p109::
tick(109)
do
do
(registers)[6] = environment["tostring"]
end

end
::p110::
do
do
registers[7] = (registers[1]["reason"])
end

end
::p111::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p131 end
goto p178
::p113::
tick(113)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p124 end
goto p109
::p116::
tick(116)
do
do
registers[3] = (registers[1]["target"])
end

end
goto p174
::p120::
do
do
(registers)[7] = upvalues[0]["shots"]
end

end
::p121::
do
do
registers[8] = (registers[1]["id"])
end

end
::p122::
do
do
(registers[7])[registers[8]] = registers[0]
end

end
goto p61
::p124::
tick(124)
do
do
(registers)[7] = upvalues[0]["push"]
end

end
::p125::
do
do
registers[8] = new_frame(6)
end

end
::p126::
do
do
registers[9] = new_frame(2)
end

end
::p127::
do
do
registers[10] = ("Missed ")
end

end
::p128::
do
do
registers[11] = ("text")
end

end
::p129::
do
do
a = (9)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p135
::p131::
tick(131)
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p124
::p133::
tick(133)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p103
::p135::
do
do
registers[10] = new_frame(2)
end

end
::p136::
do
do
(registers)[11] = registers[4]
end

end
::p137::
do
do
registers[12] = ("miss")
end

end
::p138::
do
do
a = (10)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p105
::p154::
tick(154)
do
do
(registers)[3] = environment["tonumber"]
end

end
::p155::
do
do
registers[4] = (registers[1]["target"])
end

end
::p156::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p157::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p174 end
goto p116
::p159::
tick(159)
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
::p160::
do
do
registers[2] = (registers[1]["target"])
end

end
::p161::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p159
::p172::
do
do
registers[6] = ("resolver")
end

end
goto p113
::p174::
do
do
(registers)[4] = upvalues[0]["get_player_name"]
end

end
::p175::
do
do
(registers)[5] = registers[3]
end

end
::p176::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p74
::p178::
do
do
registers[7] = ("?")
end

end
goto p131
::p180::
do
do
(registers)[2] = nil
end

end
goto p154
::p182::
do
do
registers[6] = (registers[2] ~= registers[0])
end

end
::p183::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p34
end
end
