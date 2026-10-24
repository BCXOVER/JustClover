
-- Function f185; 36 recovered instruction blocks.
F.f185=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f185",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f185 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p81
::p2::
tick(2)
branch_taken=false
do
do
a = (3)
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
if branch_taken then goto p4 end
goto p84
::p4::
do
do
(registers)[6] = upvalues[3][110]
end

end
::p5::
do
do
registers[7] = (upvalues[1])
end

end
::p6::
do
do
registers[8] = (registers[5]["type"])
end

end
::p7::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p8::
do
do
(registers)[6] = upvalues[3][110]
end

end
::p9::
do
do
registers[7] = (upvalues[0])
end

end
::p10::
do
do
(registers)[8] = environment["unpack"]
end

end
::p11::
do
do
registers[9] = (registers[5]["value"])
end

end
::p12::
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
::p13::
do
do
a = 6;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p14::
do
do
(registers[1])[registers[4]] = registers[0]
end

end
goto p2
::p16::
tick(16)
do
do
registers[1] = (upvalues[0])
end

end
::p17::
do
do
(registers)[1] = upvalues[2][registers[1]]
end

end
::p18::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p27
::p20::
do
do
(registers)[2] = upvalues[3][120]
end

end
::p21::
do
do
registers[3] = (upvalues[1])
end

end
::p22::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p23::
do
do
(registers)[3] = environment["pairs"]
end

end
::p24::
do
do
(registers)[4] = registers[1]
end

end
goto p76
::p27::
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
::p28::
tick(28)
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
::p76::
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
::p77::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (3)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p2 end
::p78::
tick(78)
do
do
registers[2] = (upvalues[1])
end

end
::p79::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p28
::p81::
do
do
registers[1] = (upvalues[0])
end

end
::p82::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p78
::p84::
tick(84)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p85::
do
do
(registers)[3] = upvalues[3][110]
end

end
::p86::
do
do
registers[4] = (upvalues[1])
end

end
::p87::
do
do
(registers)[5] = registers[2]
end

end
::p88::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p89::
do
do
registers[3] = (upvalues[0])
end

end
::p90::
do
do
(upvalues[2])[registers[3]] = registers[0]
end

end
::p91::
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
end
end
