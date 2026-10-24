
-- Function f439; 43 recovered instruction blocks.
F.f439=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f439",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f439 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p26
::p11::
tick(11)
do
do
registers[4] = (registers[4]["cl_updaterate"])
end

end
::p12::
do
do
registers[4] = (registers[4] ~= registers[0])
end

end
::p13::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p96
::p26::
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
::p27::
do
do
(registers)[2] = upvalues[0][23]
end

end
::p28::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p29::
do
do
(registers)[3] = upvalues[1]["latency_cache"]
end

end
goto p128
::p32::
tick(32)
do
do
registers[5] = (0)
end

end
::p33::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p34::
do
do
(registers)[4] = environment["cvar"]
end

end
goto p11
::p36::
tick(36)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p85
::p51::
tick(51)
do
do
(registers)[3] = upvalues[1]["latency_cache"]
end

end
::p52::
do
do
registers[3] = (registers[3]["time"])
end

end
::p53::
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
::p57::
tick(57)
do
do
(registers)[6] = registers[5]
end

end
::p58::
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
return registers[6]
end

end
::p82::
tick(82)
do
do
(registers)[5] = 0.5 / registers[4]
end

end
::p83::
do
do
registers[3] = (registers[3] - registers[5])
end

end
goto p116
::p85::
do
do
registers[4] = (0)
end

end
goto p147
::p96::
do
do
(registers)[4] = environment["cvar"]
end

end
::p97::
do
do
registers[4] = (registers[4]["cl_updaterate"])
end

end
::p98::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
::p99::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p36
::p104::
tick(104)
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p105::
do
do
registers[7] = (0)
end

end
::p106::
do
do
(registers)[8] = registers[1]
end

end
::p107::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p108::
do
do
(registers)[6] = upvalues[1]["latency_cache"]
end

end
::p109::
do
do
registers[6]["tick"] = (registers[2])
end

end
::p110::
do
do
(registers)[6] = upvalues[1]["latency_cache"]
end

end
::p111::
do
do
registers[6]["time"] = (registers[5])
end

end
goto p57
::p114::
tick(114)
do
do
registers[4] = (0)
end

end
goto p32
::p116::
tick(116)
do
do
(registers)[5] = upvalues[2]["clamp"]
end

end
::p117::
do
do
(registers)[6] = upvalues[0][151]
end

end
::p118::
do
do
(registers)[7] = registers[3]
end

end
::p119::
do
do
registers[8] = (0)
end

end
goto p104
::p128::
do
do
registers[3] = (registers[3]["tick"])
end

end
::p129::
branch_taken=false
do
do
if registers[3] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p141 end
goto p51
::p141::
do
do
(registers)[3] = upvalues[0][151]
end

end
::p142::
do
do
(registers)[4] = upvalues[0][67]
end

end
::p143::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p144::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p114
::p147::
branch_taken=false
do
do
if not (0.001 < registers[4]) then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p82
end
end
