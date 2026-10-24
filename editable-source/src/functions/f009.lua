
-- Function f9; 21 recovered instruction blocks.
F.f9=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f9",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f9 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p63
::p11::
tick(11)
do
do
(registers)[5] = registers[1] * registers[3]
end

end
::p12::
do
do
(registers)[5] = registers[4] + registers[5]
end

end
::p13::
do
do
(registers)[6] = registers[2] * registers[3]
end

end
goto p20
::p16::
tick(16)
branch_taken=false
do
do
if not (0 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p73
::p20::
do
do
(registers)[5] = registers[5] + registers[6]
end

end
::p21::
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
::p22::
tick(22)
do
do
registers[7] = (registers[2] - registers[6])
end

end
::p23::
do
do
registers[2] = registers[7] / 16
end

end
::p24::
do
do
registers[3] = (registers[3] * 16)
end

end
::p29::
tick(29)
branch_taken=false
do
do
if not (0 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p16
::p63::
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
::p64::
do
do
registers[3] = (1)
end

end
::p65::
do
do
registers[4] = (0)
end

end
goto p29
::p73::
do
do
registers[5] = registers[1] % 16
end

end
::p74::
do
do
registers[6] = registers[2] % 16
end

end
::p75::
do
do
(registers)[7] = upvalues[0][registers[5]]
end

end
::p76::
do
do
(registers)[7] = registers[7][registers[6]]
end

end
::p77::
do
do
(registers)[7] = registers[7] * registers[3]
end

end
::p78::
do
do
(registers)[4] = registers[4] + registers[7]
end

end
::p79::
do
do
registers[7] = (registers[1] - registers[5])
end

end
::p80::
do
do
registers[1] = registers[7] / 16
end

end
goto p22
end
end
