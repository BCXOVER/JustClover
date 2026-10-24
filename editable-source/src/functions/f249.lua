
-- Function f249; 68 recovered instruction blocks.
F.f249=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f249",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f249 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p96
::p2::
tick(2)
do
do
registers[7] = (registers[2][2])
end

end
goto p117
::p4::
tick(4)
do
do
registers[9] = (registers[3][4])
end

end
::p5::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p94
::p9::
tick(9)
do
do
registers[3] = {
}
end

end
::p10::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p11::
do
do
a = 4
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
::p12::
do
do
a = (3)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p13::
do
do
registers[4] = (registers[3][1])
end

end
::p14::
do
do
(registers)[5] = environment["type"]
end

end
::p15::
do
do
(registers)[6] = registers[4]
end

end
::p16::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p17::
branch_taken=false
do
do
if registers[5] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p109
::p19::
tick(19)
do
do
registers[5] = new_frame(4)
end

end
::p20::
do
do
registers[6] = (registers[4][1])
end

end
::p21::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p181
::p23::
tick(23)
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p24::
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
::p51::
tick(51)
do
do
registers[9] = (registers[2][4])
end

end
goto p73
::p53::
tick(53)
do
do
registers[9] = (registers[4][4])
end

end
::p54::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p51
::p73::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p74::
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
::p75::
tick(75)
do
do
(registers)[3] = registers[2]
end

end
::p76::
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
return registers[3]
end

end
::p87::
tick(87)
do
do
(registers)[5] = environment["type"]
end

end
::p88::
do
do
(registers)[6] = registers[4]
end

end
::p89::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p185
::p91::
tick(91)
do
do
registers[7] = (registers[4]["g"])
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
if branch_taken then goto p189 end
goto p164
::p94::
do
do
registers[9] = (registers[2][4])
end

end
goto p101
::p96::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p97::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p75
::p101::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p102::
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
::p104::
tick(104)
do
do
registers[9] = (registers[2][4])
end

end
goto p23
::p106::
tick(106)
do
do
(registers)[5] = registers[2]
end

end
::p107::
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
::p109::
do
do
registers[5] = (registers[4]["r"])
end

end
::p110::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p128
::p113::
tick(113)
do
do
registers[8] = (registers[3][3])
end

end
::p114::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p136
::p117::
tick(117)
do
do
registers[8] = (registers[4][3])
end

end
::p118::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p187
::p120::
tick(120)
do
do
registers[7] = (registers[4][2])
end

end
::p121::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p2
::p124::
tick(124)
do
do
registers[6] = (registers[2][1])
end

end
goto p91
::p128::
do
do
registers[5] = new_frame(4)
end

end
::p129::
do
do
registers[6] = (registers[4]["r"])
end

end
::p130::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p91 end
goto p124
::p132::
tick(132)
do
do
registers[6] = (registers[2][1])
end

end
goto p167
::p134::
tick(134)
do
do
registers[8] = (registers[2][3])
end

end
goto p170
::p136::
do
do
registers[8] = (registers[2][3])
end

end
goto p4
::p143::
do
do
registers[5] = (registers[4][1])
end

end
::p144::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p19
::p146::
tick(146)
do
do
registers[5] = new_frame(4)
end

end
::p147::
do
do
(registers)[6] = registers[4]
end

end
::p148::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p132
::p164::
do
do
registers[7] = (registers[2][2])
end

end
goto p189
::p167::
do
do
registers[7] = (registers[3][2])
end

end
::p168::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p183
::p170::
tick(170)
do
do
registers[9] = (registers[4]["a"])
end

end
::p171::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p104
::p181::
do
do
registers[6] = (registers[2][1])
end

end
goto p120
::p183::
do
do
registers[7] = (registers[2][2])
end

end
goto p113
::p185::
branch_taken=false
do
do
if registers[5] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p106 end
goto p146
::p187::
do
do
registers[8] = (registers[2][3])
end

end
goto p53
::p189::
do
do
registers[8] = (registers[4]["b"])
end

end
::p190::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p170 end
goto p134
end
end
