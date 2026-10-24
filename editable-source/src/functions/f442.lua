
-- Function f442; 48 recovered instruction blocks.
F.f442=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f442",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f442 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
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
::p3::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_maps"]
end

end
::p4::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p5::
do
do
registers[2] = (upvalues[0])
end

end
::p6::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p7::
do
do
registers[3] = (#registers[2])
end

end
goto p42
::p9::
tick(9)
do
do
registers[6] = (1)
end

end
::p10::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p70 end
goto p79
::p22::
tick(22)
do
do
registers[6] = (registers[1]["maps"])
end

end
::p23::
do
do
registers[6] = (registers[6]["visuals"])
end

end
::p24::
do
do
registers[7] = (registers[3]["visuals"])
end

end
goto p53
::p36::
tick(36)
do
do
a = (8)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["decode"]
end

end
::p37::
do
do
(registers)[10] = registers[2][registers[7]]
end

end
::p38::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p86
::p42::
branch_taken=false
do
do
if registers[3] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p94
::p44::
tick(44)
do
do
(registers)[4] = upvalues[1][86]
end

end
::p45::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p46::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p47::
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
::p53::
do
do
a = (4)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p54::
do
do
(registers)[4] = upvalues[1][86]
end

end
::p55::
do
do
registers[5] = ("play ui\\beepclear")
end

end
goto p91
::p70::
tick(70)
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p36 end
goto p99
::p79::
tick(79)
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["apply_group"]
end

end
::p80::
do
do
registers[6] = (registers[1]["maps"])
end

end
::p81::
do
do
registers[6] = (registers[6]["antiaim"])
end

end
::p82::
do
do
registers[7] = (registers[3]["antiaim"])
end

end
::p83::
do
do
a = (4)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p84::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["apply_group"]
end

end
goto p22
::p86::
do
do
(registers)[3] = registers[8]
end

end
::p87::
do
do
(registers)[8] = environment["type"]
end

end
::p88::
do
do
(registers)[9] = registers[3]
end

end
goto p109
::p91::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p92::
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
::p94::
do
do
(registers)[3] = upvalues[1][86]
end

end
::p95::
do
do
registers[4] = ("play resource/warning.wav")
end

end
::p96::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p97::
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
::p99::
tick(99)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p100::
do
do
(registers)[4] = environment["type"]
end

end
::p101::
do
do
(registers)[5] = registers[3]
end

end
goto p144
::p109::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p110::
branch_taken=false
do
do
if registers[8] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p99
::p129::
do
do
(registers)[3] = nil
end

end
::p130::
do
do
registers[4] = (1)
end

end
::p131::
do
do
registers[5] = (#registers[2])
end

end
goto p9
::p144::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p145::
branch_taken=false
do
do
if registers[4] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p44
end
end
