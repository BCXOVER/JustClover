
-- Function f238; 44 recovered instruction blocks.
F.f238=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f238",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f238 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p56
::p2::
tick(2)
do
do
registers[2] = (registers[2]["hotkey"])
end

end
::p3::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p4::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p86
::p35::
tick(35)
do
do
(registers)[2] = upvalues[0]["is_fake_duck"]
end

end
::p36::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p37::
do
do
(registers)[2] = not registers[2]
end

end
goto p80
::p39::
tick(39)
do
do
registers[2] = (registers[2][1])
end

end
::p40::
do
do
registers[2] = (registers[2]["hotkey"])
end

end
::p41::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p67
::p43::
tick(43)
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p44::
do
do
registers[2] = (registers[2]["other"])
end

end
::p45::
do
do
registers[2] = (registers[2]["on_shot_antiaim"])
end

end
::p46::
do
do
registers[2] = (registers[2][1])
end

end
::p47::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p48::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p63
::p50::
tick(50)
do
do
(registers)[2] = upvalues[0]["is_fake_duck"]
end

end
::p51::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p52::
do
do
(registers)[2] = not registers[2]
end

end
goto p66
::p54::
tick(54)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p35
::p56::
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
::p57::
branch_taken=false
do
do
if registers[1] ~= "no dt" then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
::p59::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p60::
do
do
registers[2] = (registers[2]["other"])
end

end
::p61::
do
do
registers[2] = (registers[2]["on_shot_antiaim"])
end

end
goto p39
::p63::
tick(63)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p50
::p66::
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
::p67::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p68::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p43
::p70::
tick(70)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p82
::p72::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p73::
do
do
registers[2] = (registers[2]["other"])
end

end
::p74::
do
do
registers[2] = (registers[2]["on_shot_antiaim"])
end

end
::p75::
do
do
registers[2] = (registers[2][1])
end

end
goto p2
::p80::
tick(80)
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
::p82::
do
do
(registers)[2] = upvalues[0]["is_double_tap"]
end

end
::p83::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p84::
do
do
(registers)[2] = not registers[2]
end

end
goto p54
::p86::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p87::
do
do
registers[2] = (registers[2]["other"])
end

end
::p88::
do
do
registers[2] = (registers[2]["on_shot_antiaim"])
end

end
::p89::
do
do
registers[2] = (registers[2][1])
end

end
::p90::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p91::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p70
end
end
