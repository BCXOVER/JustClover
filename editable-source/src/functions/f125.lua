
-- Function f125; 146 recovered instruction blocks.
F.f125=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f125",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f125 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p40
::p10::
tick(10)
do
do
registers[9] = (230)
end

end
::p11::
do
do
registers[10] = registers[5] + 45
end

end
::p12::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p13::
do
do
(registers)[9] = upvalues[0][129]
end

end
goto p181
::p16::
tick(16)
do
do
(registers)[12] = registers[6]
end

end
::p17::
do
do
registers[13] = (1)
end

end
::p18::
do
do
registers[14] = (0)
end

end
::p19::
do
do
registers[15] = (0)
end

end
::p20::
do
do
registers[16] = (0)
end

end
goto p140
::p28::
tick(28)
do
do
registers[8] = (0)
end

end
::p29::
do
do
registers[9] = (registers[6] * 2)
end

end
::p30::
do
do
registers[9] = (registers[3] - registers[9])
end

end
::p31::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p32::
do
do
(registers)[8] = upvalues[0][162]
end

end
goto p10
::p36::
tick(36)
do
do
(registers)[11] = registers[2]
end

end
::p37::
do
do
(registers)[12] = registers[6]
end

end
::p38::
do
do
(registers)[13] = registers[4]
end

end
goto p51
::p40::
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
::p41::
do
do
(registers)[6] = upvalues[0][162]
end

end
::p42::
do
do
(registers)[7] = upvalues[0][154]
end

end
goto p116
::p44::
tick(44)
do
do
registers[13] = (1)
end

end
::p45::
do
do
registers[14] = (0)
end

end
::p46::
do
do
registers[15] = (0)
end

end
::p47::
do
do
registers[16] = (0)
end

end
::p48::
do
do
(registers)[17] = registers[8]
end

end
::p49::
do
do
a = (9)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p171
::p51::
do
do
registers[14] = (0)
end

end
::p52::
do
do
registers[15] = (0)
end

end
::p53::
do
do
registers[16] = (0)
end

