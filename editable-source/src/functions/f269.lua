
-- Function f269; 39 recovered instruction blocks.
F.f269=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f269",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f269 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p53
::p3::
tick(3)
do
do
(registers)[8] = environment["tostring"]
end

end
::p4::
do
do
(registers)[9] = registers[6]
end

end
::p5::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p90
::p21::
tick(21)
do
do
(registers)[5] = environment["pairs"]
end

end
::p22::
do
do
(registers)[6] = registers[3]
end

end
::p23::
do
do
a = 5
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
::p24::
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
if branch_taken then goto p88 end
::p25::
tick(25)
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
::p26::
tick(26)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p3
::p28::
tick(28)
do
do
(registers)[8] = registers[2]
end

end
::p29::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p38
::p32::
tick(32)
do
do
registers[5] = (upvalues[0])
end

end
::p33::
do
do
(registers)[6] = registers[3]
end

end
::p34::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p35::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p103 end
goto p101
::p38::
do
do
(registers)[8] = environment["tostring"]
end

end
::p39::
do
do
(registers)[9] = registers[6]
end

end
::p40::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
do
do
registers[8] = "." .. registers[8]
end

end
::p42::
do
do
registers[8] = (registers[2] .. registers[8])
end

end
goto p26
::p44::
tick(44)
do
do
(registers[4])[registers[2]] = registers[3]
end

end
::p45::
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
::p52::
tick(52)
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
::p53::
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
::p54::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p52
::p57::
tick(57)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p58::
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
::p84::
tick(84)
do
do
(registers)[13] = registers[4]
end

end
::p85::
do
do
a = (9)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p88::
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
if branch_taken then goto p28 end
goto p57
::p90::
do
do
a = (9)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["add_handles"]
end

end
::p91::
do
do
(registers)[11] = registers[8]
end

end
::p92::
do
do
(registers)[12] = registers[7]
end

end
goto p84
::p95::
tick(95)
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
::p101::
branch_taken=false
do
do
if registers[2] ~= "visuals.ragebot.hitchance.weapon" then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p25
::p103::
do
do
(registers)[5] = environment["type"]
end

end
::p104::
do
do
(registers)[6] = registers[3]
end

end
::p105::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p106::
branch_taken=false
do
do
if registers[5] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p95
end
end
