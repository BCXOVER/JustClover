
-- Function f318; 70 recovered instruction blocks.
F.f318=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f318",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f318 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p80
::p2::
tick(2)
do
do
(registers)[14] = 255 * registers[14]
end

end
::p3::
do
do
registers[14] = registers[14] + 0.5
end

end
::p4::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
do
do
registers[14] = (0)
end

end
goto p65
::p8::
tick(8)
do
do
(registers)[20] = 120 * registers[20]
end

end
::p9::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p10::
do
do
(registers)[20] = registers[7]
end

end
goto p50
::p22::
tick(22)
do
do
(registers)[11] = upvalues[0]["get_planting_progress"]
end

end
::p23::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p24::
do
do
(registers)[12] = upvalues[2]["clamp"]
end

end
::p25::
do
do
(registers)[13] = upvalues[1][154]
end

end
goto p166
::p39::
tick(39)
do
do
(registers)[9] = registers[5]
end

end
::p40::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p41::
do
do
(registers)[8] = upvalues[1][151]
end

end
::p42::
do
do
registers[9] = (3)
end

end
::p43::
do
do
(registers)[10] = upvalues[0]["px"]
end

end
goto p132
::p46::
tick(46)
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
::p48::
tick(48)
do
do
registers[20] = (1)
end

end
goto p8
::p50::
do
do
registers[21] = (0)
end

end
::p51::
do
do
registers[22] = (1)
end

end
::p52::
do
do
(registers)[23] = registers[8]
end

end
::p53::
do
do
a = (13)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p54::
branch_taken=false
do
do
if not (0 < registers[11]) then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p61
::p57::
tick(57)
do
do
registers[16] = (0)
end

end
::p58::
do
do
registers[17] = (0)
end

end
::p59::
do
do
registers[18] = (0)
end

end
goto p151
::p61::
do
do
(registers)[13] = upvalues[1][127]
end

end
::p62::
do
do
(registers)[14] = registers[9]
end

end
::p63::
do
do
(registers)[15] = registers[10]
end

end
goto p124
::p65::
do
do
registers[15] = (255)
end

end
::p66::
do
do
a = 12
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p67::
do
do
(registers)[13] = upvalues[1][127]
end

end
::p68::
do
do
(registers)[14] = registers[9]
end

end
::p69::
do
do
(registers)[15] = registers[10]
end

end
goto p57
::p77::
tick(77)
do
do
a = 23
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
::p78::
do
do
a = 13;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p46
::p80::
do
do
a = {
    ...,
}
for f = 1, 6, 1 do
    registers[f] = (a[f])
end
end

end
::p81::
do
do
(registers)[7] = upvalues[0]["px"]
end

end
::p82::
do
do
registers[8] = (8)
end

end
goto p39
::p99::
tick(99)
do
do
registers[14] = (1)
end

end
goto p2
::p118::
tick(118)
do
do
(registers)[23] = upvalues[1][151]
end

end
::p119::
do
do
registers[24] = (2)
end

end
::p120::
do
do
(registers)[25] = (registers[8] - 2)
end

end
goto p77
::p124::
do
do
registers[16] = (230)
end

end
::p125::
do
do
registers[17] = (230)
end

end
::p126::
do
do
registers[18] = (230)
end

end
::p127::
do
do
(registers)[19] = registers[12]
end

end
::p128::
do
do
(registers)[20] = (registers[7] - 1)
end

end
::p129::
do
do
registers[21] = (0)
end

end
::p130::
do
do
(registers)[22] = registers[11]
end

end
goto p118
::p132::
do
do
registers[11] = (4)
end

end
::p133::
do
do
(registers)[12] = registers[5]
end

end
::p134::
do
do
a = 10
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
::p135::
do
do
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p136::
do
do
(registers)[9] = registers[1] + registers[3]
end

end
::p137::
do
do
(registers)[10] = upvalues[0]["px"]
end

end
goto p175
::p151::
do
do
(registers)[19] = upvalues[1][154]
end

end
::p152::
do
do
(registers)[20] = registers[6]
end

end
::p153::
branch_taken=false
do
do
if registers[20] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p48
::p162::
tick(162)
do
do
registers[11] = registers[11] + 0.5
end

end
::p163::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p164::
do
do
(registers)[10] = registers[2] + registers[10]
end

end
goto p22
::p166::
do
do
(registers)[14] = registers[6]
end

end
::p167::
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p99
::p175::
do
do
registers[11] = (12)
end

end
::p176::
do
do
(registers)[12] = registers[5]
end

end
::p177::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p178::
do
do
registers[9] = (registers[9] - registers[10])
end

end
::p179::
do
do
(registers)[10] = upvalues[1][154]
end

end
::p180::
do
do
registers[11] = (registers[4] * 0.5)
end

end
goto p162
end
end
