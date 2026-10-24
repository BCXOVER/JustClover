
-- Function f431; 54 recovered instruction blocks.
F.f431=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f431",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f431 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p101
::p9::
tick(9)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p10::
do
do
registers[4] = (upvalues[1])
end

end
::p11::
do
do
(registers)[5] = registers[3]
end

end
goto p123
::p13::
tick(13)
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
::p25::
tick(25)
do
do
a = 4
z = (3)
q = 4
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
::p26::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (4)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p121 end
::p27::
tick(27)
do
do
(registers)[7] = registers[3]
end

end
::p28::
do
do
a = (4)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p29::
do
do
a = (4)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["gmatch"]
end

end
::p30::
do
do
registers[6] = ("[%w%+/%=_%-]+")
end

end
goto p25
::p48::
tick(48)
branch_taken=false
do
do
if registers[4] ~= registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p96
::p50::
tick(50)
do
do
(registers)[10] = registers[6]
end

end
::p51::
do
do
a = (7)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p112
::p63::
tick(63)
branch_taken=false
do
do
if registers[4] ~= "string" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p13
::p65::
do
do
registers[4] = (upvalues[0])
end

end
::p66::
do
do
(registers)[5] = registers[1]
end

end
::p67::
do
do
(registers)[6] = registers[2]
end

end
goto p27
::p69::
tick(69)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p70::
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
::p72::
tick(72)
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (5)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p112 end
::p73::
do
do
registers[28] = operand_k
end

end
::p74::
do
do
registers[26] = (operand_g)
end

end
::p75::
do
do
registers[22] = (code_metadata)
end

end
::p76::
do
do
(registers)[27] = (operand_i)
end

end
::p77::
do
do
registers[26][90] = 7
end

end
::p78::
do
do
registers[27][90] = 0
end

end
::p79::
do
do
registers[22][90] = 7
end

end
::p80::
do
do
registers[28][83] = 111
end

end
::p81::
do
do
for f = 21, 28, 1 do
    (registers)[f] = nil
end
end

end
goto p112
::p90::
tick(90)
do
do
registers[7] = (upvalues[0])
end

end
::p91::
do
do
(registers)[8] = registers[1]
end

end
::p92::
do
do
(registers)[9] = registers[2]
end

end
goto p50
::p96::
tick(96)
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
::p97::
do
do
registers[5] = (upvalues[0])
end

end
::p98::
do
do
(registers)[6] = registers[1]
end

end
::p99::
do
do
(registers)[7] = registers[2]
end

end
goto p106
::p101::
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
::p102::
do
do
(registers)[4] = environment["type"]
end

end
::p103::
do
do
(registers)[5] = registers[3]
end

end
::p104::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p63
::p106::
do
do
(registers)[8] = registers[4]
end

end
::p107::
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p108::
do
do
a = (5)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["gmatch"]
end

end
::p109::
do
do
registers[7] = ("[%w%+/%=_%-]+")
end

end
::p110::
do
do
a = 5
z = (3)
q = 4
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
goto p72
::p112::
branch_taken=false
do
do
a = (5)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p90 end
goto p69
::p121::
tick(121)
branch_taken=false
do
do
a = (4)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p126 end
goto p9
::p123::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p124::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p48
::p126::
do
do
registers[6] = (upvalues[0])
end

end
::p127::
do
do
(registers)[7] = registers[1]
end

end
::p128::
do
do
(registers)[8] = registers[2]
end

end
::p129::
do
do
(registers)[9] = registers[5]
end

end
::p130::
do
do
a = (6)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p121
end
end
