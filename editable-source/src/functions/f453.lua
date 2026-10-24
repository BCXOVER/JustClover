
-- Function f453; 44 recovered instruction blocks.
F.f453=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f453",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f453 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p67
::p2::
tick(2)
do
do
(registers)[11] = registers[10] * registers[9]
end

end
::p3::
do
do
registers[11] = (registers[6] - registers[11])
end

end
::p4::
do
do
registers[12] = (upvalues[2])
end

end
::p5::
do
do
(registers)[13] = registers[11]
end

end
goto p143
::p40::
tick(40)
do
do
(registers)[7] = upvalues[0][151]
end

end
::p41::
do
do
registers[8] = (0)
end

end
::p42::
do
do
(registers)[9] = registers[3]
end

end
::p43::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
goto p65
::p45::
tick(45)
do
do
(registers)[10] = upvalues[0][154]
end

end
::p46::
do
do
(registers)[11] = registers[5]
end

end
::p47::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p2
::p49::
tick(49)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p102
::p65::
do
do
registers[9] = (0)
end

end
goto p119
::p67::
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
::p68::
do
do
(registers)[5] = upvalues[0][30]
end

end
::p69::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p70::
do
do
registers[5] = (registers[5] * 5)
end

end
::p71::
do
do
(registers)[6] = registers[1]
end

end
goto p49
::p80::
tick(80)
do
do
registers[14] = (registers[14] * 0.001)
end

end
::p81::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p82::
do
do
(registers)[11] = registers[12]
end

end
::p83::
do
do
(registers)[12] = registers[11]
end

end
::p84::
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
return registers[12]
end

end
::p102::
do
do
registers[6] = (0)
end

end
goto p40
::p105::
tick(105)
do
do
(registers)[10] = upvalues[0][161]
end

end
::p106::
do
do
(registers)[11] = registers[4]
end

end
::p107::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p140
::p111::
tick(111)
do
do
a = 10
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
::p112::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p113::
do
do
(registers)[9] = registers[7] + registers[8]
end

end
::p114::
do
do
registers[9] = registers[9] / 2
end

end
::p115::
branch_taken=false
do
do
if registers[9] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p135
::p119::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p120::
do
do
(registers)[8] = upvalues[0][151]
end

end
::p121::
do
do
registers[9] = (0)
end

end
goto p105
::p123::
tick(123)
do
do
registers[14] = (0)
end

end
goto p80
::p135::
do
do
(registers)[10] = upvalues[1]["normalize"]
end

end
::p136::
do
do
(registers)[11] = registers[6]
end

end
::p137::
do
do
registers[12] = (-180)
end

end
::p138::
do
do
registers[13] = (180)
end

end
goto p142
::p140::
do
do
registers[11] = (0)
end

end
goto p111
::p142::
do
do
a = (10)
z = 4
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
::p143::
do
do
(registers)[14] = registers[2]
end

end
::p144::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p123
end
end
