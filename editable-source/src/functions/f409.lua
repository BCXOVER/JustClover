
-- Function f409; 15 recovered instruction blocks.
F.f409=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f409",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f409 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p38
::p8::
tick(8)
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p9::
do
do
(registers)[3] = environment["type"]
end

end
::p10::
do
do
(registers)[4] = registers[2]
end

end
goto p51
::p19::
tick(19)
do
do
registers[3] = (0)
end

end
::p20::
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
return registers[3]
end

end
::p22::
tick(22)
do
do
(registers)[3] = upvalues[0][151]
end

end
::p23::
do
do
registers[4] = (0)
end

end
::p24::
do
do
(registers)[5] = registers[2]
end

end
::p27::
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
::p38::
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
::p39::
do
do
(registers)[2] = upvalues[0][47]
end

end
::p40::
do
do
(registers)[3] = registers[1]
end

end
::p41::
do
do
registers[4] = ("m_iHealth")
end

end
goto p8
::p51::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p52::
branch_taken=false
do
do
if registers[3] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p19
end
end
