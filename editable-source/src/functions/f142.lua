
-- Function f142; 33 recovered instruction blocks.
F.f142=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f142",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f142 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p65
::p33::
tick(33)
do
do
registers[2] = (upvalues[1])
end

end
::p34::
do
do
(registers)[3] = upvalues[0][47]
end

end
::p35::
do
do
(registers)[4] = registers[1]
end

end
::p36::
do
do
registers[5] = ("m_vecVelocity")
end

end
::p37::
do
do
a = 3
z = (3)
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
::p38::
do
do
a = 2
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p39::
do
do
(registers)[3] = upvalues[0][47]
end

end
::p40::
do
do
(registers)[4] = registers[1]
end

end
::p41::
do
do
registers[5] = ("m_fFlags")
end

end
goto p52
::p50::
tick(50)
do
do
registers[3] = (0)
end

end
goto p83
::p52::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p53::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p50
::p55::
tick(55)
do
do
registers[6] = (1)
end

end
::p56::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p57::
do
do
registers[4] = (registers[4] == 1)
end

end
::p58::
do
do
a = (5)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["length2d"]
end

end
::p59::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p61::
do
do
(registers)[5] = (registers[5] < 2)
end

end
::p62::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p103
::p65::
do
do
(registers)[1] = upvalues[0][32]
end

end
::p66::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p67::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p105 end
::p70::
do
do
(registers)[2] = upvalues[0][50]
end

end
::p71::
do
do
(registers)[3] = registers[1]
end

end
::p72::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p73::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p105
::p82::
tick(82)
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
::p83::
do
do
(registers)[4] = environment["bit"]
end

end
::p84::
do
do
registers[4] = (registers[4]["band"])
end

end
::p85::
do
do
(registers)[5] = registers[3]
end

end
goto p55
::p103::
do
do
(registers)[5] = registers[4]
end

end
goto p82
::p105::
do
do
registers[2] = (false)
end

end
::p106::
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
return registers[2]
end

end
end
end
