
-- Function f182; 14 recovered instruction blocks.
F.f182=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f182",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f182 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p60
::p17::
tick(17)
do
do
registers[1] = ("Forward")
end

end
::p18::
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
return registers[1]
end

end
::p20::
tick(20)
do
do
registers[1] = ("Left")
end

end
::p21::
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
return registers[1]
end

end
::p40::
tick(40)
do
do
a = upvalues[0];
(registers)[1] = (a[2][a[1]]["manual"])
end

end
::p41::
branch_taken=false
do
do
if registers[1] ~= "Forward" then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p17
::p58::
do
do
registers[1] = ("Disabled")
end

end
::p59::
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
return registers[1]
end

end
::p60::
do
do
a = upvalues[0];
(registers)[1] = (a[2][a[1]]["manual"])
end

end
::p61::
branch_taken=false
do
do
if registers[1] ~= "Left" then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p20
::p77::
do
do
a = upvalues[0];
(registers)[1] = (a[2][a[1]]["manual"])
end

end
::p78::
branch_taken=false
do
do
if registers[1] ~= "Right" then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
::p80::
do
do
registers[1] = ("Right")
end

end
::p81::
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
return registers[1]
end

end
end
end
