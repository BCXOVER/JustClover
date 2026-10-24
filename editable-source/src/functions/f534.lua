
-- Function f534; 52 recovered instruction blocks.
F.f534=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f534",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f534 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p4
::p2::
tick(2)
do
do
registers[2] = ("Stand")
end

end
goto p101
::p4::
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
::p5::
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p6::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p136
::p8::
tick(8)
do
do
registers[2] = ("Air")
end

end
goto p30
::p10::
tick(10)
do
do
(registers)[2] = upvalues[3]["is_slow_motion"]
end

end
::p11::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p12::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p144
::p16::
tick(16)
do
do
registers[2] = ("Crouch-move")
end

end
goto p27
::p19::
tick(19)
do
do
a = upvalues[2];
(registers)[2] = (a[2][a[1]]["ducked"])
end

end
::p20::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p50
::p22::
tick(22)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p110
::p24::
tick(24)
do
do
(registers)[2] = upvalues[3]["is_fake_duck"]
end

end
::p25::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p146
::p27::
tick(27)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p10
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
return registers[2]
end

end
::p42::
tick(42)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p2
::p44::
tick(44)
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
::p45::
tick(45)
do
do
a = upvalues[2];
(registers)[2] = (a[2][a[1]]["ducked"])
end

end
::p46::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p102
::p50::
do
do
registers[2] = ("Air-crouch")
end

end
goto p134
::p52::
tick(52)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p105
::p88::
tick(88)
do
do
registers[2] = ("Manual")
end

end
::p89::
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
::p97::
tick(97)
do
do
registers[2] = ("Freestanding")
end

end
::p98::
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
::p101::
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
::p102::
do
do
(registers)[2] = upvalues[3]["is_fake_duck"]
end

end
::p103::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p52
::p105::
do
do
registers[2] = ("Crouch")
end

end
goto p42
::p107::
tick(107)
do
do
a = upvalues[2];
(registers)[2] = (a[2][a[1]]["air"])
end

end
::p108::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p139 end
goto p19
::p110::
do
do
registers[2] = ("Move")
end

end
goto p44
::p118::
tick(118)
do
do
(registers)[2] = upvalues[1]["antiaim"]
end

end
::p119::
do
do
registers[2] = (registers[2]["features"])
end

end
::p120::
do
do
registers[2] = (registers[2]["hotkeys"])
end

end
::p121::
do
do
registers[2] = (registers[2]["freestanding"])
end

end
::p122::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p123::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p124::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p97
::p129::
tick(129)
do
do
a = upvalues[0];
(a[2][a[1]])["e_peek"] = (registers[2])
end

end
::p130::
do
do
a = upvalues[0];
(registers)[2] = (a[2][a[1]]["manual"])
end

end
::p131::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p88
::p134::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p8
::p136::
do
do
registers[2] = (registers[1]["in_use"])
end

end
::p137::
do
do
registers[2] = (registers[2] == 1)
end

end
goto p129
::p139::
do
do
a = upvalues[2];
(registers)[2] = (a[2][a[1]]["moving"])
end

end
::p140::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p155
::p144::
do
do
registers[2] = ("Slow-motion")
end

end
goto p22
::p146::
tick(146)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p16
::p155::
do
do
a = upvalues[2];
(registers)[2] = (a[2][a[1]]["ducked"])
end

end
::p156::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p146 end
goto p24
end
end
