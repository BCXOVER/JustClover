
-- Function f39; 31 recovered instruction blocks.
F.f39=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f39",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f39 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p20
::p2::
tick(2)
do
do
registers[5] = (#registers[1])
end

end
goto p14
::p12::
tick(12)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 5
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p41 end
goto p20
::p14::
tick(14)
do
do
(registers)[3] = registers[5]
end

end
::p15::
do
do
(registers)[5] = registers[2]
end

end
::p16::
do
do
(registers)[6] = registers[3]
end

end
::p17::
do
do
registers[7] = (1)
end

end
goto p12
::p20::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p21::
do
do
registers[4] = {
}
end

end
::p22::
do
do
(registers)[5] = registers[2]
end

end
::p23::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p50
::p26::
tick(26)
do
do
(registers)[11] = upvalues[0][registers[9]]
end

end
::p27::
do
do
a = (registers)
z = 4
end

end
::p28::
do
do
a = (a[z])
z = registers
q = (10)
end

end
::p29::
do
do
z = z[q]
end

end
::p30::
do
do
q = registers
m = 11
end

end
::p31::
do
do
q = (q[m])
a[z] = q
end

end
goto p41
::p34::
tick(34)
do
do
a = (9)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["sub"]
end

end
::p35::
do
do
(registers)[11] = registers[8]
end

end
::p36::
do
do
(registers)[12] = registers[8]
end

end
::p37::
do
do
a = 9
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p38::
do
do
registers[10] = (#registers[4])
end

end
::p39::
do
do
registers[10] = registers[10] + 1
end

end
goto p26
::p41::
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
    (registers)[5 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p88
::p50::
do
do
registers[5] = (1)
end

end
goto p53
::p52::
tick(52)
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
a = (5)
return registers[a](registers[a + 1])
end

end
::p53::
do
do
(registers)[2] = registers[5]
end

end
::p54::
do
do
(registers)[5] = registers[3]
end

end
::p55::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p2
::p88::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p89::
do
do
(registers)[5] = environment["unpack"]
end

end
::p90::
do
do
(registers)[6] = registers[4]
end

end
goto p52
end
end
