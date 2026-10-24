
-- Function f366; 31 recovered instruction blocks.
F.f366=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f366",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f366 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p37
::p2::
tick(2)
do
do
(registers)[8] = upvalues[3][registers[8]]
end

end
::p3::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p86
::p6::
tick(6)
do
do
(registers)[7] = registers[1]
end

end
::p7::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p8::
do
do
(registers)[7] = registers[3]
end

end
::p9::
do
do
a = upvalues[4];
(registers)[8] = (a[2][a[1]]["current"])
end

end
goto p2
::p11::
tick(11)
do
do
registers[4] = (upvalues[1])
end

end
::p12::
do
do
(registers)[5] = upvalues[2][161]
end

end
::p13::
do
do
(registers)[6] = registers[1]
end

end
::p14::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p15::
do
do
registers[5] = -registers[5]
end

end
::p16::
do
do
(registers)[6] = upvalues[2][161]
end

end
goto p6
::p32::
tick(32)
do
do
registers[9] = (1)
end

end
goto p43
::p37::
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
::p38::
do
do
(registers)[3] = upvalues[0]["randomize"]
end

end
::p39::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p40::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
branch_taken=false
do
do
if not (registers[3] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p88
::p43::
tick(43)
do
do
(registers)[8] = registers[8] + registers[9]
end

end
::p44::
do
do
registers[9] = (upvalues[5])
end

end
::p45::
do
do
a = 4
top = a + 6 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p46::
do
do
(registers)[5] = upvalues[6]["clamp"]
end

end
::p47::
do
do
(registers)[6] = registers[1] + registers[4]
end

end
goto p90
::p50::
tick(50)
do
do
(registers)[9] = registers[2]
end

end
::p51::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p43 end
goto p32
::p86::
do
do
registers[8] = (1)
end

end
goto p50
::p88::
do
do
(registers)[4] = registers[1]
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
return registers[4]
end

end
::p90::
do
do
registers[7] = (-180)
end

end
::p91::
do
do
registers[8] = (180)
end

end
::p92::
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
