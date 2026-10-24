
-- Function f235; 33 recovered instruction blocks.
F.f235=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f235",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f235 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p113
::p10::
tick(10)
do
do
(registers)[2] = upvalues[0]["ragebot"]
end

end
::p11::
do
do
registers[2] = (registers[2]["double_tap"])
end

end
::p12::
do
do
registers[2] = (registers[2][1])
end

end
::p13::
do
do
registers[2] = (registers[2]["hotkey"])
end

end
goto p77
::p22::
tick(22)
do
do
(registers)[2] = upvalues[0]["ragebot"]
end

end
::p23::
do
do
registers[2] = (registers[2]["double_tap"])
end

end
::p24::
do
do
registers[2] = (registers[2][1])
end

end
::p25::
do
do
registers[2] = (registers[2]["hotkey"])
end

end
goto p57
::p32::
tick(32)
do
do
(registers)[2] = upvalues[0]["is_fake_duck"]
end

end
::p33::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p34::
do
do
(registers)[2] = not registers[2]
end

end
goto p116
::p43::
tick(43)
do
do
(registers)[2] = upvalues[0]["ragebot"]
end

end
::p44::
do
do
registers[2] = (registers[2]["double_tap"])
end

end
::p45::
do
do
a = registers
z = (2)
q = (registers)
end

end
::p46::
do
do
m = 2
q = q[m]
end

end
::p47::
do
do
m = (1)
q = q[m]
end

end
::p48::
do
do
(a)[z] = q
end

end
::p49::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p50::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p74
::p53::
tick(53)
do
do
(registers)[2] = upvalues[0]["is_fake_duck"]
end

end
::p54::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p55::
do
do
(registers)[2] = not registers[2]
end

end
goto p81
::p57::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p58::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p59::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p43
::p74::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p53
::p77::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p78::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p79::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p32
::p81::
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
::p113::
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
::p114::
branch_taken=false
do
do
if registers[1] ~= "key" then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p10
::p116::
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
end
end
