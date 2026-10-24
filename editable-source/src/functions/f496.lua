
-- Function f496; 53 recovered instruction blocks.
F.f496=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f496",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f496 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p11
::p5::
tick(5)
do
do
(registers)[7] = registers[1][registers[6]]
end

end
::p6::
do
do
registers[7] = (registers[7][2])
end

end
::p7::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p31
::p9::
tick(9)
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
    (registers)[6 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p56
::p11::
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
::p12::
do
do
registers[2] = ("hit")
end

end
::p13::
do
do
registers[3] = (1)
end

end
::p14::
do
do
registers[4] = (#registers[1])
end

end
::p15::
do
do
registers[5] = (1)
end

end
goto p78
::p22::
tick(22)
do
do
(registers)[16] = registers[12]
end

end
::p23::
do
do
(registers)[17] = registers[13]
end

end
::p24::
do
do
(registers)[18] = environment["tostring"]
end

end
goto p116
::p26::
tick(26)
do
do
a = 11
z = (2)
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
::p27::
do
do
(registers)[14] = upvalues[1][60]
end

end
::p28::
do
do
(registers)[15] = registers[11]
end

end
goto p22
::p31::
tick(31)
branch_taken=false
do
do
if registers[7] ~= "text" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p80
::p44::
tick(44)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p45::
do
do
(registers)[3] = upvalues[0]["console_color"]
end

end
::p46::
do
do
(registers)[4] = registers[2]
end

end
::p47::
do
do
a = 3
z = (2)
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
goto p94
::p56::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p57::
do
do
(registers)[6] = upvalues[1][60]
end

end
::p58::
do
do
registers[7] = (220)
end

end
::p59::
do
do
registers[8] = (220)
end

end
::p60::
do
do
registers[9] = (220)
end

end
::p61::
do
do
registers[10] = ("\010\000")
end

end
::p62::
do
do
a = (6)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p63::
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
(registers)[9] = registers[5]
end

end
::p65::
do
do
registers[10] = ("[andromeda] \000")
end

end
::p66::
do
do
a = (6)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p67::
do
do
registers[6] = (1)
end

end
::p68::
do
do
registers[7] = (#registers[1])
end

end
goto p82
::p78::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 3
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p90 end
goto p31
::p80::
do
do
(registers)[2] = registers[7]
end

end
goto p44
::p82::
do
do
registers[8] = (1)
end

end
::p83::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 6
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p9 end
::p84::
do
do
registers[40] = operand_k
end

end
::p85::
do
do
registers[34] = (code_metadata)
end

end
::p86::
do
do
registers[34][116] = 82
end

end
::p87::
do
do
registers[40][2] = 115
end

end
::p88::
do
do
for f = 33, 40, 1 do
    (registers)[f] = nil
end
end

end
goto p116
::p90::
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
    (registers)[3 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p44
::p94::
do
do
(registers)[6] = upvalues[1][60]
end

end
::p95::
do
do
(registers)[7] = registers[3]
end

end
::p96::
do
do
(registers)[8] = registers[4]
end

end
goto p64
::p116::
do
do
registers[19] = (registers[10][1])
end

end
::p117::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p118::
do
do
registers[18] = registers[18] .. "\000"
end

end
::p119::
do
do
a = (14)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p9
::p137::
do
do
(registers)[10] = registers[1][registers[9]]
end

end
::p138::
do
do
(registers)[11] = upvalues[0]["console_color"]
end

end
::p139::
do
do
registers[12] = (registers[10][2])
end

end
goto p26
end
end
