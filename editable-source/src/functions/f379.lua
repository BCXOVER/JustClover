
-- Function f379; 86 recovered instruction blocks.
F.f379=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f379",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f379 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p159
::p3::
tick(3)
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
::p4::
do
do
registers[17] = new_frame(2)
end

end
::p5::
do
do
(registers)[18] = environment["tostring"]
end

end
goto p97
::p7::
tick(7)
do
do
registers[8] = (registers[1]["damage"])
end

end
::p8::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p9::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p135
::p13::
tick(13)
do
do
registers[20] = ("text")
end

end
::p14::
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
::p15::
do
do
a = (9)
z = 0
q = registers[a]
for f = 1, 9, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p16::
do
do
a = (8)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p17::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p151
::p20::
tick(20)
do
do
registers[14] = ("text")
end

end
::p21::
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
::p22::
do
do
registers[13] = new_frame(2)
end

end
::p23::
do
do
(registers)[14] = registers[5]
end

end
goto p70
::p40::
tick(40)
do
do
registers[3] = (registers[1]["target"])
end

end
goto p142
::p51::
tick(51)
do
do
registers[11] = new_frame(2)
end

end
::p52::
do
do
(registers)[12] = registers[4]
end

end
::p53::
do
do
registers[13] = ("hit")
end

end
goto p147
::p55::
tick(55)
do
do
registers[2] = (registers[1]["id"])
end

end
::p56::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
::p57::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p155
::p60::
tick(60)
do
do
registers[2] = (registers[1]["target"])
end

end
::p61::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p64
::p63::
tick(63)
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
::p64::
tick(64)
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
registers[7] = registers[7] + 0.5
end

end
::p66::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p67::
do
do
(registers)[7] = upvalues[0]["get_player_health"]
end

end
::p68::
do
do
(registers)[8] = registers[3]
end

end
goto p89
::p70::
do
do
registers[15] = ("hit")
end

end
::p71::
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
::p72::
do
do
registers[14] = new_frame(2)
end

end
::p76::
do
do
registers[15] = (" for ")
end

end
::p77::
do
do
registers[16] = ("text")
end

end
::p78::
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
::p79::
do
do
registers[15] = new_frame(2)
end

end
::p80::
do
do
(registers)[16] = environment["tostring"]
end

end
::p81::
do
do
(registers)[17] = registers[6]
end

end
::p82::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p83::
do
do
registers[17] = ("hit")
end

end
goto p137
::p87::
tick(87)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p128
::p89::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p90::
do
do
(registers)[8] = upvalues[0]["push"]
end

end
::p91::
do
do
registers[9] = new_frame(9)
end

end
::p92::
do
do
registers[10] = new_frame(2)
end

end
::p93::
do
do
registers[11] = ("Hit ")
end

end
::p94::
do
do
registers[12] = ("text")
end

end
::p95::
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
goto p51
::p97::
do
do
(registers)[19] = registers[7]
end

end
::p98::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p99::
do
do
registers[19] = ("hit")
end

end
goto p112
::p102::
tick(102)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p40
::p112::
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
::p113::
do
do
registers[18] = new_frame(2)
end

end
::p114::
do
do
registers[19] = (" health remaining)")
end

end
goto p13
::p116::
tick(116)
do
do
registers[6] = (registers[1]["hitgroup"])
end

end
::p117::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p118::
do
do
(registers)[6] = upvalues[1][154]
end

end
::p119::
do
do
(registers)[7] = environment["tonumber"]
end

end
goto p7
::p128::
do
do
(registers)[2] = nil
end

end
::p130::
do
do
(registers)[3] = environment["tonumber"]
end

end
::p131::
do
do
registers[4] = (registers[1]["target"])
end

end
::p132::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p102
::p135::
do
do
registers[7] = (0)
end

end
goto p65
::p137::
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
::p138::
do
do
registers[16] = new_frame(2)
end

end
::p139::
do
do
registers[17] = (" damage (")
end

end
::p140::
do
do
registers[18] = ("text")
end

end
goto p3
::p142::
do
do
(registers)[4] = upvalues[0]["get_player_name"]
end

end
::p143::
do
do
(registers)[5] = registers[3]
end

end
::p144::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p145::
do
do
(registers)[5] = upvalues[0]["get_hitgroup"]
end

end
goto p116
::p147::
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
::p148::
do
do
registers[12] = new_frame(2)
end

end
::p149::
do
do
registers[13] = (" in the ")
end

end
goto p20
::p151::
do
do
registers[8] = (registers[1]["id"])
end

end
::p152::
branch_taken=false
do
do
if registers[8] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p169
::p155::
do
do
(registers)[2] = upvalues[0]["shots"]
end

end
::p156::
do
do
registers[3] = (registers[1]["id"])
end

end
::p157::
do
do
(registers)[2] = registers[2][registers[3]]
end

end
goto p87
::p159::
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
::p160::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p60
::p169::
do
do
(registers)[8] = upvalues[0]["shots"]
end

end
::p170::
do
do
registers[9] = (registers[1]["id"])
end

end
::p171::
do
do
(registers[8])[registers[9]] = registers[0]
end

end
goto p63
end
end
