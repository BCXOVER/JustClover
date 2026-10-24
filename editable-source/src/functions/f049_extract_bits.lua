
-- Function f49; 26 recovered instruction blocks.
F.f49=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f49",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f49 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p38
::p2::
tick(2)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p81
::p12::
tick(12)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p72
::p32::
tick(32)
do
do
(registers)[4] = (registers[2] - 1)
end

end
::p33::
do
do
registers[4] = 2 ^ registers[4]
end

end
::p34::
do
do
(registers)[5] = registers[4] + registers[4]
end

end
::p35::
do
do
registers[5] = registers[1] % registers[5]
end

end
::p36::
do
do
registers[5] = (registers[5] >= registers[4])
end

end
goto p2
::p38::
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
::p39::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p83
::p50::
tick(50)
do
do
registers[5] = registers[4] % 1
end

end
::p51::
do
do
registers[5] = (registers[4] - registers[5])
end

end
::p52::
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
::p72::
do
do
registers[5] = (0)
end

end
goto p80
::p75::
tick(75)
do
do
registers[5] = registers[5] + 1
end

end
::p76::
do
do
registers[5] = 2 ^ registers[5]
end

end
::p77::
do
do
registers[4] = registers[4] % registers[5]
end

end
goto p50
::p80::
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
::p81::
do
do
registers[5] = (1)
end

end
goto p12
::p83::
do
do
(registers)[4] = (registers[2] - 1)
end

end
::p84::
do
do
registers[4] = 2 ^ registers[4]
end

end
::p85::
do
do
registers[4] = (registers[1] / registers[4])
end

end
::p86::
do
do
a = registers
z = 5
q = registers
end

end
::p87::
do
do
m = 3
q = q[m]
m = 1
end

end
::p88::
do
do
q = q - m;
(a)[z] = (q)
end

end
::p89::
do
do
(registers)[6] = (registers[2] - 1)
end

end
::p90::
do
do
registers[5] = (registers[5] - registers[6])
end

end
goto p75
end
end
