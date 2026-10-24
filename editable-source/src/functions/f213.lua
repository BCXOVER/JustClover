
-- Function f213; 8 recovered instruction blocks.
F.f213=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f213",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f213 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p51
::p2::
tick(2)
do
do
registers[4] = (1)
end

end
goto p55
::p20::
tick(20)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p2
::p51::
tick(51)
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
::p52::
do
do
(registers)[3] = upvalues[0][154]
end

end
::p53::
do
do
(registers)[4] = registers[2]
end

end
goto p20
::p55::
do
do
(registers)[4] = registers[1] * registers[4]
end

end
::p56::
do
do
registers[4] = registers[4] + 0.5
end

end
::p57::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (3)
return registers[a](registers[a + 1])
end

end
end
end
