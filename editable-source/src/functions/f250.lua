
-- Function f250; 28 recovered instruction blocks.
F.f250=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f250",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f250 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p43
::p2::
tick(2)
do
do
(registers)[2] = upvalues[0][40]
end

end
::p3::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p4::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p30
::p18::
tick(18)
do
do
(registers)[5] = registers[3]
end

end
::p19::
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
::p30::
do
do
(registers)[3] = nil
end

end
::p31::
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
::p41::
tick(41)
do
do
registers[5] = (registers[3] / registers[4])
end

end
::p42::
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
::p43::
tick(43)
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
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p64
::p46::
do
do
(registers)[3] = upvalues[0][47]
end

end
::p47::
do
do
(registers)[4] = registers[2]
end

end
::p48::
do
do
registers[5] = ("m_iKills")
end

end
::p49::
do
do
(registers)[6] = registers[1]
end

end
::p50::
do
do
a = 3
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p51::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p62
::p53::
tick(53)
do
do
(registers)[4] = upvalues[0][47]
end

end
::p54::
do
do
(registers)[5] = registers[2]
end

end
::p55::
do
do
registers[6] = ("m_iDeaths")
end

end
::p56::
do
do
(registers)[7] = registers[1]
end

end
::p57::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p58::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
::p60::
do
do
registers[4] = (0)
end

end
goto p76
::p62::
do
do
registers[3] = (0)
end

end
goto p53
::p64::
do
do
(registers)[2] = nil
end

end
::p65::
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
::p76::
branch_taken=false
do
do
if not (0 < registers[4]) then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p41
end
end
