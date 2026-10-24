
-- Function f463; 14 recovered instruction blocks.
F.f463=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f463",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f463 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p55
::p5::
tick(5)
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
::p46::
tick(46)
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p47::
do
do
registers[2] = (registers[2]["other"])
end

end
::p48::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
::p50::
do
do
(registers)[3] = upvalues[0]["antiaim"]
end

end
::p51::
do
do
registers[3] = (registers[3]["other"])
end

end
::p52::
do
do
registers[3] = (registers[3]["leg_movement"])
end

end
::p53::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p59
::p55::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p56::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p46
::p59::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p60::
do
do
registers[1] = (registers[1]["other"])
end

end
::p61::
do
do
registers[1] = (registers[1]["leg_movement"])
end

end
::p62::
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
