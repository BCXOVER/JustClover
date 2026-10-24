
-- Function f501; 64 recovered instruction blocks.
F.f501=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f501",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f501 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p96
::p2::
tick(2)
do
do
registers[10] = (registers[6]["yaw_modifiers"])
end

end
::p3::
do
do
registers[10] = (registers[10]["builder_type"])
end

end
::p4::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p52
::p6::
tick(6)
do
do
registers[3] = (1)
end

end
::p7::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 1
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p127 end
goto p52
::p20::
tick(20)
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p21::
branch_taken=false
do
do
if registers[11] ~= "Hidden" then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p57
::p24::
tick(24)
do
do
(registers)[7] = nil
end

end
goto p69
::p26::
tick(26)
do
do
registers[9] = (registers[6]["yaw_modifiers"])
end

end
::p27::
do
do
registers[9] = (registers[9]["builder_type"])
end

end
::p28::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p29::
do
do
registers[11] = ("Default")
end

end
goto p103
::p31::
tick(31)
do
do
registers[11] = (registers[6]["yaw"])
end

end
::p32::
do
do
a = registers
z = (11)
q = (registers)
end

end
::p33::
do
do
m = 11
q = q[m]
end

end
::p34::
do
do
m = ("builder_type")
q = q[m]
end

end
::p35::
do
do
(a)[z] = q
end

end
::p36::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p20
::p38::
tick(38)
do
do
(registers)[7] = upvalues[1]["defensive"]
end

end
::p39::
do
do
(registers)[7] = registers[7][registers[5]]
end

end
goto p94
::p48::
tick(48)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p66
::p52::
do
do
registers[11] = (registers[6]["yaw_modifiers"])
end

end
::p53::
do
do
registers[11] = (registers[11]["builder_type"])
end

end
::p54::
do
do
a = (11)
z = registers[11]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p55::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p61
::p57::
do
do
registers[9] = (registers[6]["yaw"])
end

end
::p58::
do
do
registers[9] = (registers[9]["builder_type"])
end

end
::p59::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
goto p112
::p61::
branch_taken=false
do
do
if registers[11] ~= "Hidden" then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p26
::p63::
tick(63)
do
do
registers[8] = (registers[7]["toggle_builder"])
end

end
::p64::
branch_taken=false
do
do
if registers[8] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p76
::p66::
do
do
(registers)[6] = nil
end

end
goto p136
::p69::
tick(69)
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p132
::p71::
tick(71)
do
do
(registers)[5] = upvalues[0][registers[4]]
end

end
::p72::
do
do
(registers)[6] = upvalues[1]["builder"]
end

end
::p73::
do
do
registers[6] = (registers[6] ~= registers[0])
end

end
::p74::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p109
::p76::
do
do
registers[8] = (registers[7]["toggle_builder"])
end

end
::p77::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p78::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p134
::p80::
tick(80)
do
do
registers[10] = (registers[6]["yaw"])
end

end
::p81::
do
do
registers[10] = (registers[10]["builder_type"])
end

end
::p82::
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p31
::p94::
tick(94)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p24
::p96::
do
do
registers[1] = (1)
end

end
::p97::
do
do
registers[2] = (upvalues[0])
end

end
::p98::
do
do
registers[2] = (#registers[2])
end

end
goto p6
::p103::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p127
::p105::
tick(105)
do
do
registers[9] = (registers[6]["yaw"])
end

end
::p106::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p80
::p109::
do
do
(registers)[6] = upvalues[1]["builder"]
end

end
::p110::
do
do
(registers)[6] = registers[6][registers[5]]
end

end
goto p48
::p112::
do
do
registers[11] = ("Default")
end

end
::p113::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p129
::p116::
tick(116)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p117::
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
::p127::
tick(127)
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
    (registers)[1 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p116
::p129::
do
do
registers[9] = (registers[6]["yaw_modifiers"])
end

end
::p130::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p2
::p132::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p63
::p134::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p105
::p136::
do
do
(registers)[7] = upvalues[1]["defensive"]
end

end
::p137::
do
do
registers[7] = (registers[7] ~= registers[0])
end

end
::p138::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p38
end
end
