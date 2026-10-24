
-- Function f458; 16 recovered instruction blocks.
F.f458=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f458",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f458 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p78
::p20::
tick(20)
do
do
registers[2] = (1)
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
return registers[2]
end

end
::p29::
tick(29)
do
do
(registers)[2] = upvalues[1]["ragebot"]
end

end
::p30::
do
do
registers[2] = (registers[2]["overpredict"])
end

end
goto p60
::p53::
tick(53)
do
do
(registers)[2] = upvalues[2]["clamp"]
end

end
::p54::
do
do
registers[3] = (registers[1] * 0.01)
end

end
::p55::
do
do
a = (registers)
z = 4
end

end
::p56::
do
do
q = 1;
(a)[z] = (q)
end

end
goto p88
::p60::
tick(60)
do
do
registers[3] = (125)
end

end
::p61::
do
do
a = 1
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p62::
branch_taken=false
do
do
if not (registers[1] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p20
::p78::
do
do
registers[1] = (upvalues[0])
end

end
::p79::
do
do
(registers)[2] = upvalues[1]["ragebot"]
end

end
::p80::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p29
::p88::
do
do
registers[5] = (2)
end

end
::p89::
do
do
a = (2)
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
end
end
