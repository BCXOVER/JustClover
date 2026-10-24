
-- Function f36; 69 recovered instruction blocks.
F.f36=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f36",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f36 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p90
::p2::
tick(2)
do
do
registers[9] = (4)
end

end
::p3::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p4::
do
do
registers[8] = (upvalues[2])
end

end
goto p160
::p39::
tick(39)
do
do
registers[5] = (upvalues[2])
end

end
::p40::
do
do
registers[6] = (registers[2][2])
end

end
::p41::
do
do
registers[7] = (4)
end

end
goto p121
::p57::
tick(57)
do
do
(registers)[2] = upvalues[0]["initH256"]
end

end
::p58::
do
do
registers[3] = {
}
end

end
::p59::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p154
::p73::
tick(73)
do
do
(registers)[7] = upvalues[0]["digestblock"]
end

end
::p74::
do
do
a = (registers)
z = 8
end

end
::p75::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p76::
do
do
(a)[z] = q
end

end
::p77::
do
do
(registers)[9] = registers[6]
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
a = (7)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p99
::p90::
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
::p91::
do
do
(registers)[2] = upvalues[0]["preproc"]
end

end
::p92::
do
do
(registers)[3] = registers[1]
end

end
::p93::
do
do
registers[4] = (#registers[1])
end

end
::p94::
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p95::
do
do
a = (registers)
z = 1
end

end
::p96::
do
do
q = registers
m = 2
q = (q[m])
end

end
::p97::
do
do
(a)[z] = q
end

end
goto p57
::p99::
tick(99)
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
if branch_taken then goto p73 end
::p101::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p102::
do
do
registers[3] = (upvalues[1])
end

end
::p103::
do
do
registers[4] = (upvalues[2])
end

end
goto p150
::p106::
tick(106)
do
do
registers[10] = (registers[2][6])
end

end
::p107::
do
do
registers[11] = (4)
end

end
::p108::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p109::
do
do
a = (registers)
end

end
::p110::
do
do
z = 10
end

end
::p111::
do
do
q = (upvalues)
end

end
::p112::
do
do
m = 2
q = (q[m])
a[z] = q
end

end
::p113::
do
do
registers[11] = (registers[2][7])
end

end
::p114::
do
do
registers[12] = (4)
end

end
::p115::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p116::
do
do
registers[11] = (upvalues[2])
end

end
goto p135
::p121::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p122::
do
do
registers[6] = (upvalues[2])
end

end
::p123::
do
do
registers[7] = (registers[2][3])
end

end
::p124::
do
do
a = (registers)
z = 8
end

end
::p125::
do
do
q = 4;
(a)[z] = (q)
end

end
goto p146
::p135::
do
do
registers[12] = (registers[2][8])
end

end
::p136::
do
do
registers[13] = (4)
end

end
::p137::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p138::
do
do
registers[10] = (registers[10] .. registers[11])
end

end
::p139::
do
do
registers[9] = (registers[9] .. registers[10])
end

end
::p140::
do
do
registers[8] = (registers[8] .. registers[9])
end

end
::p141::
do
do
registers[7] = (registers[7] .. registers[8])
end

end
::p142::
do
do
registers[6] = (registers[6] .. registers[7])
end

end
::p143::
do
do
registers[5] = (registers[5] .. registers[6])
end

end
::p144::
do
do
registers[4] = (registers[4] .. registers[5])
end

end
::p145::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (3)
return registers[a](registers[a + 1])
end

end
::p146::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p147::
do
do
registers[7] = (upvalues[2])
end

end
::p148::
do
do
registers[8] = (registers[2][4])
end

end
goto p2
::p150::
do
do
registers[5] = (registers[2][1])
end

end
::p151::
do
do
registers[6] = (4)
end

end
::p152::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p39
::p154::
do
do
registers[3] = (1)
end

end
::p155::
do
do
registers[4] = (#registers[1])
end

end
::p156::
do
do
registers[5] = (64)
end

end
::p157::
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
if branch_taken then goto p99 end
goto p106
::p160::
do
do
registers[9] = (registers[2][5])
end

end
::p161::
do
do
registers[10] = (4)
end

end
::p162::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p163::
do
do
registers[9] = (upvalues[2])
end

end
goto p106
end
end
