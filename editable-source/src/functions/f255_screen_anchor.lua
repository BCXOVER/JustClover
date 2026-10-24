
-- Function f255; 53 recovered instruction blocks.
F.f255=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f255",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f255 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p117
::p2::
tick(2)
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p3::
do
do
(registers)[10] = registers[8]
end

end
::p4::
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
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p18::
tick(18)
branch_taken=false
do
do
if registers[3] ~= "Bottom Left" then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p40
::p29::
tick(29)
do
do
registers[10] = (registers[10] - registers[8])
end

end
::p30::
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
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p40::
do
do
(registers)[9] = registers[7]
end

end
::p41::
do
do
registers[10] = (registers[6] - registers[2])
end

end
::p42::
do
do
registers[10] = (registers[10] - registers[8])
end

end
::p43::
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
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p55::
branch_taken=false
do
do
if registers[3] ~= "Bottom Center" then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p140
::p58::
branch_taken=false
do
do
if registers[3] ~= "Bottom Right" then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p109
::p63::
tick(63)
do
do
(registers)[9] = upvalues[0][154]
end

end
::p64::
do
do
registers[10] = (registers[5] - registers[1])
end

end
::p65::
do
do
registers[10] = (registers[10] * 0.5)
end

end
::p66::
do
do
registers[10] = registers[10] + 0.5
end

end
goto p2
::p75::
tick(75)
do
do
registers[10] = (registers[6] - registers[2])
end

end
::p76::
do
do
registers[10] = (registers[10] - registers[8])
end

end
::p77::
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
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p87::
tick(87)
branch_taken=false
do
do
if registers[3] ~= "Top Center" then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p63
::p89::
tick(89)
do
do
(registers)[9] = registers[7]
end

end
::p90::
do
do
(registers)[10] = registers[8]
end

end
::p91::
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
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p109::
do
do
registers[9] = (registers[5] - registers[1])
end

end
::p110::
do
do
registers[9] = (registers[9] - registers[7])
end

end
::p111::
do
do
registers[10] = (registers[6] - registers[2])
end

end
goto p29
::p113::
do
do
registers[9] = (registers[5] - registers[1])
end

end
::p114::
do
do
registers[9] = (registers[9] - registers[7])
end

end
::p115::
do
do
(registers)[10] = registers[8]
end

end
::p116::
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
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p117::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p118::
do
do
(registers)[5] = upvalues[0][57]
end

end
::p119::
do
do
a = 5
z = (1)
q = 3
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
::p120::
do
do
(registers)[7] = upvalues[0][151]
end

end
::p121::
do
do
registers[8] = (3)
end

end
::p122::
do
do
(registers)[9] = upvalues[0][154]
end

end
::p123::
do
do
(registers)[10] = 5 * registers[4]
end

end
::p124::
do
do
registers[10] = registers[10] + 0.5
end

end
::p125::
do
do
a = 9
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
::p126::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p127::
do
do
(registers)[8] = upvalues[0][151]
end

end
::p128::
do
do
registers[9] = (3)
end

end
::p130::
do
do
(registers)[10] = upvalues[0][154]
end

end
::p131::
do
do
(registers)[11] = 5 * registers[4]
end

end
::p132::
do
do
registers[11] = registers[11] + 0.5
end

end
::p133::
do
do
a = 10
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
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p135::
branch_taken=false
do
do
if registers[3] ~= "Top Left" then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p89
::p140::
do
do
(registers)[9] = upvalues[0][154]
end

end
::p141::
do
do
registers[10] = (registers[5] - registers[1])
end

end
::p142::
do
do
registers[10] = (registers[10] * 0.5)
end

end
::p143::
do
do
registers[10] = registers[10] + 0.5
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
goto p75
end
end
