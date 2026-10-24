
-- Function f520; 24 recovered instruction blocks.
F.f520=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f520",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f520 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p54
::p4::
tick(4)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p5::
do
do
(registers)[5] = upvalues[1]["active"]
end

end
::p6::
do
do
registers[5][registers[1]] = true
end

end
::p7::
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
::p24::
tick(24)
do
do
registers[7] = (1)
end

end
::p25::
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
if branch_taken then goto p45 end
::p26::
tick(26)
do
do
registers[10] = (registers[9]["ref"])
end

end
::p27::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
::p28::
do
do
(registers)[12] = registers[4]
end

end
::p29::
do
do
a = 10;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p45::
tick(45)
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
if branch_taken then goto p47 end
goto p4
::p47::
do
do
(registers)[9] = registers[3][registers[8]]
end

end
::p48::
do
do
registers[10] = (registers[9]["ref"])
end

end
::p49::
do
do
a = (10)
z = registers[10]
registers[a + 1] = (z);
(registers)[a] = z["get_int"]
end

end
::p50::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if registers[10] == registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p26
::p54::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p55::
do
do
registers[3] = (upvalues[0])
end

end
::p56::
do
do
(registers)[4] = registers[1]
end

end
::p57::
do
do
(registers)[5] = registers[2]
end

end
::p58::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p59::
do
do
registers[4] = (registers[2]["target"])
end

end
::p60::
do
do
registers[5] = (1)
end

end
::p61::
do
do
registers[6] = (#registers[3])
end

end
goto p24
end
end
