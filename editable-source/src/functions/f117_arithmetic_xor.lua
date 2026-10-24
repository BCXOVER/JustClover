
-- Function f117; 27 recovered instruction blocks.
F.f117=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f117",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f117 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p96
::p12::
tick(12)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
goto p41
::p29::
tick(29)
do
do
registers[5] = registers[1] % 2
end

end
::p30::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p41 end
goto p12
::p32::
tick(32)
do
do
(registers)[4] = registers[4] + registers[3]
end

end
::p34::
tick(34)
do
do
registers[7] = (registers[1] - registers[5])
end

end
::p35::
do
do
registers[1] = registers[7] / 2
end

end
::p36::
do
do
registers[7] = (registers[2] - registers[6])
end

end
::p38::
do
do
registers[2] = registers[7] / 2
end

end
::p39::
do
do
registers[3] = (registers[3] * 2)
end

end
goto p49
::p41::
do
do
registers[6] = (registers[1] - registers[5])
end

end
::p42::
do
do
registers[1] = registers[6] / 2
end

end
::p43::
do
do
registers[3] = (registers[3] * 2)
end

end
::p47::
tick(47)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p29
::p49::
tick(49)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p94
::p82::
tick(82)
do
do
registers[5] = registers[1] % 2
end

end
::p83::
do
do
registers[6] = registers[2] % 2
end

end
::p84::
branch_taken=false
do
do
if registers[5] == registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p32
::p88::
do
do
(registers)[5] = registers[4]
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
return registers[5]
end

end
::p92::
tick(92)
branch_taken=false
do
do
if not (registers[1] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p112
::p94::
branch_taken=false
do
do
if not (0 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p82
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
do
do
registers[3] = (1)
end

end
::p98::
do
do
registers[4] = (0)
end

end
goto p49
::p112::
do
do
a = (registers)
z = 1
end

end
::p113::
do
do
q = registers
m = 2
q = (q[m])
end

end
::p114::
do
do
(a)[z] = q
end

end
goto p47
end
end
