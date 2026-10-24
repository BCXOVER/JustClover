
-- Function f340; 13 recovered instruction blocks.
F.f340=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f340",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f340 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p50
::p16::
tick(16)
do
do
registers[4] = registers[3] == registers[0]
end

end
goto p102
::p31::
tick(31)
do
do
(registers)[4] = upvalues[0][95]
end

end
goto p74
::p50::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p51::
do
do
(registers)[4] = registers[3]
end

end
::p52::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p16
::p56::
tick(56)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p31
::p74::
do
do
(registers)[5] = registers[4]
end

end
::p75::
do
do
(registers)[6] = registers[1]
end

end
::p76::
do
do
(registers)[7] = registers[2]
end

end
::p77::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p78::
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
::p100::
tick(100)
do
do
(registers)[4] = upvalues[0][56]
end

end
goto p56
::p102::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p100
end
end
