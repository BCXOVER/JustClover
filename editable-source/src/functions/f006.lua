
-- Function f6; 45 recovered instruction blocks.
F.f6=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f6",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f6 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p32
::p8::
tick(8)
branch_taken=false
do
do
if registers[4] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p108
::p20::
do
do
registers[5] = (1)
end

end
::p21::
do
do
registers[3] = (0)
end

end
goto p76
::p23::
tick(23)
do
do
registers[7] = (registers[6] * 1)
end

end
::p24::
do
do
registers[7] = registers[7] / 0
end

end
goto p110
::p26::
tick(26)
do
do
registers[7] = (registers[6] * 0)
end

end
::p27::
do
do
registers[7] = registers[7] / 0
end

end
goto p112
::p32::
do
do
registers[1] = (upvalues[0])
end

end
::p33::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p34::
do
do
registers[2] = (upvalues[0])
end

end
::p35::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p36::
do
do
registers[3] = (1)
end

end
::p37::
do
do
registers[4] = (upvalues[1])
end

end
::p38::
do
do
(registers)[5] = registers[2]
end

end
goto p96
::p60::
tick(60)
do
do
registers[6] = 1 ^ registers[6]
end

end
::p61::
do
do
registers[6] = -registers[6]
end

end
::p62::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p8
::p64::
tick(64)
do
do
(registers)[7] = registers[2]
end

end
::p65::
do
do
registers[8] = (32)
end

end
::p66::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p60
::p68::
branch_taken=false
do
do
if registers[5] ~= 2047 then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p113
::p73::
tick(73)
do
do
(registers)[8] = registers[3] + registers[8]
end

end
::p74::
do
do
(registers)[7] = registers[7] * registers[8]
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
return registers[7]
end

end
::p76::
do
do
(registers)[7] = (registers[5] - 1023)
end

end
::p77::
do
do
registers[7] = 2 ^ registers[7]
end

end
::p78::
do
do
(registers)[7] = registers[6] * registers[7]
end

end
::p79::
do
do
registers[8] = registers[4] / 4503599627370496
end

end
goto p73
::p96::
do
do
registers[6] = (1)
end

end
::p97::
do
do
registers[7] = (20)
end

end
::p98::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p99::
do
do
registers[4] = (registers[4] * 4294967296)
end

end
::p100::
do
do
(registers)[4] = registers[4] + registers[1]
end

end
::p101::
do
do
registers[5] = (upvalues[1])
end

end
::p102::
do
do
(registers)[6] = registers[2]
end

end
::p103::
do
do
registers[7] = (21)
end

end
::p104::
do
do
registers[8] = (31)
end

end
::p105::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p106::
do
do
registers[6] = (upvalues[1])
end

end
goto p64
::p108::
do
do
registers[7] = (registers[6] * 0)
end

end
::p109::
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
::p110::
tick(110)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p26
::p112::
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
::p113::
do
do
registers[7] = (registers[4] == 0)
end

end
::p114::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p23
end
end
