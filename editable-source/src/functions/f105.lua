
-- Function f105; 22 recovered instruction blocks.
F.f105=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f105",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f105 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p43
::p3::
tick(3)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p4::
branch_taken=false
do
do
if registers[2] ~= "string" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p17
::p13::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p14::
do
do
registers[4] = ("%z")
end

end
::p15::
do
do
registers[5] = ("")
end

end
goto p75
::p17::
tick(17)
do
do
(registers)[2] = nil
end

end
::p18::
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
::p41::
tick(41)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p67
::p43::
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
::p44::
do
do
(registers)[2] = environment["type"]
end

end
::p45::
do
do
(registers)[3] = registers[1]
end

end
goto p3
::p66::
tick(66)
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
(registers)[2] = nil
end

end
goto p66
::p69::
tick(69)
do
do
registers[5] = ("")
end

end
::p70::
do
do
a = 2
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p71::
do
do
(registers)[1] = registers[2]
end

end
::p72::
do
do
(registers)[2] = (registers[1] ~= "")
end

end
::p73::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p41 end
goto p80
::p75::
do
do
a = 2
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p76::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p77::
do
do
registers[4] = ("%s+")
end

end
goto p69
::p80::
do
do
(registers)[2] = registers[1]
end

end
goto p41
end
end
