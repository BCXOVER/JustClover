
-- Function f324; 54 recovered instruction blocks.
F.f324=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f324",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f324 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p7
::p7::
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
::p8::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p92
::p11::
tick(11)
do
do
a = (registers)
z = 5
end

end
::p12::
do
do
q = true;
(a)[z] = (q)
end

end
::p14::
tick(14)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p15::
do
do
(registers)[6] = registers[5]
end

end
::p16::
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
return registers[6]
end

end
::p17::
tick(17)
do
do
registers[5] = (false)
end

end
::p18::
do
do
(registers)[6] = environment["pairs"]
end

end
::p19::
do
do
(registers)[7] = registers[3]
end

end
::p21::
do
do
a = 6
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
::p22::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (6)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p62 end
::p23::
do
do
registers[20] = (275)
end

end
goto p123
::p62::
tick(62)
branch_taken=false
do
do
a = (6)
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
if branch_taken then goto p76 end
goto p14
::p73::
tick(73)
do
do
a = (registers)
z = 5
end

end
::p74::
do
do
q = false;
(a)[z] = (q)
end

end
::p75::
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
::p76::
do
do
(registers)[9] = environment["bit"]
end

end
::p77::
do
do
registers[9] = (registers[9]["band"])
end

end
::p78::
do
do
registers[10] = (registers[4]["flags"])
end

end
goto p129
::p80::
tick(80)
do
do
registers[3] = (false)
end

end
::p81::
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
return registers[3]
end

end
::p90::
tick(90)
branch_taken=false
do
do
if registers[8] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p11
::p92::
do
do
(registers)[3] = upvalues[0][50]
end

end
::p93::
do
do
(registers)[4] = registers[1]
end

end
::p94::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p95::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p80
::p97::
do
do
registers[3] = {
}
end

end
::p98::
do
do
registers[3][1] = "Helmet"
end

end
::p99::
do
do
registers[3][2] = "Kevlar"
end

end
::p100::
do
do
registers[3][4] = "Helmet + Kevlar"
end

end
::p101::
do
do
registers[3][8] = "Zoom"
end

end
::p102::
do
do
registers[3][16] = "Blind"
end

end
::p103::
do
do
registers[3][32] = "Reload"
end

end
::p104::
do
do
registers[3][64] = "Bomb"
end

end
::p105::
do
do
registers[3][128] = "Vip"
end

end
::p106::
do
do
registers[3][256] = "Defuse"
end

end
::p107::
do
do
registers[3][512] = "Fakeduck"
end

end
::p114::
do
do
registers[3][1024] = "Pin pulled"
end

end
::p115::
do
do
registers[3][2048] = "Hit"
end

end
::p116::
do
do
registers[3][4096] = "Occluded"
end

end
::p117::
do
do
registers[3][8192] = "Exploiter"
end

end
::p118::
do
do
(registers)[4] = upvalues[0][41]
end

end
::p119::
do
do
(registers)[5] = registers[1]
end

end
::p120::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p121::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p73
::p123::
do
do
registers[20] = 28824 + registers[20]
end

end
::p124::
do
do
registers[20] = registers[20] + -28733
end

end
::p125::
do
do
registers[13][81] = (registers[20])
end

end
::p126::
do
do
registers[19][142] = 79
end

end
::p127::
do
do
for f = 12, 24, 1 do
    (registers)[f] = nil
end
end

end
goto p80
::p129::
do
do
(registers)[11] = registers[7]
end

end
::p130::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p131::
branch_taken=false
do
do
if registers[9] ~= registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p90
end
end
