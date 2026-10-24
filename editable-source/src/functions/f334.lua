
-- Function f334; 67 recovered instruction blocks.
F.f334=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f334",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f334 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p51
::p3::
tick(3)
do
do
registers[10] = (true)
end

end
::p4::
do
do
a = (7)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p5::
do
do
(registers)[7] = upvalues[3][141]
end

end
::p6::
do
do
(registers)[8] = registers[4]
end

end
::p7::
do
do
registers[9] = ("Force body yaw value")
end

end
::p8::
do
do
registers[10] = (registers[5]["angle"])
end

end
::p9::
do
do
a = (7)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p10::
do
do
(registers)[7] = upvalues[1]["applied"]
end

end
::p11::
do
do
registers[7][registers[4]] = true
end

end
goto p133
::p13::
tick(13)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p184 end
goto p102
::p15::
tick(15)
do
do
(registers)[5] = upvalues[1]["resolved"]
end

end
::p16::
do
do
(registers)[5] = registers[5][registers[4]]
end

end
::p17::
do
do
(registers)[6] = upvalues[1]["correction_until"]
end

end
::p18::
do
do
(registers)[6] = registers[6][registers[4]]
end

end
::p19::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p116
::p35::
tick(35)
do
do
(registers)[1] = upvalues[3][23]
end

end
::p36::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p37::
do
do
(registers)[2] = environment["ipairs"]
end

end
goto p108
::p47::
tick(47)
do
do
registers[5] = (0)
end

end
goto p118
::p51::
do
do
registers[1] = (upvalues[0])
end

end
::p52::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p53::
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p147
::p55::
tick(55)
do
do
registers[7] = (upvalues[5])
end

end
::p56::
do
do
(registers)[8] = registers[4]
end

end
::p57::
do
do
a = (7)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p133
::p79::
tick(79)
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
::p102::
tick(102)
do
do
(registers)[5] = upvalues[1]["correction_until"]
end

end
::p103::
do
do
(registers)[5] = registers[5][registers[3]]
end

end
::p104::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p47
::p106::
tick(106)
branch_taken=false
do
do
if not (not (registers[1] <= registers[6])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p179
::p108::
do
do
registers[3] = (upvalues[4])
end

end
::p109::
do
do
a = 3
z = (1)
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
::p110::
do
do
a = 2
z = (0)
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
::p111::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (2)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p133 end
::p112::
tick(112)
do
do
(registers)[5] = upvalues[3][42]
end

end
::p113::
do
do
(registers)[6] = registers[3]
end

end
::p114::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p13
::p116::
do
do
registers[6] = (0)
end

end
goto p143
::p118::
branch_taken=false
do
do
if not (registers[5] < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p184
::p120::
tick(120)
branch_taken=false
do
do
a = (2)
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
if branch_taken then goto p174 end
goto p135
::p122::
tick(122)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p123::
do
do
(registers)[2] = environment["pairs"]
end

end
::p124::
do
do
(registers)[3] = upvalues[1]["applied"]
end

end
::p125::
do
do
a = 2
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
::p126::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (2)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p120 end
goto p102
::p128::
do
do
registers[1] = (upvalues[2])
end

end
::p129::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p130::
branch_taken=false
do
do
if registers[1] ~= "Auto" then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p79
::p133::
branch_taken=false
do
do
a = (2)
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
if branch_taken then goto p15 end
goto p122
::p135::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p136::
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
::p143::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p169
::p147::
do
do
(registers)[1] = upvalues[1]["reset"]
end

end
::p148::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p149::
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
::p169::
do
do
registers[7] = (registers[5]["active"])
end

end
::p170::
branch_taken=false
do
do
if registers[7] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p106
::p174::
do
do
(registers)[4] = upvalues[3][50]
end

end
::p175::
do
do
(registers)[5] = registers[3]
end

end
::p176::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p177::
branch_taken=false
do
do
if registers[4] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p184 end
goto p112
::p179::
do
do
(registers)[7] = upvalues[3][141]
end

end
::p180::
do
do
(registers)[8] = registers[4]
end

end
::p181::
do
do
registers[9] = ("Force body yaw")
end

end
goto p3
::p184::
do
do
registers[4] = (upvalues[5])
end

end
::p185::
do
do
(registers)[5] = registers[3]
end

end
::p186::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p120
end
end
