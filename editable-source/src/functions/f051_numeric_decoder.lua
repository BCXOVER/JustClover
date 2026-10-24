
-- Function f51; 48 recovered instruction blocks.
F.f51=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f51",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f51 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p104
::p2::
tick(2)
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
::p17::
tick(17)
branch_taken=false
do
do
if registers[5] ~= 2047 then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p51
::p19::
tick(19)
do
do
registers[7] = (20)
end

end
::p20::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p21::
do
do
registers[4] = (registers[4] * 4294967296)
end

end
::p22::
do
do
(registers)[4] = registers[4] + registers[1]
end

end
::p23::
do
do
registers[5] = (upvalues[1])
end

end
::p24::
do
do
(registers)[6] = registers[2]
end

end
goto p137
::p26::
tick(26)
do
do
(registers)[8] = registers[3] + registers[8]
end

end
::p27::
do
do
(registers)[7] = registers[7] * registers[8]
end

end
::p28::
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
::p51::
do
do
registers[7] = (registers[4] == 0)
end

end
::p52::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p79
::p71::
tick(71)
do
do
registers[6] = 1 ^ registers[6]
end

end
::p72::
do
do
registers[6] = -registers[6]
end

end
::p73::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p122
::p75::
tick(75)
do
do
registers[7] = (registers[6] * 0)
end

end
::p76::
do
do
registers[7] = registers[7] / 0
end

end
goto p2
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
::p92::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p75
::p94::
tick(94)
do
do
registers[7] = (registers[6] * 0)
end

end
::p95::
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
::p96::
tick(96)
do
do
(registers)[7] = (registers[5] - 1023)
end

end
::p97::
do
do
registers[7] = 2 ^ registers[7]
end

end
::p98::
do
do
(registers)[7] = registers[6] * registers[7]
end

end
::p99::
do
do
registers[8] = registers[4] / 4503599627370496
end

end
goto p26
::p104::
do
do
registers[1] = (upvalues[0])
end

end
::p105::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p106::
do
do
a = (registers)
end

end
::p107::
do
do
z = 2
end

end
::p108::
do
do
q = (upvalues)
end

end
::p109::
do
do
m = 0
q = (q[m])
a[z] = q
end

end
::p110::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p132
::p122::
branch_taken=false
do
do
if registers[4] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p124 end
goto p94
::p124::
do
do
registers[5] = (1)
end

end
::p125::
do
do
registers[3] = (0)
end

end
goto p96
::p127::
tick(127)
do
do
registers[6] = (upvalues[1])
end

end
::p128::
do
do
(registers)[7] = registers[2]
end

end
::p129::
do
do
registers[8] = (32)
end

end
::p130::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p71
::p132::
do
do
registers[3] = (1)
end

end
::p133::
do
do
registers[4] = (upvalues[1])
end

end
::p134::
do
do
(registers)[5] = registers[2]
end

end
::p135::
do
do
registers[6] = (1)
end

end
goto p19
::p137::
do
do
registers[7] = (21)
end

end
::p138::
do
do
registers[8] = (31)
end

end
::p139::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p127
end
end
