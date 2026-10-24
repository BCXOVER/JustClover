
-- Function f432; 16 recovered instruction blocks.
F.f432=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f432",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f432 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p45
::p45::
do
do
registers[1] = {
}
end

end
::p46::
do
do
registers[2] = {
}
end

end
::p47::
do
do
(registers)[3] = upvalues[0]["get"]
end

end
::p48::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p51::
do
do
registers[4] = (upvalues[1])
end

end
::p52::
do
do
(registers)[5] = registers[1]
end

end
::p53::
do
do
(registers)[6] = registers[2]
end

end
::p54::
do
do
(registers)[7] = registers[3]
end

end
::p55::
do
do
a = (4)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p56::
do
do
(registers)[4] = environment["table"]
end

end
goto p71
::p59::
tick(59)
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p60::
do
do
(registers)[4] = registers[1]
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
return registers[4]
end

end
::p71::
do
do
registers[4] = (registers[4]["sort"])
end

end
::p72::
do
do
(registers)[5] = registers[1]
end

end
::p73::
do
do
a = (D.f433)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[6] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
goto p59
end
end
