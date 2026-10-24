
-- Function f518; 34 recovered instruction blocks.
F.f518=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f518",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f518 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p95
::p22::
tick(22)
do
do
(registers)[7] = upvalues[1][151]
end

end
::p23::
do
do
(registers)[8] = registers[5]
end

end
::p24::
do
do
(registers)[9] = upvalues[0]["px"]
end

end
::p25::
do
do
registers[10] = (24)
end

end
::p26::
do
do
(registers)[11] = registers[4]
end

end
::p27::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p59
::p29::
tick(29)
do
do
registers[8] = ("")
end

end
goto p109
::p31::
tick(31)
do
do
(registers)[5] = upvalues[0]["measure_item"]
end

end
::p32::
do
do
(registers)[6] = registers[1]
end

end
::p33::
do
do
(registers)[7] = registers[3]
end

end
::p34::
do
do
(registers)[8] = registers[4]
end

end
::p35::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p79
::p47::
tick(47)
branch_taken=false
do
do
if registers[7] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p84
::p57::
tick(57)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p31
::p59::
do
do
(registers)[9] = registers[6] + registers[9]
end

end
::p60::
do
do
a = (7)
z = 3
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
::p79::
do
do
(registers)[6] = upvalues[1][136]
end

end
::p80::
do
do
(registers)[7] = registers[3]
end

end
::p81::
do
do
registers[8] = (registers[2]["text"])
end

end
::p82::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p29
::p84::
do
do
registers[6] = (0)
end

end
goto p22
::p95::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p96::
do
do
registers[5] = (registers[1]["kind"])
end

end
::p97::
do
do
registers[5] = (registers[5] == "bomb_planting")
end

end
::p98::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p114
::p109::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p110::
do
do
(registers)[7] = environment["type"]
end

end
::p111::
do
do
(registers)[8] = registers[6]
end

end
::p112::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p47
::p114::
do
do
(registers)[5] = upvalues[0]["measure_planting_item"]
end

end
::p115::
do
do
(registers)[6] = registers[1]
end

end
::p116::
do
do
(registers)[7] = registers[3]
end

end
::p117::
do
do
(registers)[8] = registers[4]
end

end
::p118::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p57
end
end