end
goto p152
::p92::
tick(92)
do
do
a = (9)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p93::
branch_taken=false
do
do
if not (0 < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p171 end
goto p257
::p95::
tick(95)
do
do
registers[16] = (0)
end

end
::p96::
do
do
(registers)[17] = registers[8]
end

end
::p97::
do
do
registers[18] = (0)
end

end
::p98::
do
do
registers[19] = (0)
end

end
::p99::
do
do
registers[20] = (0)
end

end
::p100::
do
do
registers[21] = (0)
end

end
::p101::
do
do
registers[22] = (true)
end

end
::p102::
do
do
a = (9)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p103::
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
::p105::
tick(105)
do
do
registers[16] = (0)
end

end
::p106::
do
do
(registers)[17] = registers[8]
end

end
::p107::
do
do
a = (9)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p108::
do
do
(registers)[9] = upvalues[0][128]
end

end
goto p223
::p110::
tick(110)
do
do
(registers)[9] = upvalues[0][129]
end

end
::p111::
do
do
(registers)[10] = registers[1] + registers[6]
end

end
::p112::
do
do
(registers)[10] = registers[10] + registers[7]
end

end
goto p36
::p116::
do
do
registers[8] = (registers[3] * 0.28)
end

end
::p117::
do
do
registers[8] = registers[8] + 0.5
end

end
::p118::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p119::
do
do
registers[8] = (42)
end

end
::p120::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p121::
do
do
(registers)[7] = upvalues[0][151]
end

end
goto p28
::p132::
tick(132)
do
do
a = (9)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p133::
branch_taken=false
do
do
if not (0 < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p236
::p140::
do
do
registers[17] = (0)
end

end
::p141::
do
do
registers[18] = (0)
end

end
::p142::
do
do
registers[19] = (0)
end

end
::p143::
do
do
registers[20] = (0)
end

end
::p144::
do
do
(registers)[21] = registers[8]
end

end
goto p175
::p146::
tick(146)
do
do
(registers)[17] = registers[8]
end

end
::p147::
do
do
registers[18] = (0)
end

end
::p148::
do
do
registers[19] = (0)
end

end
::p149::
do
do
registers[20] = (0)
end

end
::p150::
do
do
registers[21] = (0)
end

end
goto p206
::p152::
do
do
(registers)[17] = registers[5]
end

end
::p153::
do
do
registers[18] = (0)
end

end
::p154::
do
do
registers[19] = (0)
end

end
goto p192
::p156::
tick(156)
do
do
(registers)[11] = registers[2] + registers[4]
end

end
::p157::
do
do
(registers)[11] = (registers[11] - 1)
end

end
::p158::
do
do
(registers)[12] = registers[6]
end

end
::p159::
do
do
registers[13] = (1)
end

end
::p160::
do
do
registers[14] = (0)
end

end
::p161::
do
do
registers[15] = (0)
end

end
goto p95
::p171::
do
do
(registers)[9] = upvalues[0][129]
end

end
::p172::
do
do
(registers)[10] = registers[1] + registers[6]
end

end
::p173::
do
do
(registers)[10] = registers[10] + registers[7]
end

end
goto p264
::p175::
do
do
registers[22] = (true)
end

end
::p176::
do
do
a = (9)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p177::
do
do
(registers)[9] = upvalues[0][129]
end

end
::p178::
do
do
(registers)[10] = registers[1] + registers[6]
end

end
::p179::
do
do
(registers)[10] = registers[10] + registers[7]
end

end
goto p156
::p181::
do
do
(registers)[10] = registers[1]
end

end
::p182::
do
do
(registers)[11] = registers[2]
end

end
::p183::
do
do
(registers)[12] = registers[6]
end

end
::p184::
do
do
(registers)[13] = registers[4]
end

end
::p185::
do
do
registers[14] = (0)
end

end
::p186::
do
do
registers[15] = (0)
end

end
::p187::
do
do
registers[16] = (0)
end

end
::p188::
do
do
registers[17] = (0)
end

end
::p189::
do
do
registers[18] = (0)
end

end
::p190::
do
do
registers[19] = (0)
end

end
goto p202
::p192::
do
do
registers[20] = (0)
end

end
::p193::
do
do
registers[21] = (0)
end

end
::p194::
do
do
registers[22] = (true)
end

end
::p195::
do
do
a = (9)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p196::
do
do
(registers)[9] = upvalues[0][129]
end

end
::p197::
do
do
(registers)[10] = registers[1]
end

end
::p198::
do
do
(registers)[11] = registers[2]
end

end
::p199::
do
do
(registers)[12] = registers[6]
end

end
::p200::
do
do
registers[13] = (1)
end

end
goto p213
::p202::
do
do
registers[20] = (0)
end

end
::p203::
do
do
(registers)[21] = registers[5]
end

end
::p204::
do
do
registers[22] = (true)
end

end
goto p132
::p206::
do
do
registers[22] = (true)
end

end
::p207::
do
do
a = (9)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p208::
do
do
(registers)[9] = upvalues[0][129]
end

end
::p209::
do
do
(registers)[10] = registers[1]
end

end
::p210::
do
do
(registers)[11] = registers[2] + registers[4]
end

end
::p211::
do
do
(registers)[11] = (registers[11] - 1)
end

end
goto p16
::p213::
do
do
registers[14] = (0)
end

end
::p214::
do
do
registers[15] = (0)
end

end
::p215::
do
do
registers[16] = (0)
end

end
::p216::
do
do
registers[17] = (0)
end

end
::p217::
do
do
registers[18] = (0)
end

end
::p218::
do
do
registers[19] = (0)
end

end
::p219::
do
do
registers[20] = (0)
end

end
::p220::
do
do
(registers)[21] = registers[8]
end

end
::p221::
do
do
registers[22] = (true)
end

end
goto p92
::p223::
do
do
(registers)[10] = registers[1] + registers[6]
end

end
::p224::
do
do
(registers)[11] = registers[2] + registers[4]
end

end
::p225::
do
do
(registers)[11] = (registers[11] - 1)
end

end
::p226::
do
do
(registers)[12] = registers[7]
end

end
goto p44
::p236::
do
do
(registers)[9] = upvalues[0][128]
end

end
::p237::
do
do
(registers)[10] = registers[1] + registers[6]
end

end
::p238::
do
do
(registers)[11] = registers[2]
end

end
goto p268
::p248::
tick(248)
do
do
registers[13] = (1)
end

end
::p249::
do
do
registers[14] = (0)
end

end
::p250::
do
do
registers[15] = (0)
end

end
goto p105
::p253::
tick(253)
do
do
registers[14] = (0)
end

end
::p254::
do
do
registers[15] = (0)
end

end
::p255::
do
do
registers[16] = (0)
end

end
goto p146
::p257::
do
do
(registers)[9] = upvalues[0][128]
end

end
::p258::
do
do
(registers)[10] = registers[1] + registers[6]
end

end
::p259::
do
do
(registers)[11] = registers[2]
end

end
::p260::
do
do
(registers)[12] = registers[7]
end

end
goto p248
::p264::
do
do
(registers)[11] = registers[2]
end

end
::p265::
do
do
(registers)[12] = registers[6]
end

end
::p266::
do
do
registers[13] = (1)
end

end
goto p253
::p268::
do
do
(registers)[12] = registers[7]
end

end
::p269::
do
do
(registers)[13] = registers[4]
end

end
::p270::
do
do
registers[14] = (0)
end

end
::p271::
do
do
registers[15] = (0)
end

end
::p272::
do
do
registers[16] = (0)
end

end
::p273::
do
do
(registers)[17] = registers[5]
end

end
::p274::
do
do
a = (9)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p110
end
end
