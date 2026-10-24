
-- Function f262; 66 recovered instruction blocks.
F.f262=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f262",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f262 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p105
::p2::
tick(2)
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
    (registers)[5 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p139 end
goto p117
::p17::
tick(17)
do
do
(registers)[3] = nil
end

end
goto p28
::p20::
tick(20)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p17
::p22::
tick(22)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p20
::p24::
tick(24)
do
do
a = (11)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p113
::p28::
do
do
a = (D.f263)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
::p29::
do
do
registers[5] = (1)
end

end
::p30::
do
do
registers[6] = (upvalues[4])
end

end
::p31::
do
do
registers[6] = (#registers[6])
end

end
::p32::
do
do
registers[7] = (1)
end

end
::p33::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 5
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p2 end
::p34::
do
do
registers[27] = (code_metadata)
end

end
::p35::
do
do
registers[31] = (operand_g)
end

end
::p36::
do
do
registers[33] = operand_k
end

end
::p37::
do
do
registers[31][62] = 14
end

end
::p38::
do
do
registers[33][62] = 14
end

end
::p39::
do
do
registers[27][62] = 82
end

end
::p40::
do
do
registers[33][19] = 64
end

end
::p41::
do
do
for f = 26, 33, 1 do
    (registers)[f] = nil
end
end

end
goto p119
::p49::
tick(49)
do
do
registers[12] = (registers[10]["yaw"])
end

end
::p50::
do
do
registers[12] = (registers[12]["builder_type"])
end

end
::p51::
branch_taken=false
do
do
if registers[12] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p160
::p62::
tick(62)
do
do
registers[14] = (registers[14]["builder_type"])
end

end
::p63::
do
do
a = (11)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p2
::p69::
tick(69)
do
do
registers[12] = (registers[10]["yaw_modifiers"])
end

end
::p70::
do
do
registers[12] = (registers[12]["builder_type"])
end

end
::p71::
branch_taken=false
do
do
if registers[12] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p119
::p101::
tick(101)
do
do
(registers)[3] = upvalues[1]["antiaim"]
end

end
::p102::
do
do
registers[3] = (registers[3]["conditions"])
end

end
::p103::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p22
::p105::
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
::p106::
do
do
registers[2] = (upvalues[0])
end

end
::p107::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p186
::p111::
tick(111)
branch_taken=false
do
do
if registers[10] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p156
::p113::
tick(113)
do
do
registers[11] = (registers[10]["yaw_modifiers"])
end

end
::p114::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p69
::p117::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p118::
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
::p119::
do
do
(registers)[11] = registers[4]
end

end
::p120::
do
do
(registers)[12] = registers[9]
end

end
::p121::
do
do
registers[13] = ("yaw_modifiers")
end

end
::p122::
do
do
registers[14] = (registers[10]["yaw_modifiers"])
end

end
goto p62
::p131::
tick(131)
do
do
(registers)[3] = upvalues[1]["antiaim"]
end

end
::p132::
do
do
registers[3] = (registers[3]["conditions"])
end

end
::p133::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
::p136::
tick(136)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p101
::p139::
do
do
(registers)[9] = upvalues[4][registers[8]]
end

end
::p140::
do
do
(registers)[10] = upvalues[1]["builder"]
end

end
::p141::
do
do
registers[10] = (registers[10] ~= registers[0])
end

end
goto p184
::p151::
tick(151)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p168
::p153::
tick(153)
do
do
(registers)[10] = upvalues[1]["builder"]
end

end
::p154::
do
do
(registers)[10] = registers[10][registers[9]]
end

end
goto p151
::p156::
do
do
registers[11] = (registers[10]["yaw"])
end

end
::p157::
branch_taken=false
do
do
if registers[11] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p49
::p160::
do
do
(registers)[11] = registers[4]
end

end
::p161::
do
do
a = (registers)
z = 12
end

end
::p162::
do
do
q = registers
m = 9
q = (q[m])
end

end
::p163::
do
do
(a)[z] = q
end

end
::p164::
do
do
registers[13] = ("yaw")
end

end
::p165::
do
do
registers[14] = (registers[10]["yaw"])
end

end
::p166::
do
do
registers[14] = (registers[14]["builder_type"])
end

end
goto p24
::p168::
do
do
(registers)[10] = nil
end

end
goto p111
::p184::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p153
::p186::
do
do
(registers)[3] = upvalues[1]["antiaim"]
end

end
::p187::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
::p188::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p131
end
end
