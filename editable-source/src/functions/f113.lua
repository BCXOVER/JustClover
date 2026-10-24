
-- Function f113; 27 recovered instruction blocks.
F.f113=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f113",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f113 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p65
::p7::
tick(7)
do
do
(registers)[4] = (registers[2] - 1)
end

end
::p8::
do
do
registers[4] = 2 ^ registers[4]
end

end
::p9::
do
do
a = (registers)
z = 5
end

end
::p10::
do
do
q = registers
m = 4
q = (q[m])
end

end
::p11::
do
do
m = registers
x = 4
end

end
::p12::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
goto p31
::p25::
tick(25)
do
do
registers[5] = (0)
end

end
goto p93
::p29::
tick(29)
do
do
registers[5] = (1)
end

end
goto p101
::p31::
do
do
registers[5] = registers[1] % registers[5]
end

end
::p32::
do
do
registers[5] = (registers[5] >= registers[4])
end

end
::p33::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p29
::p65::
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
::p66::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
::p68::
do
do
(registers)[4] = (registers[2] - 1)
end

end
::p69::
do
do
registers[4] = 2 ^ registers[4]
end

end
::p70::
do
do
registers[4] = (registers[1] / registers[4])
end

end
::p71::
do
do
(registers)[5] = (registers[3] - 1)
end

end
::p72::
do
do
(registers)[6] = (registers[2] - 1)
end

end
::p73::
do
do
registers[5] = (registers[5] - registers[6])
end

end
::p74::
do
do
registers[5] = registers[5] + 1
end

end
::p75::
do
do
registers[5] = 2 ^ registers[5]
end

end
goto p94
::p93::
tick(93)
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
::p94::
do
do
registers[4] = registers[4] % registers[5]
end

end
::p95::
do
do
registers[5] = registers[4] % 1
end

end
::p96::
do
do
registers[5] = (registers[4] - registers[5])
end

end
::p97::
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
::p101::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p25
end
end
