
-- Function f367; 43 recovered instruction blocks.
F.f367=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f367",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f367 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p45
::p19::
tick(19)
do
do
registers[5] = (registers[2]["slots"])
end

end
::p20::
do
do
(registers)[5] = registers[5][registers[4]]
end

end
::p21::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p22::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p92
::p24::
tick(24)
do
do
(registers)[2] = upvalues[0]["custom"]
end

end
::p25::
do
do
(registers)[3] = upvalues[1][151]
end

end
::p26::
do
do
registers[4] = (2)
end

end
::p27::
do
do
(registers)[5] = upvalues[1][162]
end

end
::p28::
do
do
registers[6] = (10)
end

end
::p29::
do
do
(registers)[7] = upvalues[1][154]
end

end
::p30::
do
do
registers[8] = (registers[2]["count"])
end

end
::p31::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p32::
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
::p33::
do
do
a = 7
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
::p34::
do
do
a = 5
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
::p35::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p36::
do
do
(registers)[4] = upvalues[2]["inverts"]
end

end
::p37::
do
do
registers[4] = registers[4] % registers[3]
end

end
::p38::
do
do
registers[4] = registers[4] + 1
end

end
goto p19
::p40::
tick(40)
do
do
(registers)[2] = upvalues[0]["left"]
end

end
::p41::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p42::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p50
::p45::
do
do
(registers)[1] = upvalues[0]["values"]
end

end
::p46::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p47::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p48::
branch_taken=false
do
do
if registers[1] ~= "Double" then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p40
::p50::
do
do
(registers)[3] = upvalues[0]["right"]
end

end
::p51::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p52::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p53::
do
do
registers[4] = (2)
end

end
goto p58
::p55::
tick(55)
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
a = (6)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p56::
tick(56)
do
do
registers[5] = (1)
end

end
::p57::
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
a = (3)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p58::
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
a = (2)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p83::
branch_taken=false
do
do
if registers[1] ~= "Custom" then
    branch_taken=true
end
end

end
if branch_taken then goto p86 end
goto p24
::p86::
do
do
(registers)[2] = upvalues[0]["offset"]
end

end
::p87::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p88::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p89::
do
do
(registers)[3] = registers[2]
end

end
::p90::
do
do
(registers)[4] = registers[2]
end

end
goto p56
::p92::
do
do
(registers)[6] = registers[5]
end

end
::p93::
do
do
(registers)[7] = registers[5]
end

end
::p94::
do
do
(registers)[8] = registers[4]
end

end
goto p55
end
end
