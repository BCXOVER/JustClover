
-- Function f422; 47 recovered instruction blocks.
F.f422=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f422",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f422 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p130
::p3::
tick(3)
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
::p4::
tick(4)
branch_taken=false
do
do
if registers[4] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p84
::p7::
tick(7)
do
do
registers[7] = (registers[4] == 0)
end

end
::p8::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p108 end
goto p79
::p11::
tick(11)
do
do
registers[7] = (registers[6] * 0)
end

end
::p12::
do
do
registers[7] = registers[7] / 0
end

end
goto p3
::p27::
do
do
registers[5] = (1)
end

end
::p28::
do
do
registers[3] = (0)
end

end
goto p95
::p30::
tick(30)
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
::p47::
tick(47)
branch_taken=false
do
do
if registers[5] ~= 2047 then
    branch_taken=true
end
end

end
if branch_taken then goto p95 end
goto p7
::p50::
tick(50)
do
do
registers[8] = registers[4] / 4503599627370496
end

end
::p51::
do
do
(registers)[8] = registers[3] + registers[8]
end

end
::p52::
do
do
(registers)[7] = registers[7] * registers[8]
end

end
goto p30
::p79::
do
do
registers[7] = (registers[6] * 1)
end

end
::p80::
do
do
registers[7] = registers[7] / 0
end

end
goto p108
::p84::
do
do
registers[7] = (registers[6] * 0)
end

end
::p85::
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
::p86::
tick(86)
do
do
registers[4] = (registers[4] * 4294967296)
end

end
::p87::
do
do
(registers)[4] = registers[4] + registers[1]
end

end
::p88::
do
do
registers[5] = (upvalues[1])
end

end
::p89::
do
do
(registers)[6] = registers[2]
end

end
::p90::
do
do
registers[7] = (21)
end

end
::p91::
do
do
registers[8] = (31)
end

end
goto p110
::p95::
do
do
(registers)[7] = (registers[5] - 1023)
end

end
::p96::
do
do
registers[7] = 2 ^ registers[7]
end

end
::p97::
do
do
(registers)[7] = registers[6] * registers[7]
end

end
goto p50
::p108::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p11
::p110::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p111::
do
do
registers[6] = (upvalues[1])
end

end
::p112::
do
do
a = (registers)
z = 7
end

end
::p113::
do
do
q = registers
m = 2
q = (q[m])
end

end
::p114::
do
do
(a)[z] = q
end

end
::p115::
do
do
registers[8] = (32)
end

end
::p123::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p124::
do
do
registers[6] = 1 ^ registers[6]
end

end
::p125::
do
do
registers[6] = -registers[6]
end

end
::p127::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p4
::p130::
do
do
registers[1] = (upvalues[0])
end

end
::p131::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p132::
do
do
registers[2] = (upvalues[0])
end

end
::p133::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p157::
do
do
registers[3] = (1)
end

end
::p158::
do
do
registers[4] = (upvalues[1])
end

end
::p159::
do
do
(registers)[5] = registers[2]
end

end
::p160::
do
do
registers[6] = (1)
end

end
::p161::
do
do
registers[7] = (20)
end

end
::p162::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p86
end
end
