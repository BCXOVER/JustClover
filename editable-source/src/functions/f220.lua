
-- Function f220; 40 recovered instruction blocks.
F.f220=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f220",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f220 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p78
::p2::
tick(2)
do
do
registers[5] = (1)
end

end
::p3::
do
do
registers[6] = (#registers[4])
end

end
::p4::
do
do
registers[7] = (1)
end

end
goto p41
::p6::
tick(6)
do
do
registers[4] = {
}
end

end
goto p2
::p16::
tick(16)
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p17::
branch_taken=false
do
do
if registers[11] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p97
::p20::
tick(20)
do
do
(registers)[9] = registers[4][registers[8]]
end

end
::p21::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p130
::p41::
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
if branch_taken then goto p82 end
::p42::
do
do
registers[29] = (code_metadata)
end

end
::p43::
do
do
registers[35] = operand_k
end

end
::p44::
do
do
registers[29][75] = 184
end

end
::p45::
do
do
registers[35][49] = 77
end

end
::p46::
do
do
for f = 28, 35, 1 do
    (registers)[f] = nil
end
end

end
goto p78
::p63::
tick(63)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p64::
do
do
(registers)[5] = upvalues[0]["cache"]
end

end
::p65::
do
do
(registers[5])[registers[1]] = registers[3]
end

end
::p66::
do
do
(registers)[5] = registers[3]
end

end
::p77::
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
::p78::
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
::p79::
do
do
(registers)[3] = upvalues[0]["cache"]
end

end
::p80::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
goto p90
::p82::
tick(82)
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
if branch_taken then goto p20 end
goto p63
::p86::
tick(86)
do
do
(registers)[3] = upvalues[0]["cache"]
end

end
::p87::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
::p88::
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
::p90::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p86
::p97::
do
do
registers[11] = (#registers[3])
end

end
::p98::
do
do
registers[11] = registers[11] + 1
end

end
::p99::
do
do
registers[12] = {
}
end

end
::p100::
do
do
registers[12]["ref"] = (registers[9])
end

end
::p101::
do
do
registers[12]["value"] = (registers[10])
end

end
::p102::
do
do
(registers[3])[registers[11]] = registers[12]
end

end
goto p82
::p113::
do
do
registers[3] = {
}
end

end
::p114::
do
do
registers[4] = (registers[2]["cvars"])
end

end
::p115::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p6
::p130::
do
do
a = (10)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get_int"]
end

end
::p131::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p132::
do
do
(registers)[11] = environment["type"]
end

end
::p133::
do
do
(registers)[12] = registers[10]
end

end
goto p16
end
end
