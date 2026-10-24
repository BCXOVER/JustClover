
-- Function f98; 57 recovered instruction blocks.
F.f98=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f98",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f98 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p103
::p2::
tick(2)
do
do
registers[9] = (registers[4][4])
end

end
goto p120
::p4::
tick(4)
do
do
(registers)[7] = registers[10]
end

end
::p5::
do
do
registers[10] = (registers[5]["b"])
end

end
::p6::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
::p7::
do
do
registers[10] = (registers[5][3])
end

end
goto p34
::p16::
tick(16)
do
do
registers[10] = (registers[5][2])
end

end
goto p4
::p26::
tick(26)
do
do
registers[12] = (registers[2][3])
end

end
goto p154
::p28::
tick(28)
do
do
(registers)[11] = registers[7]
end

end
::p29::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p72
::p31::
tick(31)
do
do
registers[10] = (registers[5]["r"])
end

end
::p32::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p61
::p34::
do
do
(registers)[8] = registers[10]
end

end
::p35::
do
do
registers[10] = (registers[5]["a"])
end

end
::p36::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p98
::p50::
tick(50)
do
do
registers[4] = (registers[2][1])
end

end
::p51::
do
do
registers[5] = (registers[2][2])
end

end
::p52::
do
do
registers[6] = (registers[2][3])
end

end
::p53::
do
do
(registers)[7] = registers[3]
end

end
::p54::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (4)
return unpack_range(a + 5 - 2, registers, a)
end

end
::p55::
tick(55)
do
do
registers[15] = (255)
end

end
goto p129
::p57::
tick(57)
do
do
(registers)[12] = registers[8]
end

end
::p58::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p154 end
goto p26
::p61::
do
do
registers[10] = (registers[5][1])
end

end
::p64::
do
do
(registers)[6] = registers[10]
end

end
::p65::
do
do
registers[10] = (registers[5]["g"])
end

end
::p66::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p16
::p68::
tick(68)
do
do
registers[6] = (registers[4][1])
end

end
::p69::
do
do
registers[7] = (registers[4][2])
end

end
::p70::
do
do
registers[8] = (registers[4][3])
end

end
goto p2
::p72::
do
do
registers[11] = (registers[2][2])
end

end
goto p57
::p98::
do
do
registers[10] = (registers[5][4])
end

end
goto p175
::p101::
tick(101)
branch_taken=false
do
do
if registers[10] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p31
::p103::
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
::p104::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p131 end
goto p50
::p107::
do
do
(registers)[10] = environment["type"]
end

end
::p108::
do
do
(registers)[11] = registers[5]
end

end
::p109::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p110::
branch_taken=false
do
do
if registers[10] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p68
::p114::
tick(114)
do
do
for f = 6, 9, 1 do
    (registers)[f] = nil
end
end

end
::p115::
do
do
(registers)[10] = environment["type"]
end

end
::p116::
do
do
(registers)[11] = registers[5]
end

end
::p117::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p101
::p120::
tick(120)
do
do
(registers)[10] = registers[6]
end

end
::p121::
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p167
::p129::
tick(129)
do
do
a = 13
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
::p130::
do
do
if N then
    for f, F in next, N do
        if not (f >= 1) then

        else
            (F)[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = 3;
            (N)[f] = (nil)
        end
    end
end
return unpack_range(top, registers, 10)
end

end
::p131::
do
do
registers[4] = {
}
end

end
::p132::
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p133::
do
do
a = 5
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
::p134::
do
do
a = (4)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p135::
do
do
registers[5] = (registers[4][1])
end

end
goto p114
::p154::
do
do
(registers)[13] = upvalues[0][162]
end

end
::p155::
do
do
(registers)[14] = registers[3]
end

end
::p156::
do
do
(registers)[15] = registers[9]
end

end
goto p173
::p167::
do
do
registers[10] = (registers[2][1])
end

end
goto p28
::p173::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p55
::p175::
do
do
(registers)[9] = registers[10]
end

end
goto p120
end
end
