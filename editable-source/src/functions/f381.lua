
-- Function f381; 9 recovered instruction blocks.
F.f381=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f381",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f381 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p25
::p25::
tick(25)
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
::p26::
do
do
(registers)[2] = environment["string"]
end

end
::p27::
do
do
registers[2] = (registers[2]["format"])
end

end
::p28::
do
do
registers[3] = ("%02X%02X%02X%02X")
end

end
goto p43
::p36::
tick(36)
do
do
registers[7] = (registers[1]["a"])
end

end
::p37::
do
do
a = (2)
z = 6
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
::p43::
do
do
registers[4] = (registers[1]["r"])
end

end
::p44::
do
do
registers[5] = (registers[1]["g"])
end

end
::p45::
do
do
registers[6] = (registers[1]["b"])
end

end
goto p36
end
end
