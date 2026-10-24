
-- Function f40; 48 recovered instruction blocks.
F.f40=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f40",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f40 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p99
::p11::
tick(11)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p12::
do
do
a = (registers)
end

end
::p13::
do
do
z = (5)
q = (environment)
end

end
::p14::
do
do
m = "table"
q = (q[m])
a[z] = q
end

end
::p15::
do
do
registers[5] = (registers[5]["concat"])
end

end
::p16::
do
do
(registers)[6] = registers[4]
end

end
::p17::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p18::
do
do
(registers)[6] = environment["string"]
end

end
::p19::
do
do
registers[6] = (registers[6]["rep"])
end

end
goto p51
::p21::
tick(21)
do
do
(registers)[23] = constant_cache[7]
end

end
::p22::
do
do
registers[24] = ("\2467")
end

end
::p23::
do
do
a = (23);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p25::
tick(25)
do
do
registers[23] = registers[23] + 506
end

end
::p26::
do
do
registers[23] = 7910 + registers[23]
end

end
::p27::
do
do
registers[23] = registers[23] + -8526
end

end
::p28::
do
do
registers[20][88] = (registers[23])
end

end
::p29::
do
do
registers[22][2] = 104
end

end
::p30::
do
do
a = (15)
z = 26
end

end
::p31::
do
do
for f = a, z do
    q = (registers)
    m = (f)
    f = nil;
    (q)[m] = f
end
end

end
goto p105
::p45::
tick(45)
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p46::
do
do
registers[5] = (registers[5] .. registers[6])
end

end
::p47::
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
return registers[5]
end

end
::p51::
do
do
(registers)[7] = upvalues[0][registers[2]]
end

end
::p52::
do
do
registers[8] = (#registers[1])
end

end
::p53::
do
do
registers[8] = (registers[3] - registers[8])
end

end
goto p45
::p55::
tick(55)
do
do
registers[7] = (1)
end

end
::p56::
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
if branch_taken then goto p105 end
::p57::
branch_taken=false
do
do
if registers[23] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p21
::p76::
tick(76)
do
do
(registers)[9] = environment["bit"]
end

end
::p77::
do
do
registers[9] = (registers[9]["bxor"])
end

end
::p78::
do
do
(registers)[10] = registers[2]
end

end
::p79::
do
do
registers[11] = (upvalues[1])
end

end
::p80::
do
do
(registers)[12] = registers[1]
end

end
::p88::
do
do
(registers)[13] = registers[8]
end

end
::p89::
do
do
(registers)[14] = registers[8]
end

end
::p90::
do
do
a = 11
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
::p91::
do
do
a = 9
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p92::
do
do
a = (registers)
end

end
::p93::
do
do
z = 9
q = (upvalues)
m = (0)
end

end
::p94::
do
do
q = (q[m])
m = registers
end

end
::p95::
do
do
x = 9
m = (m[x])
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
(registers[4])[registers[8]] = registers[9]
end

end
goto p105
::p99::
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
::p100::
do
do
registers[4] = {
}
end

end
::p101::
do
do
registers[5] = (1)
end

end
::p102::
do
do
registers[6] = (#registers[1])
end

end
goto p55
::p105::
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
if branch_taken then goto p76 end
goto p11
end
end
