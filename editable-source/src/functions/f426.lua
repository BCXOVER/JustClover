
-- Function f426; 13 recovered instruction blocks.
F.f426=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f426",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f426 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
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
::p3::
branch_taken=false
do
do
if not (registers[2] < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p37
::p16::
tick(16)
do
do
(registers)[3] = upvalues[0][87]
end

end
::p17::
do
do
(registers)[4] = registers[1]
end

end
::p18::
do
do
(registers)[5] = registers[2]
end

end
::p19::
do
do
a = (3)
z = 3
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
::p37::
do
do
(registers)[3] = registers[2]
end

end
::p38::
do
do
a = (registers)
z = 2
end

end
::p39::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p40::
do
do
(a)[z] = q
end

end
::p41::
do
do
a = (registers)
z = 1
end

end
::p42::
do
do
q = registers
m = 3
q = (q[m])
end

end
::p43::
do
do
(a)[z] = q
end

end
goto p16
end
end
