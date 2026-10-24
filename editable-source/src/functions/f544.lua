
-- Function f544; 55 recovered instruction blocks.
F.f544=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f544",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f544 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p41
::p2::
tick(2)
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p3::
do
do
(registers)[9] = environment["cvar"]
end

end
::p4::
do
do
registers[9] = (registers[9]["cl_crosshaircolor_g"])
end

end
::p5::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p6::
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
::p7::
do
do
a = (1)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p8::
do
do
registers[2] = ("")
end

end
::p9::
do
do
registers[3] = (1)
end

end
goto p38
::p29::
tick(29)
do
do
registers[6] = (registers[6]["mp_maxrounds"])
end

end
::p30::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p31::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p32::
do
do
registers[7] = (upvalues[0])
end

end
::p33::
do
do
(registers)[8] = environment["ui"]
end

end
::p34::
do
do
registers[8] = (registers[8]["reference"])
end

end
goto p47
::p38::
do
do
registers[4] = (#registers[1])
end

end
::p39::
do
do
registers[5] = (1)
end

end
::p40::
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
if branch_taken then goto p86 end
::p41::
do
do
registers[1] = new_frame(7)
end

end
::p42::
do
do
(registers)[2] = environment["cvar"]
end

end
::p43::
do
do
registers[2] = (registers[2]["sv_airaccelerate"])
end

end
::p44::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p45::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p66
::p47::
do
do
registers[9] = ("MISC")
end

end
::p48::
do
do
registers[10] = ("Settings")
end

end
::p49::
do
do
registers[11] = ("Menu color")
end

end
::p50::
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
::p51::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p52::
do
do
(registers)[8] = environment["cvar"]
end

end
::p53::
do
do
registers[8] = (registers[8]["cl_crosshaircolor_r"])
end

end
::p54::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
goto p2
::p56::
tick(56)
do
do
registers[7] = ("Aimbot")
end

end
::p57::
do
do
registers[8] = ("Minimum hit chance")
end

end
::p58::
do
do
a = 5
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
::p59::
do
do
a = 4
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p60::
do
do
(registers)[5] = environment["cvar"]
end

end
::p61::
do
do
registers[5] = (registers[5]["mp_maxmoney"])
end

end
::p62::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p63::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p64::
do
do
(registers)[6] = environment["cvar"]
end

end
goto p29
::p66::
do
do
(registers)[3] = environment["cvar"]
end

end
::p67::
do
do
registers[3] = (registers[3]["mp_freezetime"])
end

end
::p68::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p69::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p88
::p81::
tick(81)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p82::
do
do
(registers)[3] = upvalues[1]["hmac_sha256"]
end

end
::p83::
do
do
registers[4] = ("bebra")
end

end
::p84::
do
do
(registers)[5] = registers[2]
end

end
::p85::
do
do
a = (3)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p86::
tick(86)
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
if branch_taken then goto p95 end
goto p81
::p88::
do
do
registers[4] = (upvalues[0])
end

end
::p89::
do
do
(registers)[5] = environment["ui"]
end

end
::p90::
do
do
registers[5] = (registers[5]["reference"])
end

end
::p91::
do
do
registers[6] = ("Rage")
end

end
goto p56
::p95::
do
do
(registers)[7] = registers[1][registers[6]]
end

end
::p96::
do
do
registers[2] = (registers[2] .. registers[7])
end

end
goto p86
end
end
