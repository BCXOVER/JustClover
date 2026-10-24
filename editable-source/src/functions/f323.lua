
-- Function f323; 23 recovered instruction blocks.
F.f323=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f323",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f323 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p39
::p2::
tick(2)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p3::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p22
::p9::
tick(9)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get_sequence_activity"]
end

end
::p10::
do
do
registers[6] = (registers[3]["sequence"])
end

end
::p11::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p68
::p22::
tick(22)
do
do
registers[3] = (-1)
end

end
::p23::
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
::p35::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_overlay"]
end

end
::p36::
do
do
registers[5] = (1)
end

end
::p37::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p71
::p39::
tick(39)
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
::p40::
do
do
registers[2] = (upvalues[0])
end

end
::p41::
do
do
(registers)[3] = registers[1]
end

end
goto p2
::p57::
tick(57)
do
do
registers[5] = (-1)
end

end
::p58::
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
::p60::
tick(60)
do
do
registers[5] = (registers[3]["cycle"])
end

end
::p61::
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
::p62::
tick(62)
do
do
registers[5] = (registers[3]["weight"])
end

end
::p63::
branch_taken=false
do
do
if registers[5] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p60
::p65::
tick(65)
do
do
registers[4] = (-1)
end

end
::p66::
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
::p68::
branch_taken=false
do
do
if registers[4] ~= 967 then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p62
::p71::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p65
end
end
