
-- Function f86; 44 recovered instruction blocks.
F.f86=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f86",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f86 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p31
::p2::
tick(2)
do
do
registers[5] = ("%s")
end

end
::p3::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["format"]
end

end
::p4::
do
do
(registers)[7] = upvalues[0]["lua"]
end

end
::p5::
do
do
(registers)[7] = registers[7][registers[4]]
end

end
::p6::
do
do
registers[8] = {
}
end

end
::p7::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p99
::p9::
tick(9)
do
do
registers[6]["ban_info"] = (registers[7])
end

end
::p10::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p18
::p15::
tick(15)
do
do
registers[6]["ban_info"] = (registers[7])
end

end
::p16::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p18::
tick(18)
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
if branch_taken then goto p83 end
goto p49
::p21::
tick(21)
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p22::
branch_taken=false
do
do
if registers[5] ~= "function: NULL" then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p60
::p31::
do
do
registers[1] = (1)
end

end
::p32::
do
do
(registers)[2] = upvalues[0]["lua"]
end

end
::p33::
do
do
registers[2] = (#registers[2])
end

end
::p34::
do
do
registers[3] = (1)
end

end
::p35::
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
if branch_taken then goto p18 end
::p36::
do
do
registers[20] = (code_metadata)
end

end
::p37::
do
do
registers[26] = operand_k
end

end
::p38::
do
do
registers[20][99] = 188
end

end
::p39::
do
do
registers[26][82] = 82
end

end
::p40::
do
do
for f = 19, 26, 1 do
    (registers)[f] = nil
end
end

end
goto p83
::p49::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p50::
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
::p60::
do
do
registers[5] = (upvalues[1])
end

end
::p61::
do
do
registers[6] = {
}
end

end
::p62::
do
do
(registers)[7] = upvalues[2]["CHECK_17_FAILED"]
end

end
::p63::
do
do
registers[6]["ban_num"] = (registers[7])
end

end
::p64::
do
do
(registers)[7] = upvalues[0]["lua_str"]
end

end
::p65::
do
do
(registers)[7] = registers[7][registers[4]]
end

end
::p66::
do
do
registers[7] = registers[7] .. " [TS][0x01]"
end

end
goto p15
::p83::
do
do
(registers)[5] = environment["tostring"]
end

end
::p84::
do
do
(registers)[6] = upvalues[0]["lua"]
end

end
::p85::
do
do
(registers)[6] = registers[6][registers[4]]
end

end
::p86::
do
do
registers[7] = {
}
end

end
goto p21
::p94::
tick(94)
do
do
registers[5] = (upvalues[1])
end

end
::p95::
do
do
registers[6] = {
}
end

end
::p96::
do
do
(registers)[7] = upvalues[2]["CHECK_17_FAILED"]
end

end
goto p101
::p99::
branch_taken=false
do
do
if registers[5] ~= "function: NULL" then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p94
::p101::
do
do
registers[6]["ban_num"] = (registers[7])
end

end
::p102::
do
do
(registers)[7] = upvalues[0]["lua_str"]
end

end
::p103::
do
do
(registers)[7] = registers[7][registers[4]]
end

end
::p104::
do
do
registers[7] = registers[7] .. " [SF][0x01]"
end

end
goto p9
end
end
