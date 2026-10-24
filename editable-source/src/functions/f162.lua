
-- Function f162; 13 recovered instruction blocks.
F.f162=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f162",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f162 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p54
::p36::
tick(36)
do
do
(registers)[1] = upvalues[0]["traverse"]
end

end
::p37::
do
do
(registers)[2] = upvalues[1]["visuals"]
end

end
::p38::
do
do
a = (D.f163)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
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
::p39::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p40::
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
::p54::
do
do
(registers)[1] = upvalues[0]["traverse"]
end

end
::p55::
do
do
(registers)[2] = upvalues[1]["ragebot"]
end

end
::p56::
do
do
a = (D.f164)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
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
::p58::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p59::
do
do
(registers)[1] = upvalues[0]["traverse"]
end

end
::p60::
do
do
(registers)[2] = upvalues[1]["antiaim"]
end

end
::p61::
do
do
a = (D.f165)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
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
::p62::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p36
end
end
