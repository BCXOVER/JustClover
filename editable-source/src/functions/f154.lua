
-- Function f154; 26 recovered instruction blocks.
F.f154=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f154",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f154 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p38
::p2::
tick(2)
do
do
(registers)[8] = registers[6]
end

end
::p3::
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
a = (7)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p4::
tick(4)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
do
do
(registers)[4] = environment["tostring"]
end

end
::p6::
do
do
(registers)[5] = registers[2]
end

end
::p7::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p8::
do
do
registers[4] = ":" .. registers[4]
end

end
goto p33
::p30::
tick(30)
do
do
registers[5] = (registers[4][1])
end

end
::p31::
do
do
registers[6] = (registers[4][2])
end

end
::p32::
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
::p33::
do
do
registers[3] = (registers[3] .. registers[4])
end

end
::p34::
do
do
(registers)[4] = upvalues[0][registers[3]]
end

end
::p35::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p72 end
goto p30
::p38::
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
::p39::
do
do
(registers)[3] = environment["tostring"]
end

end
::p40::
do
do
(registers)[4] = registers[1]
end

end
goto p4
::p72::
do
do
(registers)[5] = upvalues[1][136]
end

end
::p73::
do
do
(registers)[6] = registers[1]
end

end
::p74::
do
do
(registers)[7] = registers[2]
end

end
::p75::
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
::p76::
do
do
registers[7] = new_frame(2)
end

end
::p77::
do
do
(registers)[8] = registers[5]
end

end
::p78::
do
do
(registers)[9] = registers[6]
end

end
::p79::
do
do
a = (7)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p80::
do
do
(upvalues[0])[registers[3]] = registers[7]
end

end
::p81::
do
do
(registers)[7] = registers[5]
end

end
goto p2
end
end
