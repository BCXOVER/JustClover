
-- Function f136; 19 recovered instruction blocks.
F.f136=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f136",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f136 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p32
::p15::
tick(15)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p26
::p25::
tick(25)
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
::p26::
do
do
registers[3] = (registers[1]["options"])
end

end
::p27::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p28::
do
do
(registers)[5] = registers[2]
end

end
::p29::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p30::
do
do
registers[3] = (registers[3] == true)
end

end
goto p36
::p32::
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
::p33::
do
do
registers[3] = (registers[1] ~= registers[0])
end

end
::p34::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p58
::p36::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p53
::p51::
tick(51)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p61
::p53::
do
do
(registers)[3] = registers[1][registers[2]]
end

end
::p54::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
goto p51
::p58::
do
do
registers[3] = (registers[1]["options"])
end

end
::p59::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
goto p15
::p61::
do
do
(registers)[3] = registers[1][registers[2]]
end

end
::p62::
do
do
registers[3] = (registers[3]["value"])
end

end
::p63::
do
do
registers[3] = (registers[3] ~= registers[0])
end

end
goto p25
end
end
