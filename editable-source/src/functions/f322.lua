
-- Function f322; 87 recovered instruction blocks.
F.f322=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f322",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f322 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p44
::p2::
tick(2)
do
do
registers[9] = 1 - registers[9]
end

end
::p3::
do
do
registers[10] = (registers[2] - registers[6])
end

end
::p4::
do
do
(registers)[10] = registers[10] * registers[9]
end

end
::p5::
do
do
(registers)[8] = registers[6] + registers[10]
end

end
goto p48
::p12::
tick(12)
do
do
(registers)[6] = registers[3]
end

end
::p13::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p122 end
goto p191
::p15::
tick(15)
do
do
registers[9] = (registers[2] - registers[6])
end

end
::p16::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
::p17::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
goto p155
::p19::
tick(19)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p63
::p21::
tick(21)
do
do
(registers)[4] = registers[6]
end

end
::p22::
do
do
(registers)[6] = registers[5]
end

end
::p23::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p169 end
goto p99
::p26::
tick(26)
do
do
(upvalues[0])[registers[1]] = registers[8]
end

end
goto p187
::p35::
tick(35)
branch_taken=false
do
do
if registers[5] ~= "ease_in" then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p163
::p44::
do
do
a = {
    ...,
}
for f = 1, 5, 1 do
    registers[f] = (a[f])
end
end

end
::p45::
do
do
(registers)[6] = upvalues[0][registers[1]]
end

end
::p46::
branch_taken=false
do
do
if registers[6] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p185
::p48::
tick(48)
do
do
(registers)[9] = upvalues[1][161]
end

end
::p49::
do
do
registers[10] = (registers[2] - registers[8])
end

end
::p50::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if not (not (registers[9] <= registers[4])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p59
::p53::
tick(53)
branch_taken=false
do
do
if registers[5] ~= "ease_in_out" then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p182
::p55::
tick(55)
do
do
registers[9] = 1 - registers[7]
end

end
::p56::
do
do
registers[10] = 1 - registers[7]
end

end
::p57::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
goto p2
::p59::
do
do
(upvalues[0])[registers[1]] = registers[2]
end

end
goto p187
::p63::
do
do
(registers)[9] = upvalues[1][160]
end

end
::p64::
do
do
(registers)[10] = -2 * registers[7]
end

end
::p65::
do
do
a = (registers)
end

end
::p66::
do
do
z = (10)
q = (registers)
end

end
::p67::
do
do
m = 10
end

end
::p68::
do
do
q = q[m]
m = 2
end

end
::p69::
do
do
q = (q + m);
(a)[z] = (q)
end

end
::p70::
do
do
registers[11] = (2)
end

end
::p71::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p193
::p79::
branch_taken=false
do
do
if registers[5] ~= "ease_out" then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p55
::p99::
do
do
registers[6] = ("linear")
end

end
goto p169
::p101::
tick(101)
do
do
(registers)[9] = 2 * registers[7]
end

end
::p102::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
goto p19
::p113::
tick(113)
do
do
registers[10] = (registers[2] - registers[6])
end

end
::p114::
do
do
(registers)[10] = registers[10] * registers[9]
end

end
::p115::
do
do
(registers)[8] = registers[6] + registers[10]
end

end
goto p48
::p118::
do
do
registers[9] = (registers[2] - registers[6])
end

end
::p119::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
::p120::
do
do
(registers)[8] = registers[6] + registers[9]
end

end
goto p48
::p122::
tick(122)
do
do
(registers)[3] = registers[6]
end

end
::p123::
do
do
(registers)[6] = registers[4]
end

end
::p124::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
::p126::
do
do
registers[6] = (0.005)
end

end
goto p21
::p136::
tick(136)
do
do
registers[9] = (registers[2] - registers[6])
end

end
::p137::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
::p138::
do
do
a = (registers)
z = 8
end

end
::p139::
do
do
q = registers
m = 6
q = (q[m])
end

end
::p140::
do
do
m = registers
x = 9
end

end
::p141::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
goto p48
::p155::
do
do
(registers)[10] = 2 * registers[7]
end

end
::p156::
do
do
registers[10] = 3 - registers[10]
end

end
::p157::
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p158::
do
do
a = (registers)
z = 8
end

end
::p159::
do
do
q = registers
m = 6
q = (q[m])
end

end
::p160::
do
do
m = registers
x = 9
end

end
::p161::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
goto p48
::p163::
do
do
registers[9] = (registers[2] - registers[6])
end

end
::p164::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
::p165::
do
do
(registers)[9] = registers[9] * registers[7]
end

end
::p166::
do
do
(registers)[8] = registers[6] + registers[9]
end

end
goto p48
::p169::
do
do
(registers)[5] = registers[6]
end

end
::p170::
do
do
a = (registers)
end

end
::p171::
do
do
z = 6
q = (upvalues)
m = (0)
end

end
::p172::
do
do
q = (q[m])
m = registers
end

end
::p173::
do
do
x = 1
m = (m[x])
q = q[m]
end

end
::p174::
do
do
(a)[z] = q
end

end
::p175::
do
do
(registers)[7] = upvalues[1][19]
end

end
::p176::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p177::
do
do
(registers)[7] = registers[7] * registers[3]
end

end
::p178::
do
do
(registers)[8] = nil
end

end
::p179::
branch_taken=false
do
do
if registers[5] ~= "linear" then
    branch_taken=true
end
end

end
if branch_taken then goto p189 end
goto p136
::p182::
do
do
(registers)[9] = (registers[7] < 0.5)
end

end
::p183::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p101
::p185::
do
do
(upvalues[0])[registers[1]] = registers[2]
end

end
goto p12
::p187::
do
do
(registers)[9] = upvalues[0][registers[1]]
end

end
::p188::
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
return registers[9]
end

end
::p189::
branch_taken=false
do
do
if registers[5] ~= "smooth" then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p15
::p191::
do
do
registers[6] = (8)
end

end
goto p122
::p193::
do
do
registers[9] = registers[9] / 2
end

end
::p194::
do
do
registers[9] = 1 - registers[9]
end

end
goto p113
end
end
