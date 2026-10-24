
-- Function f479; 21 recovered instruction blocks.
F.f479=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f479",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f479 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p22
::p4::
tick(4)
branch_taken=false
do
do
if registers[2] ~= "Testing[2]" then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p52
::p6::
tick(6)
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p7::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p26
::p11::
do
do
(registers)[3] = registers[2]
end

end
::p12::
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
::p13::
tick(13)
branch_taken=false
do
do
if registers[2] ~= "Testing" then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p74
::p16::
tick(16)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
::p20::
do
do
registers[2] = ("Custom")
end

end
goto p13
::p22::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p23::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p24::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p29
::p26::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p27::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p16
::p29::
do
do
(registers)[1] = upvalues[0]["ragebot"]
end

end
::p30::
do
do
registers[1] = (registers[1]["enemy_resolver_mode"])
end

end
::p50::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p76
::p52::
do
do
registers[3] = ("Auto")
end

end
::p53::
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
::p74::
do
do
registers[3] = ("Custom")
end

end
::p75::
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
::p76::
do
do
(registers)[1] = nil
end

end
goto p6
end
end
