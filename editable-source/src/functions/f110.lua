
-- Function f110; 48 recovered instruction blocks.
F.f110=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f110",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f110 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p27
::p3::
tick(3)
do
do
registers[8] = registers[4] / 4503599627370496
end

end
::p4::
do
do
(registers)[8] = registers[3] + registers[8]
end

end
::p5::
do
do
(registers)[7] = registers[7] * registers[8]
end

end
goto p82
::p7::
tick(7)
do
do
registers[4] = (upvalues[1])
end

end
::p8::
do
do
(registers)[5] = registers[2]
end

end
::p9::
do
do
a = (registers)
z = 6
end

end
::p10::
do
do
q = 1;
(a)[z] = (q)
end

end
goto p117
::p16::
tick(16)
do
do
registers[5] = (1)
end

end
::p17::
do
do
registers[3] = (0)
end

end
goto p66
::p27::
do
do
registers[1] = (upvalues[0])
end

end
::p28::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p29::
do
do
registers[2] = (upvalues[0])
end

end
::p30::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p31::
do
do
registers[3] = (1)
end

end
goto p7
::p40::
tick(40)
branch_taken=false
do
do
if registers[4] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p146
::p47::
tick(47)
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p48::
do
do
registers[6] = (upvalues[1])
end

end
::p49::
do
do
a = (registers)
z = 7
end

end
::p50::
do
do
q = registers
m = 2
q = (q[m])
end

end
::p51::
do
do
(a)[z] = q
end

end
::p52::
do
do
registers[8] = (32)
end

end
::p53::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p54::
do
do
registers[6] = 1 ^ registers[6]
end

end
::p55::
do
do
registers[6] = -registers[6]
end

end
goto p94
::p65::
tick(65)
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
::p66::
tick(66)
do
do
(registers)[7] = (registers[5] - 1023)
end

end
::p67::
do
do
registers[7] = 2 ^ registers[7]
end

end
::p68::
do
do
(registers)[7] = registers[6] * registers[7]
end

end
goto p3
::p82::
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
::p94::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p40
::p96::
tick(96)
do
do
registers[7] = (registers[6] * 1)
end

end
::p97::
do
do
registers[7] = registers[7] / 0
end

end
goto p144
::p99::
tick(99)
do
do
registers[7] = (registers[4] == 0)
end

end
::p100::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p96
::p112::
tick(112)
do
do
(registers)[6] = registers[2]
end

end
::p113::
do
do
registers[7] = (21)
end

end
::p114::
do
do
registers[8] = (31)
end

end
goto p47
::p117::
do
do
registers[7] = (20)
end

end
::p118::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p119::
do
do
registers[4] = (registers[4] * 4294967296)
end

end
::p120::
do
do
(registers)[4] = registers[4] + registers[1]
end

end
::p121::
do
do
registers[5] = (upvalues[1])
end

end
goto p112
::p132::
branch_taken=false
do
do
if registers[5] ~= 2047 then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p99
::p144::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p157
::p146::
do
do
registers[7] = (registers[6] * 0)
end

end
::p147::
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
::p157::
do
do
registers[7] = (registers[6] * 0)
end

end
::p158::
do
do
registers[7] = registers[7] / 0
end

end
goto p65
end
end
