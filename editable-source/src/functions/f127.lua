
-- Function f127; 15 recovered instruction blocks.
F.f127=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f127",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f127 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p76
::p23::
tick(23)
do
do
registers[2]["Forward"] = 180
end

end
::p24::
do
do
a = upvalues[0];
(registers)[3] = (a[2][a[1]]["manual"])
end

end
::p25::
do
do
(registers)[3] = registers[2][registers[3]]
end

end
goto p79
::p54::
tick(54)
do
do
a = upvalues[0];
(registers)[2] = (a[2][a[1]]["manual"])
end

end
::p55::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p69
::p67::
tick(67)
do
do
registers[3] = (0)
end

end
goto p83
::p69::
tick(69)
do
do
registers[2] = (0)
end

end
::p70::
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
::p77::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p69 end
goto p54
::p79::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p67
::p83::
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
::p84::
do
do
registers[2] = {
}
end

end
::p85::
do
do
registers[2]["Left"] = -90
end

end
::p86::
do
do
registers[2]["Right"] = 90
end

end
goto p23
end
end
