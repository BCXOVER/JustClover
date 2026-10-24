
-- Function f482; 15 recovered instruction blocks.
F.f482=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f482",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f482 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p14
::p14::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p15::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p16::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p29
::p18::
tick(18)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p33
::p29::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p30::
do
do
registers[1] = (registers[1]["hold_aim_ticks"])
end

end
goto p18
::p33::
do
do
(registers)[1] = nil
end

end
::p60::
do
do
(registers)[2] = upvalues[1]["apply"]
end

end
::p61::
do
do
registers[3] = (registers[1] ~= registers[0])
end

end
::p62::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p85
::p78::
tick(78)
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p79::
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
::p85::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p86::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p87::
do
do
registers[3] = (registers[3] == true)
end

end
goto p78
end
end
