
-- Function f135; 49 recovered instruction blocks.
F.f135=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f135",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f135 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p3
::p3::
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
::p4::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p5::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p6::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p110
::p9::
tick(9)
do
do
a = upvalues[4]
a[2][a[1]] = registers[0]
end

end
goto p55
::p13::
tick(13)
do
do
a = (upvalues[3])
a[2][a[1]] = (0)
end

end
goto p100
::p15::
tick(15)
do
do
a = (upvalues[3]);
(registers)[6] = a[2][a[1]]
end

end
::p16::
branch_taken=false
do
do
if not (registers[3] < registers[6]) then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p33
::p19::
tick(19)
branch_taken=false
do
do
if registers[6] ~= registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p9
::p33::
do
do
(registers)[6] = upvalues[0][162]
end

end
::p34::
do
do
registers[7] = (14)
end

end
::p35::
do
do
(registers)[8] = upvalues[0][151]
end

end
::p36::
do
do
registers[9] = (0)
end

end
goto p152
::p55::
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
::p71::
tick(71)
do
do
a = upvalues[3]
a[2][a[1]] = registers[3]
end

end
goto p104
::p80::
tick(80)
do
do
(registers)[4] = registers[2]
end

end
::p81::
do
do
registers[5] = ("m_nTickBase")
end

end
::p82::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p83::
do
do
a = upvalues[2];
(registers)[4] = (a[2][a[1]]["exploits"])
end

end
::p84::
do
do
registers[4] = (registers[4]["defensive"])
end

end
goto p157
::p100::
tick(100)
do
do
registers[5] = (0)
end

end
::p101::
do
do
a = (upvalues[3]);
(registers)[6] = a[2][a[1]]
end

end
::p102::
branch_taken=false
do
do
if not (registers[6] < registers[3]) then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p71
::p104::
tick(104)
do
do
registers[4]["left"] = (registers[5])
end

end
::p105::
do
do
(registers)[6] = upvalues[0][151]
end

end
::p106::
do
do
registers[7] = (registers[4]["max"])
end

end
::p107::
do
do
(registers)[8] = registers[5]
end

end
::p108::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p127
::p110::
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
::p120::
do
do
(registers)[3] = upvalues[0][47]
end

end
::p121::
do
do
(registers)[4] = registers[2]
end

end
::p122::
do
do
registers[5] = ("m_fFlags")
end

end
::p123::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p124::
do
do
a = upvalues[1]
a[2][a[1]] = registers[3]
end

end
::p125::
do
do
(registers)[3] = upvalues[0][47]
end

end
goto p80
::p127::
do
do
registers[4]["max"] = (registers[6])
end

end
::p128::
do
do
registers[6] = (registers[1]["command_number"])
end

end
::p129::
do
do
a = (upvalues[4]);
(registers)[7] = a[2][a[1]]
end

end
goto p19
::p139::
tick(139)
do
do
a = 8
z = (3)
q = 0
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
::p140::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p141::
do
do
(registers)[5] = registers[6]
end

end
goto p104
::p152::
do
do
a = (upvalues[3]);
(registers)[10] = a[2][a[1]]
end

end
::p153::
do
do
registers[10] = (registers[10] - registers[3])
end

end
::p154::
do
do
(registers)[10] = (registers[10] - 1)
end

end
goto p139
::p157::
do
do
(registers)[5] = upvalues[0][161]
end

end
::p158::
do
do
a = (upvalues[3]);
(registers)[6] = a[2][a[1]]
end

end
::p159::
do
do
registers[6] = (registers[3] - registers[6])
end

end
::p160::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p161::
branch_taken=false
do
do
if not (64 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p13
end
end
