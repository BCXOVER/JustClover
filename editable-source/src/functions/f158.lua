
-- Function f158; 14 recovered instruction blocks.
F.f158=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f158",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f158 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p78
::p32::
tick(32)
do
do
registers[1] = (registers[1] - registers[2])
end

end
::p33::
do
do
(registers)[2] = upvalues[2]["clamp"]
end

end
::p34::
do
do
(registers)[3] = upvalues[0]["planting_duration"]
end

end
::p35::
do
do
registers[3] = (registers[1] / registers[3])
end

end
::p36::
do
do
registers[4] = (0)
end

end
goto p47
::p45::
tick(45)
do
do
registers[1] = (0)
end

end
::p46::
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
::p47::
do
do
registers[5] = (1)
end

end
::p48::
do
do
a = (2)
z = 4
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
::p58::
tick(58)
do
do
(registers)[1] = upvalues[1][30]
end

end
::p59::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p60::
do
do
(registers)[2] = upvalues[0]["planting_start_time"]
end

end
goto p32
::p78::
do
do
(registers)[1] = upvalues[0]["planting_start_time"]
end

end
::p79::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p45
end
end
