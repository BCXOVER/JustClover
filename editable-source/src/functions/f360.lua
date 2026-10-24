
-- Function f360; 108 recovered instruction blocks.
F.f360=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f360",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f360 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p72
::p2::
tick(2)
do
do
a = (upvalues[0]);
(registers)[4] = a[2][a[1]]
end

end
::p3::
branch_taken=false
do
do
if registers[4] ~= "Timing" then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p121
::p6::
tick(6)
do
do
a = (upvalues[0]);
(registers)[2] = a[2][a[1]]
end

end
::p7::
branch_taken=false
do
do
if registers[2] ~= "Timing" then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p253
::p9::
tick(9)
do
do
(registers)[5] = registers[2]
end

end
goto p70
::p13::
tick(13)
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p14::
do
do
registers[4] = registers[4] % 2
end

end
::p15::
do
do
registers[4] = registers[4] + 1
end

end
::p16::
do
do
registers[5] = (registers[4] == 1)
end

end
::p17::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p9
::p21::
do
do
(registers)[4] = upvalues[3][154]
end

end
::p22::
do
do
(registers)[5] = registers[1]
end

end
::p23::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p96
::p26::
tick(26)
do
do
(registers)[5] = registers[3]
end

end
goto p262
::p51::
do
do
registers[2] = (upvalues[5])
end

end
::p52::
do
do
registers[3] = (upvalues[7])
end

end
::p53::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
goto p118
::p70::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p262 end
goto p26
::p72::
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
::p73::
do
do
a = (upvalues[0]);
(registers)[2] = a[2][a[1]]
end

end
::p74::
branch_taken=false
do
do
if registers[2] ~= "Off" then
    branch_taken=true
end
end

end
if branch_taken then goto p237 end
goto p207
::p76::
tick(76)
do
do
registers[8] = (registers[8]["randomize"])
end

end
::p77::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p78::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p79::
do
do
(registers)[9] = registers[1]
end

end
::p80::
do
do
a = (6)
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
::p81::
tick(81)
do
do
(registers)[4] = registers[3]
end

end
::p82::
do
do
(registers)[3] = registers[2]
end

end
::p83::
do
do
(registers)[2] = registers[4]
end

end
goto p133
::p93::
tick(93)
do
do
a = (upvalues[1]);
(registers)[2] = a[2][a[1]]
end

end
::p94::
branch_taken=false
do
do
if registers[2] ~= "Custom" then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p105
::p96::
do
do
registers[5] = (0)
end

end
goto p13
::p98::
tick(98)
do
do
(registers)[6] = upvalues[2]["clamp"]
end

end
::p99::
do
do
(registers)[7] = upvalues[3][154]
end

end
::p100::
do
do
a = (8)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p101::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p102::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p226
::p105::
do
do
(registers)[2] = upvalues[4]["custom"]
end

end
::p106::
do
do
registers[3] = (upvalues[6])
end

end
::p107::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p108::
do
do
(registers)[4] = upvalues[3][154]
end

end
::p109::
do
do
(registers)[5] = registers[1]
end

end
::p110::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p123
::p113::
tick(113)
do
do
registers[4] = (registers[4]["left"])
end

end
::p114::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p115::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p116::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p251
::p118::
do
do
registers[4] = (50)
end

end
::p119::
do
do
(registers)[5] = registers[1]
end

end
::p120::
do
do
a = (2)
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
::p121::
branch_taken=false
do
do
if not (registers[3] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p81
::p123::
do
do
registers[5] = (0)
end

end
goto p151
::p125::
tick(125)
do
do
a = (upvalues[0]);
(registers)[6] = a[2][a[1]]
end

end
::p126::
branch_taken=false
do
do
if registers[6] ~= "Timing" then
    branch_taken=true
end
end

end
if branch_taken then goto p228 end
goto p98
::p128::
tick(128)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p129::
do
do
registers[4] = (1)
end

end
::p130::
do
do
registers[5] = (16)
end

end
::p131::
do
do
a = 2
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p199
::p133::
do
do
(registers)[4] = upvalues[2]["random_int"]
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
(registers)[6] = registers[3]
end

end
goto p141
::p137::
tick(137)
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p138::
do
do
registers[8] = (1)
end

end
::p139::
do
do
registers[9] = (16)
end

end
::p140::
do
do
a = (6)
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
::p141::
do
do
a = (4)
z = 3
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
::p151::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p152::
do
do
registers[4] = registers[4] % registers[3]
end

end
::p153::
do
do
registers[4] = registers[4] + 1
end

end
::p154::
do
do
registers[5] = (registers[2]["slots"])
end

end
::p155::
do
do
(registers)[5] = registers[5][registers[4]]
end

end
::p156::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
::p158::
tick(158)
do
do
registers[5] = (registers[2]["slots"])
end

end
::p159::
do
do
registers[5] = (registers[5][1])
end

end
goto p125
::p186::
tick(186)
do
do
(registers)[2] = upvalues[2]["clamp"]
end

end
::p187::
do
do
(registers)[3] = upvalues[3][154]
end

end
::p188::
do
do
(registers)[4] = upvalues[4]["double"]
end

end
goto p113
::p190::
tick(190)
do
do
registers[5] = (1)
end

end
goto p240
::p199::
do
do
(registers)[3] = upvalues[2]["clamp"]
end

end
::p200::
do
do
(registers)[4] = upvalues[3][154]
end

end
::p201::
do
do
(registers)[5] = upvalues[4]["double"]
end

end
::p202::
do
do
registers[5] = (registers[5]["right"])
end

end
::p203::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p204::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p205::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p240 end
goto p190
::p207::
do
do
registers[2] = (1)
end

end
::p208::
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
::p226::
do
do
registers[8] = (1)
end

end
goto p137
::p228::
do
do
registers[6] = (upvalues[5])
end

end
::p229::
do
do
a = (7)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p230::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p231::
do
do
registers[8] = (registers[2]["randomize"])
end

end
::p232::
do
do
a = (8)
z = registers[8]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p233::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p234::
do
do
(registers)[9] = registers[1]
end

end
::p235::
do
do
a = (6)
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
::p237::
do
do
a = (upvalues[1]);
(registers)[2] = a[2][a[1]]
end

end
::p238::
branch_taken=false
do
do
if registers[2] ~= "Double" then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p186
::p240::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p241::
do
do
registers[5] = (1)
end

end
::p242::
do
do
registers[6] = (16)
end

end
::p243::
do
do
a = 3
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p2
::p251::
do
do
registers[4] = (1)
end

end
goto p128
::p253::
do
do
registers[2] = (upvalues[7])
end

end
::p254::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
return registers[2]()
end

end
::p262::
do
do
registers[6] = (upvalues[5])
end

end
::p263::
do
do
(registers)[7] = registers[5]
end

end
::p264::
do
do
(registers)[8] = upvalues[4]["double"]
end

end
goto p76
end
end
