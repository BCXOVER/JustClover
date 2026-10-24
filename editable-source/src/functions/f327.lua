
-- Function f327; 15 recovered instruction blocks.
F.f327=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f327",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f327 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p59
::p40::
tick(40)
do
do
registers[5] = (registers[5]["antiaim"])
end

end
::p41::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p42::
do
do
registers[2]["antiaim"] = (registers[3])
end

end
goto p70
::p59::
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
::p60::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_maps"]
end

end
::p61::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p62::
do
do
registers[2] = {
}
end

end
::p63::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["serialize_group"]
end

end
::p64::
do
do
registers[5] = (registers[1]["maps"])
end

end
goto p40
::p67::
tick(67)
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p68::
do
do
registers[2]["visuals"] = (registers[3])
end

end
::p69::
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
::p70::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["serialize_group"]
end

end
::p71::
do
do
registers[5] = (registers[1]["maps"])
end

end
::p72::
do
do
registers[5] = (registers[5]["visuals"])
end

end
goto p67
end
end
