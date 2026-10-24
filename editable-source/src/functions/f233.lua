
-- Function f233; 29 recovered instruction blocks.
F.f233=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f233",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f233 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p68
::p2::
tick(2)
do
do
(registers)[5] = nil
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
return registers[5]
end

end
::p4::
tick(4)
branch_taken=false
do
do
if registers[4] ~= 40 then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p8
::p6::
tick(6)
do
do
(registers)[3] = nil
end

end
::p7::
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
::p8::
do
do
registers[5] = ("Scout")
end

end
::p9::
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
::p10::
tick(10)
do
do
registers[5] = ("Desert Eagle")
end

end
::p11::
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
::p33::
tick(33)
branch_taken=false
do
do
if registers[3] ~= "sniperrifle" then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p4
::p46::
tick(46)
do
do
registers[3] = (registers[2]["type"])
end

end
::p47::
do
do
registers[4] = (registers[2]["idx"])
end

end
::p48::
branch_taken=false
do
do
if registers[3] ~= "pistol" then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p80
::p50::
tick(50)
do
do
registers[5] = ("Revolver R8")
end

end
::p51::
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
::p52::
tick(52)
do
do
registers[5] = ("Auto Snipers")
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
return registers[5]
end

end
::p55::
tick(55)
do
do
registers[5] = ("AWP")
end

end
::p56::
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
::p57::
branch_taken=false
do
do
if registers[4] ~= 9 then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p55
::p68::
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
::p69::
do
do
registers[2] = (upvalues[0])
end

end
::p70::
do
do
(registers)[3] = registers[1]
end

end
::p71::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p72::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p6
::p76::
tick(76)
branch_taken=false
do
do
if registers[4] ~= 64 then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p50
::p78::
do
do
registers[5] = ("Pistols")
end

end
::p79::
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
::p80::
branch_taken=false
do
do
if registers[4] ~= 1 then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p10
end
end
