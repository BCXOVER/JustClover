
-- Function f153; 90 recovered instruction blocks.
F.f153=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f153",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f153 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p85
::p2::
tick(2)
do
do
(registers)[9] = registers[1]
end

end
::p3::
do
do
(registers)[10] = registers[2]
end

end
::p4::
do
do
(registers)[11] = registers[4]
end

end
::p5::
do
do
(registers)[12] = registers[5]
end

end
goto p132
::p7::
tick(7)
do
do
a = (8)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p8::
do
do
(registers)[8] = upvalues[0][130]
end

end
::p9::
do
do
(registers)[9] = registers[1]
end

end
::p10::
do
do
(registers)[10] = registers[2]
end

end
goto p158
::p20::
tick(20)
do
do
(registers)[12] = registers[5]
end

end
::p21::
do
do
(registers)[13] = registers[6]
end

end
::p22::
do
do
(registers)[14] = upvalues[0][154]
end

end
::p23::
do
do
registers[15] = (registers[7] * 0.065)
end

end
goto p66
::p39::
tick(39)
do
do
registers[15] = (registers[7] * 0.105)
end

end
::p40::
do
do
registers[15] = registers[15] + 0.5
end

end
::p41::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p163
::p43::
tick(43)
do
do
a = (8)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p44::
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
::p54::
tick(54)
do
do
(registers)[8] = upvalues[0][130]
end

end
::p55::
do
do
(registers)[9] = registers[1]
end

end
::p56::
do
do
(registers)[10] = registers[2]
end

end
::p57::
do
do
(registers)[11] = registers[4]
end

end
::p58::
do
do
(registers)[12] = registers[5]
end

end
goto p109
::p66::
do
do
registers[15] = registers[15] + 0.5
end

end
::p67::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p68::
do
do
registers[15] = (10)
end

end
::p69::
do
do
registers[16] = (0)
end

end
::p70::
do
do
registers[17] = (1)
end

end
goto p7
::p81::
tick(81)
do
do
(registers)[9] = registers[1]
end

end
::p82::
do
do
(registers)[10] = registers[2]
end

end
::p83::
do
do
(registers)[11] = registers[4]
end

end
goto p20
::p85::
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
::p86::
do
do
registers[4] = (registers[3][1])
end

end
::p87::
do
do
registers[5] = (registers[3][2])
end

end
::p88::
do
do
registers[6] = (registers[3][3])
end

end
::p89::
do
do
registers[7] = (registers[3][4])
end

end
::p90::
do
do
(registers)[8] = upvalues[0][130]
end

end
::p91::
do
do
(registers)[9] = registers[1]
end

end
::p92::
do
do
(registers)[10] = registers[2]
end

end
::p93::
do
do
(registers)[11] = registers[4]
end

end
::p94::
do
do
(registers)[12] = registers[5]
end

end
::p95::
do
do
(registers)[13] = registers[6]
end

end
::p96::
do
do
(registers)[14] = upvalues[0][154]
end

end
goto p138
::p98::
tick(98)
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p99::
do
do
registers[15] = (3)
end

end
::p100::
do
do
registers[16] = (0)
end

end
::p101::
do
do
registers[17] = (1)
end

end
goto p43
::p109::
do
do
(registers)[13] = registers[6]
end

end
::p110::
do
do
(registers)[14] = upvalues[0][154]
end

end
::p111::
do
do
registers[15] = (registers[7] * 0.04)
end

end
::p112::
do
do
registers[15] = registers[15] + 0.5
end

end
::p113::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p114::
do
do
registers[15] = (13)
end

end
::p115::
do
do
registers[16] = (0)
end

end
::p116::
do
do
registers[17] = (1)
end

end
::p117::
do
do
a = (8)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p118::
do
do
(registers)[8] = upvalues[0][130]
end

end
goto p81
::p120::
tick(120)
do
do
(registers)[12] = registers[5]
end

end
::p121::
do
do
(registers)[13] = registers[6]
end

end
::p122::
do
do
(registers)[14] = upvalues[0][154]
end

end
::p123::
do
do
registers[15] = (registers[7] * 0.175)
end

end
::p124::
do
do
registers[15] = registers[15] + 0.5
end

end
::p125::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p126::
do
do
registers[15] = (5)
end

end
::p127::
do
do
registers[16] = (0)
end

end
::p128::
do
do
registers[17] = (1)
end

end
::p129::
do
do
a = (8)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p130::
do
do
(registers)[8] = upvalues[0][130]
end

end
goto p2
::p132::
do
do
(registers)[13] = registers[6]
end

end
::p133::
do
do
(registers)[14] = upvalues[0][154]
end

end
::p134::
do
do
registers[15] = (registers[7] * 0.28)
end

end
::p135::
do
do
registers[15] = registers[15] + 0.5
end

end
goto p98
::p138::
do
do
registers[15] = (registers[7] * 0.024)
end

end
::p139::
do
do
registers[15] = registers[15] + 0.5
end

end
::p140::
do
do
a = (14);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p177
::p142::
tick(142)
do
do
a = (8)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p143::
do
do
(registers)[8] = upvalues[0][130]
end

end
::p144::
do
do
(registers)[9] = registers[1]
end

end
::p145::
do
do
(registers)[10] = registers[2]
end

end
::p146::
do
do
(registers)[11] = registers[4]
end

end
goto p120
::p158::
do
do
(registers)[11] = registers[4]
end

end
::p159::
do
do
(registers)[12] = registers[5]
end

end
::p160::
do
do
(registers)[13] = registers[6]
end

end
::p161::
do
do
(registers)[14] = upvalues[0][154]
end

end
goto p39
::p163::
do
do
registers[15] = (7)
end

end
::p164::
do
do
registers[16] = (0)
end

end
::p165::
do
do
registers[17] = (1)
end

end
goto p142
::p177::
do
do
registers[15] = (16)
end

end
::p178::
do
do
registers[16] = (0)
end

end
::p179::
do
do
registers[17] = (1)
end

end
::p180::
do
do
a = (8)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p54
end
end
