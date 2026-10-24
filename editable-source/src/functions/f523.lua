
-- Function f523; 46 recovered instruction blocks.
F.f523=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f523",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f523 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p7
::p2::
tick(2)
do
do
(registers)[2] = upvalues[0]["visuals"]
end

end
::p3::
do
do
registers[2] = (registers[2]["fps_optimization"])
end

end
::p4::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p73
::p7::
do
do
(registers)[1] = upvalues[0]["visuals"]
end

end
::p8::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p2
::p31::
tick(31)
do
do
registers[4] = (upvalues[6])
end

end
::p32::
do
do
(registers)[5] = registers[2]
end

end
::p33::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p99
::p35::
tick(35)
do
do
(registers)[4] = upvalues[5]["active"]
end

end
::p36::
do
do
(registers)[4] = registers[4][registers[2]]
end

end
::p37::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p31
::p39::
tick(39)
do
do
registers[4] = (upvalues[3])
end

end
::p40::
do
do
(registers)[5] = registers[2]
end

end
::p41::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p42::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p62
::p45::
tick(45)
do
do
(registers)[1] = environment["pairs"]
end

end
::p46::
do
do
registers[2] = (upvalues[2])
end

end
::p47::
do
do
a = 1
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
::p48::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (1)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p99 end
::p49::
do
do
registers[18] = (code_metadata)
end

end
::p50::
do
do
registers[22] = (operand_g)
end

end
::p51::
do
do
registers[24] = operand_k
end

end
::p52::
do
do
registers[22][78] = 1
end

end
::p53::
do
do
registers[24][13] = 16
end

end
::p54::
do
do
registers[18][14] = 28
end

end
::p55::
do
do
registers[24][77] = 1
end

end
::p56::
do
do
registers[24][95] = 93
end

end
::p57::
do
do
for f = 17, 24, 1 do
    (registers)[f] = nil
end
end

end
goto p76
::p62::
do
do
registers[4] = (upvalues[4])
end

end
::p63::
do
do
(registers)[5] = registers[2]
end

end
::p64::
do
do
(registers)[6] = registers[3]
end

end
::p65::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p99
::p73::
do
do
registers[1] = (upvalues[1])
end

end
::p74::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p75::
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
(registers)[1] = upvalues[0]["visuals"]
end

end
::p77::
do
do
registers[1] = (registers[1]["fps_optimization"])
end

end
::p78::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p96
::p91::
tick(91)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p92::
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
::p96::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p97::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p101
::p99::
branch_taken=false
do
do
a = (1)
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
if branch_taken then goto p39 end
goto p91
::p101::
tick(101)
do
do
registers[1] = (upvalues[1])
end

end
::p102::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p103::
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
