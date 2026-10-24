
-- Function f120; 51 recovered instruction blocks.
F.f120=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f120",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f120 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p117
::p3::
tick(3)
do
do
registers[7] = (registers[6] * 0)
end

end
::p4::
do
do
registers[7] = registers[7] / 0
end

end
goto p133
::p6::
tick(6)
do
do
(registers)[7] = (registers[5] - 1023)
end

end
::p7::
do
do
registers[7] = 2 ^ registers[7]
end

end
::p8::
do
do
(registers)[7] = registers[6] * registers[7]
end

end
::p9::
do
do
registers[8] = registers[4] / 4503599627370496
end

end
::p10::
do
do
(registers)[8] = registers[3] + registers[8]
end

end
::p11::
do
do
(registers)[7] = registers[7] * registers[8]
end

end
goto p134
::p13::
tick(13)
branch_taken=false
do
do
if registers[4] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p70
::p24::
do
do
registers[5] = (1)
end

end
::p25::
do
do
registers[3] = (0)
end

end
goto p6
::p37::
tick(37)
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p38::
do
do
registers[3] = (1)
end

end
::p39::
do
do
registers[4] = (upvalues[1])
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
registers[6] = (1)
end

end
::p42::
do
do
registers[7] = (20)
end

end
goto p75
::p68::
tick(68)
branch_taken=false
do
do
if registers[5] ~= 2047 then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p72
::p70::
do
do
registers[7] = (registers[6] * 0)
end

end
::p71::
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
return registers[7]
end

end
::p72::
do
do
registers[7] = (registers[4] == 0)
end

end
::p73::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p83
::p75::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p76::
do
do
registers[4] = (registers[4] * 4294967296)
end

end
::p77::
do
do
a = (registers)
z = 4
end

end
::p78::
do
do
q = registers
m = 4
q = (q[m])
end

end
::p79::
do
do
m = registers
x = 1
end

end
::p80::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p81::
do
do
registers[5] = (upvalues[1])
end

end
goto p105
::p83::
do
do
registers[7] = (registers[6] * 1)
end

end
::p84::
do
do
registers[7] = registers[7] / 0
end

end
::p94::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p3
::p105::
do
do
(registers)[6] = registers[2]
end

end
::p106::
do
do
registers[7] = (21)
end

end
::p107::
do
do
registers[8] = (31)
end

end
::p108::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p109::
do
do
registers[6] = (upvalues[1])
end

end
::p110::
do
do
(registers)[7] = registers[2]
end

end
::p111::
do
do
registers[8] = (32)
end

end
::p112::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p113::
do
do
registers[6] = 1 ^ registers[6]
end

end
::p114::
do
do
registers[6] = -registers[6]
end

end
::p115::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p13
::p117::
do
do
registers[1] = (upvalues[0])
end

end
::p118::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p119::
do
do
a = (registers)
end

end
::p120::
do
do
z = 2
end

end
::p121::
do
do
q = (upvalues)
end

end
::p122::
do
do
m = 0
q = (q[m])
a[z] = q
end

end
goto p37
::p133::
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
return registers[7]
end

end
::p134::
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
return registers[7]
end

end
end
end
