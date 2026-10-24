
-- Function f525; 26 recovered instruction blocks.
F.f525=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f525",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f525 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p19
::p2::
tick(2)
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
::p13::
tick(13)
do
do
(registers)[2] = upvalues[1][45]
end

end
::p14::
do
do
(registers)[3] = registers[1]
end

end
::p15::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p16::
branch_taken=false
do
do
if registers[2] ~= "CCSPlayer" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p25
::p19::
do
do
(registers)[1] = upvalues[0]["is_quit"]
end

end
::p20::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p21::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p58
::p25::
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
::p26::
do
do
(registers)[2] = registers[1]
end

end
::p27::
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
return registers[2]
end

end
::p28::
tick(28)
branch_taken=false
do
do
if registers[1] <= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p92
::p45::
do
do
(registers)[1] = upvalues[1][27]
end

end
::p46::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p70
::p48::
tick(48)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p74
::p58::
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
::p60::
tick(60)
do
do
(registers)[1] = upvalues[1][32]
end

end
::p61::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p62::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p28
::p70::
do
do
(registers)[2] = upvalues[1][27]
end

end
::p71::
do
do
top = 2;
(registers)[top] = registers[top]()
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
if branch_taken then goto p60 end
goto p2
::p74::
tick(74)
do
do
if N then
    for f, F, u in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = registers[f];
            (F)[1] = 3
            N[f] = nil
        end
    end
end
return
end

end
::p92::
do
do
(registers)[2] = upvalues[1][50]
end

end
::p93::
do
do
(registers)[3] = registers[1]
end

end
::p94::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p48
end
end
