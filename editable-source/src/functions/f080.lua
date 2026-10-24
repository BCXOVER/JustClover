
-- Function f80; 26 recovered instruction blocks.
F.f80=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f80",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f80 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p101
::p3::
tick(3)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p4::
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
::p17::
tick(17)
do
do
registers[9] = (upvalues[0])
end

end
::p18::
do
do
registers[10] = {
}
end

end
::p19::
do
do
(registers)[11] = upvalues[1]["CHECK_14_FAILED"]
end

end
::p20::
do
do
registers[10]["ban_num"] = (registers[11])
end

end
::p21::
do
do
registers[10]["ban_info"] = "pcall [env][0x01]"
end

end
goto p105
::p38::
tick(38)
do
do
(registers)[7] = environment["getmetatable"]
end

end
::p39::
do
do
(registers)[8] = registers[6]
end

end
::p40::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
do
do
(registers)[8] = environment["pcall"]
end

end
::p42::
do
do
a = (D.f81)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[9] = x
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
::p43::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p57
::p45::
tick(45)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 1
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p78 end
::p46::
tick(46)
do
do
(registers)[5] = environment["pcall"]
end

end
::p47::
do
do
(registers)[6] = environment["getfenv"]
end

end
::p48::
do
do
(registers)[7] = registers[4]
end

end
::p49::
do
do
a = 5
z = (3)
q = 3
if z == 0 then

else
    top = (a + z - 1)
end
m, x = nil
if z ~= 1 then
    m, x = pack_returns(registers[a](unpack_range(top, registers, a + 1)))
else
    m, x = pack_returns(registers[a]())
end
if q ~= 1 then
    if q ~= 0 then
        m = a + q - 2
        top = (m + 1)
    else
        m = m + a - 1
        top = m
    end
    z = 0
    for f = a, m do
        z = (z + 1);
        (registers)[f] = x[z]
    end
else
    top = a - 1
end
end

end
goto p68
::p51::
tick(51)
do
do
local f = (1)
if not (N) then

else
    for F, u, c in next, N do
        if F >= f then
            u[2] = u
            u[3] = registers[F]
            u[1] = (3)
            N[F] = nil
        end
    end
end
end

end
goto p78
::p57::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p17
::p68::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p3
::p78::
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[1 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p3
::p101::
do
do
registers[1] = (1)
end

end
::p102::
do
do
registers[2] = (10)
end

end
::p103::
do
do
registers[3] = (1)
end

end
goto p45
::p105::
do
do
a = (9)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p51
end
end
