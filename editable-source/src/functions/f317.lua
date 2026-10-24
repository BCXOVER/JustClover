
-- Function f317; 18 recovered instruction blocks.
F.f317=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f317",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f317 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p8
::p2::
tick(2)
do
do
(registers)[3] = upvalues[0]["shots"]
end

end
::p3::
do
do
(registers[3])[registers[2]] = registers[0]
end

end
goto p12
::p5::
tick(5)
do
do
a = 1
z = (2)
q = 4
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
::p6::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (1)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p12 end
goto p20
::p8::
do
do
(registers)[1] = upvalues[0]["items"]
end

end
::p9::
do
do
registers[1] = (#registers[1])
end

end
::p10::
do
do
registers[2] = (1)
end

end
goto p26
::p12::
branch_taken=false
do
do
a = (1)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p2 end
goto p17
::p14::
tick(14)
do
do
(registers)[5] = upvalues[0]["items"]
end

end
::p15::
do
do
(registers[5])[registers[4]] = registers[0]
end

end
goto p24
::p17::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p18::
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
::p20::
tick(20)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p21::
do
do
(registers)[1] = environment["pairs"]
end

end
::p22::
do
do
(registers)[2] = upvalues[0]["shots"]
end

end
goto p5
::p24::
tick(24)
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
if branch_taken then goto p14 end
goto p20
::p26::
do
do
registers[3] = (-1)
end

end
::p27::
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
if branch_taken then goto p24 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f317 pc=27",0)
end
end
