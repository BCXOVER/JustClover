
-- Function f90; 6 recovered instruction blocks.
F.f90=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f90",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f90 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p5
::p2::
tick(2)
do
do
registers[3] = (registers[1] * 69)
end

end
::p3::
do
do
registers[3] = registers[3] % 1337
end

end
::p4::
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
a = (2)
return registers[a](registers[a + 1])
end

end
::p5::
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
::p6::
do
do
(registers)[2] = environment["math"]
end

end
::p7::
do
do
registers[2] = (registers[2]["floor"])
end

end
goto p2
end
end
