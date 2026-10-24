
-- Function f296; 43 recovered instruction blocks.
F.f296=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f296",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f296 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p74
::p10::
tick(10)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p104
::p20::
tick(20)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p21::
do
do
(registers)[4] = registers[3]
end

end
::p22::
do
do
if not (N) then

else
    for T, environment, W in next, N do
        if not (T >= 1) then

        else
            environment[2] = environment;
            (environment)[3] = (registers[T]);
            (environment)[1] = (3)
            N[T] = nil
        end
    end
end
return registers[4]
end

end
::p32::
tick(32)
do
do
registers[7] = (registers[6]["type"])
end

end
::p33::
branch_taken=false
do
do
if registers[7] ~= "color_picker" then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
::p37::
do
do
registers[7] = {
}
end

end
::p38::
do
do
a = (8)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p39::
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
::p40::
do
do
a = (7)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p41::
do
do
(registers[3])[registers[5]] = registers[7]
end

end
goto p119
::p62::
tick(62)
do
do
registers[7] = (registers[6]["type"])
end

end
::p63::
branch_taken=false
do
do
if registers[7] ~= "multiselect" then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p121
::p65::
tick(65)
do
do
a = (7)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p66::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p67::
do
do
(registers[3])[registers[5]] = registers[7]
end

end
goto p119
::p69::
tick(69)
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
::p70::
do
do
(registers[3])[registers[5]] = registers[10]
end

end
goto p119
::p74::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p75::
do
do
registers[3] = {
}
end

end
::p76::
do
do
(registers)[4] = environment["pairs"]
end

end
::p77::
do
do
(registers)[5] = registers[2]
end

end
::p78::
do
do
a = 4
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
::p79::
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
if branch_taken then goto p119 end
::p80::
tick(80)
do
do
registers[7] = (registers[6]["type"])
end

end
::p81::
branch_taken=false
do
do
if registers[7] ~= "label" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
goto p101
::p84::
tick(84)
do
do
a = (7)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p85::
do
do
a = 7
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
::p86::
branch_taken=false
do
do
if registers[8] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
::p88::
do
do
registers[10] = new_frame(2)
end

end
::p89::
do
do
(registers)[11] = registers[8]
end

end
::p90::
do
do
(registers)[12] = registers[9]
end

end
goto p10
::p92::
do
do
registers[7] = (registers[6]["type"])
end

end
::p93::
branch_taken=false
do
do
if registers[7] ~= "hotkey" then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p84
::p101::
do
do
registers[8] = (registers[6]["type"])
end

end
::p102::
branch_taken=false
do
do
if registers[8] ~= "button" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
goto p62
::p104::
do
do
registers[12] = (0)
end

end
goto p69
::p119::
tick(119)
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
if branch_taken then goto p80 end
goto p20
::p121::
do
do
registers[7] = (upvalues[0])
end

end
::p122::
do
do
a = (8)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p123::
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
::p124::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p125::
do
do
(registers[3])[registers[5]] = registers[7]
end

end
goto p119
end
end
