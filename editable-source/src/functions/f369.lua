
-- Function f369; 12 recovered instruction blocks.
F.f369=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f369",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f369 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p14
::p3::
tick(3)
do
do
(registers)[5] = upvalues[0]["px"]
end

end
::p4::
do
do
registers[6] = (20)
end

end
::p5::
do
do
(registers)[7] = registers[3]
end

end
::p6::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p7::
do
do
(registers)[5] = registers[4] + registers[5]
end

end
::p8::
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
return registers[5]
end

end
::p10::
tick(10)
do
do
(registers)[6] = registers[2]
end

end
::p11::
do
do
(registers)[7] = registers[3]
end

end
::p12::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p3
::p14::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p15::
do
do
(registers)[4] = upvalues[0]["measure_item"]
end

end
::p16::
do
do
(registers)[5] = registers[1]
end

end
goto p10
end
end
