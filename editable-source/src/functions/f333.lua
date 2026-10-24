
-- Function f333; 33 recovered instruction blocks.
F.f333=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f333",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f333 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p19
::p19::
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
::p20::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p117
::p36::
tick(36)
do
do
(registers)[2] = upvalues[0][47]
end

end
::p37::
do
do
a = (registers)
z = 3
end

end
::p38::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p39::
do
do
(a)[z] = q
end

end
::p40::
do
do
registers[4] = ("m_flSimulationTime")
end

end
::p41::
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p42::
do
do
(registers)[3] = environment["type"]
end

end
::p43::
do
do
(registers)[4] = registers[2]
end

end
goto p51
::p47::
tick(47)
do
do
(upvalues[1])[registers[1]] = registers[0]
end

end
::p48::
do
do
registers[3] = (0)
end

end
::p49::
do
do
registers[4] = (0)
end

end
::p50::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (3)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p51::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p52::
branch_taken=false
do
do
if registers[3] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p47
::p58::
tick(58)
do
do
(registers)[3] = registers[2]
end

end
goto p113
::p70::
tick(70)
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p123
::p73::
tick(73)
do
do
(registers)[3] = upvalues[1][registers[1]]
end

end
::p74::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p58
::p111::
tick(111)
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (4)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p113::
tick(113)
do
do
(upvalues[1])[registers[1]] = registers[2]
end

end
::p114::
do
do
(registers)[4] = registers[2]
end

end
::p115::
do
do
(registers)[5] = registers[3]
end

end
goto p111
::p117::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p118::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p119::
do
do
a = (registers)
z = 1
end

end
::p120::
do
do
q = registers
m = 2
q = (q[m])
end

end
::p121::
do
do
(a)[z] = q
end

end
goto p70
::p123::
do
do
registers[2] = (0)
end

end
::p124::
do
do
a = (registers)
z = 3
end

end
::p125::
do
do
q = 0;
(a)[z] = (q)
end

end
::p126::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (2)
return unpack_range(a + 3 - 2, registers, a)
end

end
end
end
