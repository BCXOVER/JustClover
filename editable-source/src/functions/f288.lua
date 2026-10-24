
-- Function f288; 23 recovered instruction blocks.
F.f288=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f288",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f288 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p6
::p2::
tick(2)
do
do
registers[4] = (registers[3]["value"])
end

end
::p3::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p4::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p50
::p6::
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
::p7::
do
do
(registers)[3] = registers[1][registers[2]]
end

end
::p8::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p65
::p26::
tick(26)
branch_taken=false
do
do
if registers[5] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p69
::p28::
do
do
(registers)[5] = upvalues[0]["clamp"]
end

end
::p29::
do
do
(registers)[6] = upvalues[1][154]
end

end
::p30::
do
do
registers[7] = registers[4] + 0.5
end

end
::p31::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p81
::p50::
do
do
(registers)[5] = environment["type"]
end

end
::p51::
do
do
(registers)[6] = registers[4]
end

end
::p52::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p26
::p63::
tick(63)
do
do
(registers)[4] = nil
end

end
::p64::
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
return registers[4]
end

end
::p65::
do
do
registers[4] = (registers[3]["value"])
end

end
::p66::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p63
::p69::
tick(69)
do
do
(registers)[5] = nil
end

end
::p70::
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
::p81::
do
do
registers[7] = (0)
end

end
::p82::
do
do
registers[8] = (100)
end

end
::p83::
do
do
a = (5)
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
end
end
