
-- Function f481; 23 recovered instruction blocks.
F.f481=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f481",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f481 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p21
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
(registers)[3] = upvalues[0]["pack"]
end

end
::p23::
do
do
(registers)[4] = registers[2]
end

end
goto p62
::p28::
tick(28)
do
do
(registers)[5] = nil
end

end
::p29::
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
::p42::
tick(42)
branch_taken=false
do
do
if registers[4] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p95
::p53::
tick(53)
do
do
(registers)[5] = registers[4]
end

end
::p54::
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
::p55::
tick(55)
do
do
(registers)[5] = environment["type"]
end

end
::p56::
do
do
(registers)[6] = registers[4]
end

end
::p57::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p58::
branch_taken=false
do
do
if registers[5] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p103
::p62::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p63::
do
do
(registers)[4] = environment["type"]
end

end
::p64::
do
do
(registers)[5] = registers[3]
end

end
::p65::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p42
::p79::
tick(79)
do
do
(registers)[4] = nil
end

end
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
return registers[4]
end

end
::p88::
tick(88)
do
do
(registers)[4] = upvalues[1]["encode"]
end

end
::p89::
do
do
(registers)[5] = registers[3]
end

end
::p90::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p55
::p95::
branch_taken=false
do
do
if registers[3] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p79
::p103::
branch_taken=false
do
do
if registers[4] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p28
end
end
