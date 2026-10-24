
-- Function f254; 19 recovered instruction blocks.
F.f254=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f254",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f254 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p47
::p3::
tick(3)
do
do
(registers)[2] = upvalues[1][154]
end

end
::p4::
do
do
a = (upvalues[3]);
(registers)[3] = a[2][a[1]]
end

end
::p5::
do
do
registers[3] = registers[3] + 0.5
end

end
::p6::
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
::p8::
tick(8)
do
do
registers[2] = (registers[1] - registers[2])
end

end
::p9::
branch_taken=false
do
do
if not (not (1.5 <= registers[2])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
::p11::
do
do
a = (upvalues[0]);
(registers)[2] = a[2][a[1]]
end

end
::p12::
do
do
a = (upvalues[2]);
(registers)[3] = a[2][a[1]]
end

end
::p13::
do
do
registers[3] = (registers[1] - registers[3])
end

end
::p14::
do
do
registers[2] = (registers[2] / registers[3])
end

end
goto p31
::p27::
tick(27)
do
do
(registers)[1] = upvalues[1][30]
end

end
::p28::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p29::
do
do
a = (upvalues[2]);
(registers)[2] = a[2][a[1]]
end

end
goto p8
::p31::
do
do
a = upvalues[3]
a[2][a[1]] = registers[2]
end

end
::p32::
do
do
a = (upvalues[0])
a[2][a[1]] = (0)
end

end
::p33::
do
do
a = upvalues[2]
a[2][a[1]] = registers[1]
end

end
goto p3
::p47::
do
do
a = (upvalues[0]);
(registers)[1] = a[2][a[1]]
end

end
::p48::
do
do
registers[1] = registers[1] + 1
end

end
::p49::
do
do
a = upvalues[0]
a[2][a[1]] = registers[1]
end

end
goto p27
end
end
