
-- Function f507; 16 recovered instruction blocks.
F.f507=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f507",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f507 pc="..pc,0) end
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
(registers)[6] = nil
end

end
::p3::
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
return registers[6]
end

end
::p5::
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
::p6::
do
do
(registers)[3] = upvalues[0][39]
end

end
::p7::
do
do
(registers)[4] = registers[1]
end

end
::p8::
do
do
(registers)[5] = registers[2]
end

end
goto p18
::p10::
tick(10)
do
do
registers[6] = (upvalues[1])
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
(registers)[8] = registers[4]
end

end
::p15::
do
do
(registers)[9] = registers[5]
end

end
::p16::
do
do
a = (6)
z = 4
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
::p18::
do
do
a = 3
z = (3)
q = 4
if z == 0 then

else
    top = (a + z - 1)
end
m, x = nil
if z ~= 1 then
    m, x = pack_returns(registers[a](unpack_range(top, registers, a + 1)))
else
    m, x = pack_returns(registers[a]())
end
if q ~= 1 then
    if q ~= 0 then
        m = a + q - 2
        top = (m + 1)
    else
        m = m + a - 1
        top = m
    end
    z = 0
    for f = a, m do
        z = (z + 1);
        (registers)[f] = x[z]
    end
else
    top = a - 1
end
end

end
::p19::
do
do
(registers)[6] = environment["type"]
end

end
::p20::
do
do
(registers)[7] = registers[3]
end

end
::p21::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p22::
branch_taken=false
do
do
if registers[6] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p2
end
end
