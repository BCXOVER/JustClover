
-- Function f62; 14 recovered instruction blocks.
F.f62=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f62",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f62 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p21
::p7::
tick(7)
do
do
(registers)[3] = registers[1]
end

end
::p8::
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
::p9::
tick(9)
do
do
a = (D.f63)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
::p10::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p11::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
::p14::
do
do
registers[3] = (upvalues[1])
end

end
::p15::
do
do
registers[4] = {
}
end

end
::p16::
do
do
(registers)[5] = upvalues[2]["MAGIC_SUM_CHECK_FAILED"]
end

end
::p17::
do
do
registers[4]["ban_num"] = (registers[5])
end

end
::p18::
do
do
registers[4]["ban_info"] = "[MGC][0x01]"
end

end
goto p83
::p21::
tick(21)
do
do
registers[1] = (1)
end

end
::p22::
do
do
registers[2] = (false)
end

end
::p23::
do
do
(registers)[3] = environment["pcall"]
end

end
goto p9
::p83::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (3)
return registers[a](registers[a + 1])
end

end
end
end
