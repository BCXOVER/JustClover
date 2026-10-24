
-- Function f99; 53 recovered instruction blocks.
F.f99=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f99",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f99 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p23
::p8::
tick(8)
do
do
registers[4] = (0)
end

end
goto p29
::p10::
tick(10)
do
do
(registers)[7] = upvalues[0]["lerp"]
end

end
::p11::
do
do
registers[8] = (registers[1]["g"])
end

end
::p12::
do
do
registers[9] = (registers[2]["g"])
end

end
goto p88
::p14::
tick(14)
do
do
(registers)[9] = upvalues[0]["lerp"]
end

end
::p15::
do
do
a = registers
z = (10)
q = (registers)
end

end
::p16::
do
do
m = 1
q = q[m]
end

end
::p17::
do
do
m = ("a")
q = q[m]
end

end
::p18::
do
do
(a)[z] = q
end

end
::p19::
do
do
registers[11] = (registers[2]["a"])
end

end
goto p143
::p23::
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
::p24::
do
do
(registers)[4] = environment["type"]
end

end
::p25::
do
do
(registers)[5] = registers[3]
end

end
::p26::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p27::
branch_taken=false
do
do
if registers[4] ~= "boolean" then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p101
::p29::
tick(29)
do
do
(registers)[3] = registers[4]
end

end
goto p109
::p88::
do
do
(registers)[10] = registers[3]
end

end
::p89::
do
do
a = 7
z = (4)
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
::p90::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p91::
do
do
(registers)[7] = upvalues[0]["round"]
end

end
::p92::
do
do
(registers)[8] = upvalues[0]["lerp"]
end

end
::p93::
do
do
a = registers
z = (9)
q = (registers)
end

end
::p94::
do
do
m = 1
q = q[m]
end

end
::p95::
do
do
m = ("b")
q = q[m]
end

end
::p96::
do
do
(a)[z] = q
end

end
::p97::
do
do
registers[10] = (registers[2]["b"])
end

end
goto p117
::p99::
tick(99)
do
do
registers[4] = (1)
end

end
goto p114
::p101::
do
do
(registers)[4] = registers[3]
end

end
::p102::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p114 end
goto p99
::p104::
tick(104)
do
do
registers[7] = (1)
end

end
::p105::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p106::
do
do
(registers)[3] = registers[4]
end

end
::p107::
do
do
(registers)[4] = upvalues[1]["new"]
end

end
goto p122
::p109::
do
do
(registers)[4] = upvalues[0]["clamp"]
end

end
::p110::
do
do
(registers)[5] = registers[3]
end

end
::p111::
do
do
registers[6] = (0)
end

end
goto p104
::p114::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p8
::p117::
do
do
(registers)[11] = registers[3]
end

end
::p118::
do
do
a = 8
z = (4)
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
::p119::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p120::
do
do
(registers)[8] = upvalues[0]["round"]
end

end
goto p14
::p122::
do
do
(registers)[5] = upvalues[0]["round"]
end

end
::p123::
do
do
(registers)[6] = upvalues[0]["lerp"]
end

end
::p124::
do
do
registers[7] = (registers[1]["r"])
end

end
::p137::
do
do
registers[8] = (registers[2]["r"])
end

end
::p138::
do
do
(registers)[9] = registers[3]
end

end
::p139::
do
do
a = 6
z = (4)
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
::p140::
do
do
a = 5
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p141::
do
do
(registers)[6] = upvalues[0]["round"]
end

end
goto p10
::p143::
do
do
(registers)[12] = registers[3]
end

end
::p144::
do
do
a = 9
z = (4)
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
::p145::
do
do
a = 8
z = (0)
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
::p146::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
a = 4
return registers[a](unpack_range(top, registers, a + 1))
end

end
end
end
