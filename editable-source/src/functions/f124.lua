
-- Function f124; 30 recovered instruction blocks.
F.f124=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f124",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f124 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p17
::p3::
tick(3)
do
do
registers[9] = (registers[1]["segments"])
end

end
::p4::
do
do
(registers)[9] = registers[9][registers[8]]
end

end
::p5::
do
do
(registers)[10] = upvalues[0][136]
end

end
goto p60
::p7::
tick(7)
do
do
registers[5] = (1)
end

end
::p8::
do
do
registers[6] = (registers[1]["segments"])
end

end
::p9::
do
do
registers[6] = (#registers[6])
end

end
::p10::
do
do
registers[7] = (1)
end

end
::p11::
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
if branch_taken then goto p55 end
::p12::
tick(12)
do
do
(registers)[3] = registers[3] + registers[12]
end

end
::p13::
do
do
(registers)[12] = upvalues[0][151]
end

end
::p14::
do
do
(registers)[13] = registers[4]
end

end
goto p57
::p17::
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
::p18::
do
do
registers[3] = (0)
end

end
::p19::
do
do
registers[4] = (0)
end

end
goto p7
::p55::
tick(55)
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
if branch_taken then goto p3 end
goto p87
::p57::
do
do
(registers)[14] = registers[11]
end

end
::p58::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p77
::p60::
do
do
(registers)[11] = registers[2]
end

end
::p61::
do
do
registers[12] = (registers[9][1])
end

end
::p62::
do
do
a = 10
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
::p63::
do
do
(registers)[12] = registers[10]
end

end
::p64::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p80
::p66::
tick(66)
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p67::
do
do
(registers)[4] = registers[12]
end

end
goto p55
::p77::
do
do
registers[14] = (0)
end

end
goto p66
::p80::
do
do
registers[12] = (0)
end

end
goto p12
::p87::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p88::
do
do
(registers)[5] = registers[3]
end

end
::p89::
do
do
(registers)[6] = registers[4]
end

end
::p90::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (5)
return unpack_range(a + 3 - 2, registers, a)
end

end
end
end
