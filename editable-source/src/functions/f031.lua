
-- Function f31; 11 recovered instruction blocks.
F.f31=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f31",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f31 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p24
::p24::
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
::p25::
do
do
registers[1][1] = 1779033703
end

end
::p26::
do
do
registers[1][2] = 3144134277
end

end
goto p62
::p58::
tick(58)
do
do
registers[1][8] = 1541459225
end

end
::p59::
do
do
(registers)[2] = registers[1]
end

end
::p60::
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
::p62::
do
do
registers[1][3] = 1013904242
end

end
::p63::
do
do
registers[1][4] = 2773480762
end

end
::p64::
do
do
registers[1][5] = 1359893119
end

end
::p65::
do
do
registers[1][6] = 2600822924
end

end
::p66::
do
do
registers[1][7] = 528734635
end

end
goto p58
end
end
