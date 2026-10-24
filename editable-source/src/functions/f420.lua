
-- Function f420; 30 recovered instruction blocks.
F.f420=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f420",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f420 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p83
::p2::
tick(2)
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
::p4::
tick(4)
do
do
(registers)[4] = (registers[2] - 1)
end

end
::p5::
do
do
registers[4] = 2 ^ registers[4]
end

end
::p6::
do
do
a = (registers)
z = 5
end

end
::p7::
do
do
q = registers
m = 4
q = (q[m])
end

end
::p8::
do
do
m = registers
x = 4
end

end
::p9::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p10::
do
do
registers[5] = registers[1] % registers[5]
end

end
::p11::
do
do
registers[5] = (registers[5] >= registers[4])
end

end
goto p37
::p13::
tick(13)
do
do
(registers)[4] = (registers[2] - 1)
end

end
::p14::
do
do
registers[4] = 2 ^ registers[4]
end

end
::p15::
do
do
registers[4] = (registers[1] / registers[4])
end

end
::p16::
do
do
a = registers
z = 5
q = registers
end

end
::p17::
do
do
m = 3
q = q[m]
m = 1
end

end
::p18::
do
do
q = q - m;
(a)[z] = (q)
end

end
::p19::
do
do
(registers)[6] = (registers[2] - 1)
end

end
::p20::
do
do
registers[5] = (registers[5] - registers[6])
end

end
::p21::
do
do
registers[5] = registers[5] + 1
end

end
::p22::
do
do
registers[5] = 2 ^ registers[5]
end

end
goto p40
::p34::
tick(34)
do
do
registers[5] = (0)
end

end
goto p89
::p37::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p86
::p40::
do
do
registers[4] = registers[4] % registers[5]
end

end
::p41::
do
do
registers[5] = registers[4] % 1
end

end
::p42::
do
do
registers[5] = (registers[4] - registers[5])
end

end
goto p2
::p83::
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
::p84::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p13
::p86::
do
do
a = (registers)
z = 5
end

end
::p87::
do
do
q = 1;
(a)[z] = (q)
end

end
goto p90
::p89::
tick(89)
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
::p90::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p34
end
end
