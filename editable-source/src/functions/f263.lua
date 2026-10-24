
-- Function f263; 80 recovered instruction blocks.
F.f263=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f263",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f263 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p22
::p2::
tick(2)
do
do
a = (6)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p3::
do
do
(registers)[8] = registers[5][registers[2]]
end

end
::p4::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p44
::p6::
tick(6)
do
do
a = (registers)
end

end
::p7::
do
do
z = 5
q = (upvalues)
m = (5)
end

end
::p8::
do
do
q = (q[m])
m = registers
end

end
::p9::
do
do
x = 1
m = (m[x])
q = q[m]
end

end
::p10::
do
do
(a)[z] = q
end

end
::p11::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p192
::p13::
tick(13)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p159
::p22::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p23::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p52
::p27::
tick(27)
do
do
a = (5)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p28::
do
do
registers[7] = (false)
end

end
::p29::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p51
::p31::
tick(31)
do
do
registers[4] = (upvalues[3])
end

end
::p32::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
goto p62
::p34::
do
do
registers[4] = (upvalues[0])
end

end
::p35::
do
do
registers[4] = registers[1] == registers[4]
end

end
::p36::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p138
::p39::
tick(39)
do
do
a = (5)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p40::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
branch_taken=false
do
do
if registers[5] ~= "Default" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
goto p112
::p44::
tick(44)
do
do
(registers[5])[registers[2]] = registers[0]
end

end
::p45::
do
do
(registers)[6] = environment["next"]
end

end
::p46::
do
do
a = (registers)
z = 7
end

end
::p47::
do
do
q = registers
m = 5
q = (q[m])
end

end
::p48::
do
do
(a)[z] = q
end

end
::p49::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p200
::p51::
tick(51)
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
::p52::
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
::p53::
tick(53)
do
do
(registers)[5] = upvalues[5][registers[1]]
end

end
::p54::
do
do
a = (6)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p55::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p56::
do
do
a = (registers)
z = 5
end

end
::p57::
do
do
a = (a[z])
z = registers
q = (2)
end

end
::p58::
do
do
z = z[q]
end

end
::p59::
do
do
q = registers
m = 6
end

end
::p60::
do
do
q = (q[m])
a[z] = q
end

end
goto p39
::p62::
tick(62)
do
do
registers[5] = (upvalues[4])
end

end
::p63::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p6
::p102::
tick(102)
do
do
(registers)[6] = registers[5][registers[2]]
end

end
::p103::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p145
::p105::
tick(105)
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p53
::p107::
tick(107)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p149
::p109::
tick(109)
do
do
registers[6] = (upvalues[6])
end

end
::p110::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p167
::p112::
do
do
a = (5)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p113::
do
do
registers[7] = ("Default")
end

end
::p114::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p152
::p130::
tick(130)
do
do
(upvalues[5])[registers[1]] = registers[5]
end

end
::p131::
do
do
(registers)[5] = upvalues[5][registers[1]]
end

end
::p132::
do
do
(registers)[5] = registers[5][registers[2]]
end

end
goto p105
::p134::
do
do
(registers)[5] = upvalues[5][registers[1]]
end

end
::p135::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p102
::p138::
do
do
(registers)[4] = upvalues[1]["switch"]
end

end
::p139::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p140::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p141::
do
do
registers[4] = (registers[4] == "Anti-Aim")
end

end
goto p13
::p145::
do
do
a = (6)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p146::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p147::
do
do
(registers)[7] = registers[5][registers[2]]
end

end
goto p175
::p149::
do
do
registers[5] = (registers[3]["set_visible"])
end

end
::p150::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p27
::p152::
do
do
registers[5] = (upvalues[6])
end

end
::p153::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p107
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
::p159::
do
do
registers[4] = (upvalues[2])
end

end
::p160::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p161::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p31
::p165::
tick(165)
do
do
(upvalues[5])[registers[1]] = registers[0]
end

end
goto p109
::p167::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p196
::p169::
tick(169)
do
do
a = (6)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set_visible"]
end

end
::p170::
do
do
registers[8] = (true)
end

end
::p171::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p155
::p175::
branch_taken=false
do
do
if registers[6] == registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p2
::p192::
do
do
registers[5] = {
}
end

end
goto p130
::p196::
do
do
registers[6] = (registers[3]["set_visible"])
end

end
::p197::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p169
::p200::
branch_taken=false
do
do
if registers[6] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p165
end
end
