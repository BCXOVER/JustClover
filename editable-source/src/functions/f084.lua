
-- Function f84; 9 recovered instruction blocks.
F.f84=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f84",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f84 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p8
::p8::
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
::p9::
do
do
a = (upvalues[0]);
(registers)[2] = a[2][a[1]]
end

end
::p10::
do
do
(registers)[2] = registers[2] + registers[1]
end

end
goto p27
::p13::
tick(13)
do
do
a = (upvalues[0]);
(registers)[2] = a[2][a[1]]
end

end
::p14::
do
do
registers[2] = registers[2] % registers[1]
end

end
::p15::
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
::p27::
do
do
registers[3] = (upvalues[1])
end

end
::p28::
do
do
(registers)[2] = registers[2] + registers[3]
end

end
::p29::
do
do
a = upvalues[0]
a[2][a[1]] = registers[2]
end

end
goto p13
end
end
