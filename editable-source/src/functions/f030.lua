
-- Function f30; 31 recovered instruction blocks.
F.f30=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f30",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f30 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p21
::p2::
tick(2)
do
do
registers[6] = (8)
end

end
::p3::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p4::
do
do
(registers)[2] = registers[4]
end

end
::p5::
do
do
(registers)[4] = environment["string"]
end

end
::p6::
do
do
a = registers
z = (4)
q = (registers)
end

end
::p7::
do
do
m = 4
q = q[m]
end

end
::p8::
do
do
m = ("rep")
q = q[m]
end

end
::p9::
do
do
(a)[z] = q
end

end
::p10::
do
do
registers[5] = ("\000")
end

end
::p11::
do
do
(registers)[6] = registers[3]
end

end
goto p72
::p21::
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
::p22::
do
do
registers[3] = registers[2] + 9
end

end
::p23::
do
do
registers[3] = registers[3] % 64
end

end
::p24::
do
do
registers[3] = 64 - registers[3]
end

end
::p25::
do
do
registers[4] = (upvalues[0])
end

end
::p26::
do
do
(registers)[5] = 8 * registers[2]
end

end
goto p2
::p36::
tick(36)
do
do
registers[1] = (registers[1] .. registers[4])
end

end
::p37::
do
do
a = (registers)
end

end
::p38::
do
do
z = (4)
q = (environment)
end

end
::p39::
do
do
m = "assert"
q = (q[m])
a[z] = q
end

end
::p40::
do
do
registers[5] = (#registers[1])
end

end
::p41::
do
do
registers[5] = registers[5] % 64
end

end
::p54::
do
do
registers[5] = (registers[5] == 0)
end

end
::p55::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p56::
do
do
a = (registers)
z = 4
end

end
::p57::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p58::
do
do
(a)[z] = q
end

end
::p59::
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
return registers[4]
end

end
::p72::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p73::
do
do
registers[4] = (registers[4] .. registers[2])
end

end
::p74::
do
do
registers[4] = "\128" .. registers[4]
end

end
goto p36
end
end
