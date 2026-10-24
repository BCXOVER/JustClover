
-- Function f390; 97 recovered instruction blocks.
F.f390=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f390",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f390 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p104
::p2::
tick(2)
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p3::
do
do
registers[11] = (upvalues[2])
end

end
::p4::
do
do
(registers)[12] = registers[1]
end

end
goto p54
::p6::
tick(6)
do
do
registers[10] = (0)
end

end
::p7::
do
do
registers[11] = (255)
end

end
::p8::
do
do
a = 8
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p36
::p10::
tick(10)
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
::p13::
tick(13)
do
do
registers[9] = registers[9] + 0.5
end

end
::p14::
do
do
a = 8
z = (2)
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
::p15::
do
do
a = 6
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p16::
do
do
(registers)[7] = upvalues[0][162]
end

end
::p17::
do
do
(registers)[8] = registers[6]
end

end
::p18::
do
do
(registers)[9] = upvalues[0][154]
end

end
::p19::
do
do
registers[10] = (registers[3] * 0.5)
end

end
::p20::
do
do
a = 9
z = (2)
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
::p21::
do
do
a = 7
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p22::
do
do
(registers)[6] = registers[7]
end

end
::p23::
do
do
(registers)[7] = upvalues[0][151]
end

end
goto p172
::p26::
tick(26)
do
do
a = (11)
top = a + 8 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p27::
do
do
(registers)[11] = upvalues[0][129]
end

end
::p28::
do
do
(registers)[12] = registers[1]
end

end
::p29::
do
do
(registers)[13] = registers[9]
end

end
::p30::
do
do
(registers)[14] = registers[6]
end

end
goto p165
::p32::
tick(32)
do
do
(registers)[14] = registers[6]
end

end
::p33::
do
do
(registers)[15] = registers[10]
end

end
::p34::
do
do
registers[16] = (0)
end

end
goto p88
::p36::
do
do
registers[9] = registers[2] + 1
end

end
::p37::
do
do
(registers)[10] = upvalues[0][151]
end

end
::p38::
do
do
registers[11] = (1)
end

end
::p39::
do
do
(registers)[12] = (registers[4] - 2)
end

end
goto p2
::p41::
tick(41)
do
do
registers[22] = (0)
end

end
::p42::
do
do
registers[23] = (0)
end

end
::p43::
do
do
registers[24] = (true)
end

end
::p44::
do
do
a = (11)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p45::
do
do
registers[11] = (upvalues[2])
end

end
::p46::
do
do
(registers)[12] = registers[1]
end

end
::p47::
do
do
(registers)[13] = registers[2] + registers[4]
end

end
::p48::
do
do
(registers)[13] = (registers[13] - 1)
end

end
::p49::
do
do
(registers)[14] = registers[3]
end

end
::p50::
do
do
(registers)[15] = registers[6]
end

end
::p51::
do
do
(registers)[16] = registers[7]
end

end
goto p182
::p54::
do
do
(registers)[13] = registers[2]
end

end
::p55::
do
do
(registers)[14] = registers[3]
end

end
::p56::
do
do
(registers)[15] = registers[6]
end

end
::p57::
do
do
(registers)[16] = registers[7]
end

end
::p58::
do
do
registers[17] = (1)
end

end
::p59::
do
do
registers[18] = (210)
end

end
goto p26
::p78::
tick(78)
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
::p79::
tick(79)
do
do
registers[21] = (0)
end

end
::p80::
do
do
registers[22] = (0)
end

end
::p81::
do
do
(registers)[23] = registers[8]
end

end
::p82::
do
do
registers[24] = (true)
end

end
goto p108
::p85::
tick(85)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p95
::p88::
do
do
registers[17] = (0)
end

end
::p89::
do
do
registers[18] = (0)
end

end
::p90::
do
do
(registers)[19] = registers[8]
end

end
::p91::
do
do
registers[20] = (0)
end

end
::p92::
do
do
registers[21] = (0)
end

end
goto p41
::p95::
do
do
registers[9] = (110)
end

end
goto p6
::p104::
do
do
a = {
    ...,
}
for f = 1, 5, 1 do
    registers[f] = (a[f])
end
end

end
::p105::
branch_taken=false
do
do
if registers[3] <= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p133
::p108::
do
do
a = (11)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p109::
branch_taken=false
do
do
if not (0 < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p119 end
goto p154
::p112::
tick(112)
do
do
a = (11)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p119::
do
do
(registers)[11] = upvalues[0][129]
end

end
::p120::
do
do
(registers)[12] = registers[1] + registers[6]
end

end
::p121::
do
do
(registers)[12] = registers[12] + registers[7]
end

end
::p122::
do
do
(registers)[13] = registers[9]
end

end
goto p32
::p133::
branch_taken=false
do
do
if not (registers[4] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p160 end
goto p10
::p135::
tick(135)
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p136::
do
do
(registers)[8] = upvalues[1]["clamp"]
end

end
::p137::
do
do
(registers)[9] = registers[5]
end

end
goto p85
::p154::
do
do
(registers)[11] = upvalues[0][128]
end

end
::p155::
do
do
(registers)[12] = registers[1] + registers[6]
end

end
::p156::
do
do
(registers)[13] = registers[9]
end

end
::p157::
do
do
(registers)[14] = registers[7]
end

end
::p158::
do
do
(registers)[15] = registers[10]
end

end
goto p177
::p160::
do
do
(registers)[6] = upvalues[0][151]
end

end
::p161::
do
do
registers[7] = (4)
end

end
::p162::
do
do
(registers)[8] = upvalues[0][154]
end

end
::p163::
do
do
registers[9] = (registers[3] * 0.08)
end

end
goto p13
::p165::
do
do
(registers)[15] = registers[10]
end

end
::p166::
do
do
registers[16] = (0)
end

end
::p167::
do
do
registers[17] = (0)
end

end
::p168::
do
do
registers[18] = (0)
end

end
::p169::
do
do
registers[19] = (0)
end

end
::p170::
do
do
registers[20] = (0)
end

end
goto p79
::p172::
do
do
registers[8] = (0)
end

end
::p173::
do
do
registers[9] = (registers[6] * 2)
end

end
::p174::
do
do
registers[9] = (registers[3] - registers[9])
end

end
goto p135
::p177::
do
do
registers[16] = (0)
end

end
::p178::
do
do
registers[17] = (0)
end

end
::p179::
do
do
registers[18] = (0)
end

end
::p180::
do
do
(registers)[19] = registers[8]
end

end
goto p112
::p182::
do
do
registers[17] = (1)
end

end
::p183::
do
do
registers[18] = (210)
end

end
::p184::
do
do
a = (11)
top = a + 8 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p78
end
end
