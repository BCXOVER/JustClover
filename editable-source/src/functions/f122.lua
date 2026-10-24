
-- Function f122; 132 recovered instruction blocks.
F.f122=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f122",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f122 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p263
::p2::
tick(2)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p144
::p5::
tick(5)
do
do
(registers)[12] = registers[9]
end

end
goto p130
::p7::
tick(7)
do
do
(registers)[6] = registers[6] + registers[3]
end

end
::p8::
do
do
registers[6] = (registers[6] - registers[2])
end

end
::p9::
do
do
(registers)[6] = registers[6] + registers[3]
end

end
goto p303
::p12::
tick(12)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p150 end
goto p52
::p14::
tick(14)
do
do
registers[7] = (registers[7] - registers[6])
end

end
::p15::
do
do
(registers)[7] = registers[7] + registers[6]
end

end
::p16::
do
do
registers[7] = (registers[7] - registers[5])
end

end
goto p126
::p18::
tick(18)
do
do
registers[9] = -132947751 + registers[9]
end

end
::p19::
do
do
registers[10] = (registers[4] - registers[3])
end

end
::p20::
do
do
(registers)[10] = registers[10] + registers[5]
end

end
goto p33
::p22::
tick(22)
do
do
(registers)[12] = registers[12] + registers[8]
end

end
::p23::
do
do
registers[12] = (registers[12] - registers[6])
end

end
::p24::
do
do
registers[12] = (registers[12] - registers[2])
end

end
::p25::
do
do
registers[12] = (registers[12] >= registers[6])
end

end
goto p260
::p27::
tick(27)
do
do
registers[8] = registers[8] == registers[2]
end

end
::p28::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p55
::p31::
tick(31)
do
do
(registers)[9] = registers[3]
end

end
goto p140
::p33::
do
do
registers[10] = (registers[10] - registers[7])
end

end
::p34::
do
do
registers[10] = (registers[10] - registers[7])
end

end
::p35::
do
do
registers[10] = (registers[10] - registers[5])
end

end
::p36::
do
do
(registers)[10] = registers[10] + registers[8]
end

end
::p37::
do
do
(registers)[10] = registers[10] + registers[9]
end

end
goto p318
::p52::
do
do
(registers)[12] = registers[1]
end

end
goto p150
::p55::
do
do
(registers)[8] = registers[5]
end

end
goto p2
::p64::
tick(64)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p243 end
goto p316
::p66::
tick(66)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p289 end
goto p216
::p69::
tick(69)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p124 end
goto p222
::p71::
tick(71)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p31
::p73::
tick(73)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p5
::p83::
tick(83)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p238 end
goto p187
::p85::
tick(85)
do
do
(registers)[7] = registers[1]
end

end
goto p299
::p89::
tick(89)
do
do
(registers)[12] = registers[12] < registers[6]
end

end
::p90::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p108
::p101::
tick(101)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
::p104::
do
do
(registers)[12] = registers[3]
end

end
goto p22
::p108::
do
do
(registers)[12] = registers[2]
end

end
goto p73
::p111::
tick(111)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
::p115::
do
do
(registers)[12] = registers[1]
end

end
goto p175
::p117::
tick(117)
do
do
registers[8] = (registers[8] - registers[6])
end

end
::p118::
do
do
(registers)[8] = registers[8] + registers[4]
end

end
::p119::
do
do
registers[8] = (registers[8] - registers[4])
end

end
::p120::
do
do
(registers)[8] = registers[8] + registers[7]
end

end
::p121::
do
do
registers[8] = -1107389522 + registers[8]
end

end
::p122::
do
do
(registers)[9] = registers[6] + registers[2]
end

end
goto p157
::p124::
tick(124)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p299 end
goto p85
::p126::
do
do
registers[7] = 855350131 + registers[7]
end

end
::p127::
do
do
(registers)[8] = registers[3] + registers[1]
end

end
::p128::
do
do
(registers)[8] = registers[8] + registers[4]
end

end
goto p268
::p130::
do
do
(registers)[11] = registers[11] + registers[12]
end

end
::p131::
do
do
a = (registers)
z = (11)
end

end
::p132::
do
do
q = (20319177570)
m = registers
end

end
::p133::
do
do
x = 11
end

end
::p134::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p135::
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
return registers[11]
end

end
::p136::
tick(136)
do
do
(registers)[12] = registers[5]
end

end
goto p101
::p138::
tick(138)
do
do
(registers)[7] = registers[4]
end

end
goto p178
::p140::
do
do
registers[9] = (registers[9] - registers[1])
end

end
::p141::
do
do
registers[9] = (registers[9] - registers[7])
end

end
::p142::
do
do
registers[9] = (registers[9] - registers[8])
end

end
goto p276
::p144::
do
do
(registers)[8] = registers[6]
end

end
goto p117
::p146::
tick(146)
do
do
(registers)[12] = registers[8]
end

end
goto p64
::p148::
tick(148)
do
do
(registers)[12] = registers[5]
end

end
goto p66
::p150::
do
do
registers[12] = (registers[12] - registers[3])
end

end
::p151::
do
do
registers[12] = (registers[12] - registers[6])
end

end
::p152::
do
do
registers[12] = registers[12] > registers[9]
end

end
::p153::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p146
::p155::
tick(155)
do
do
(registers)[7] = registers[2]
end

end
goto p14
::p157::
do
do
registers[9] = (registers[9] - registers[7])
end

end
::p158::
do
do
(registers)[9] = registers[9] + registers[4]
end

end
::p159::
do
do
registers[9] = (registers[9] <= registers[1])
end

end
::p160::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p207
::p175::
do
do
registers[12] = (registers[12] <= registers[8])
end

end
::p176::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p136
::p178::
tick(178)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p155
::p180::
tick(180)
do
do
(registers)[12] = registers[5]
end

end
goto p111
::p182::
tick(182)
do
do
(registers)[12] = registers[4]
end

end
goto p12
::p185::
tick(185)
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p180
::p187::
do
do
(registers)[7] = registers[1]
end

end
goto p238
::p207::
do
do
(registers)[9] = registers[8]
end

end
goto p71
::p216::
do
do
a = (registers)
z = 12
end

end
::p217::
do
do
q = registers
m = 10
q = (q[m])
end

end
::p218::
do
do
(a)[z] = q
end

end
goto p289
::p220::
tick(220)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p235
::p222::
do
do
(registers)[7] = registers[3]
end

end
goto p124
::p235::
do
do
(registers)[7] = registers[4]
end

end
goto p83
::p238::
do
do
registers[7] = (registers[7] - registers[5])
end

end
::p239::
do
do
registers[7] = (registers[7] - registers[5])
end

end
::p240::
do
do
registers[7] = (registers[7] ~= registers[3])
end

end
::p241::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p178 end
goto p138
::p243::
tick(243)
do
do
registers[12] = (registers[12] ~= registers[2])
end

end
::p244::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p148
::p260::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p182
::p263::
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
::p264::
do
do
(registers)[6] = registers[4] + registers[1]
end

end
::p265::
do
do
registers[6] = (registers[6] - registers[4])
end

end
::p266::
do
do
(registers)[6] = registers[6] + registers[4]
end

end
goto p272
::p268::
do
do
(registers)[8] = registers[8] + registers[3]
end

end
::p269::
do
do
(registers)[8] = registers[8] + registers[7]
end

end
::p270::
do
do
registers[8] = (registers[8] - registers[4])
end

end
goto p27
::p272::
do
do
registers[6] = (registers[6] - registers[4])
end

end
::p273::
do
do
(registers)[6] = registers[6] + registers[2]
end

end
::p274::
do
do
(registers)[6] = registers[6] + registers[1]
end

end
goto p7
::p276::
do
do
registers[9] = (registers[9] - registers[3])
end

end
::p277::
do
do
(registers)[9] = registers[9] + registers[8]
end

end
::p278::
do
do
(registers)[9] = registers[9] + registers[3]
end

end
goto p18
::p281::
tick(281)
do
do
registers[11] = (0 * 4503599627370495)
end

end
::p282::
do
do
a = (registers)
z = 12
end

end
::p283::
do
do
q = registers
m = 6
q = (q[m])
end

end
::p284::
do
do
m = registers
x = 8
end

end
::p285::
do
do
m = m[x]
q = q + m
a[z] = q
end

end
::p286::
do
do
(registers)[12] = registers[12] + registers[5]
end

end
::p287::
do
do
registers[12] = registers[12] > registers[1]
end

end
goto p185
::p289::
do
do
registers[12] = (registers[12] - registers[4])
end

end
::p290::
do
do
(registers)[12] = registers[12] + registers[5]
end

end
::p291::
do
do
(registers)[12] = registers[12] + registers[8]
end

end
::p292::
do
do
registers[12] = (registers[12] - registers[9])
end

end
::p295::
do
do
(registers)[12] = registers[12] + registers[5]
end

end
::p296::
do
do
registers[12] = (registers[12] - registers[10])
end

end
::p297::
do
do
(registers)[12] = registers[12] + registers[8]
end

end
goto p89
::p299::
do
do
(registers)[7] = registers[7] + registers[3]
end

end
::p300::
do
do
(registers)[7] = registers[7] + registers[2]
end

end
::p301::
do
do
(registers)[7] = registers[7] < registers[5]
end

end
goto p220
::p303::
do
do
(registers)[6] = registers[6] + registers[5]
end

end
::p304::
do
do
registers[6] = -4966425099 + registers[6]
end

end
::p305::
do
do
registers[7] = (registers[5] >= registers[1])
end

end
goto p69
::p316::
do
do
(registers)[12] = registers[1]
end

end
goto p243
::p318::
do
do
(registers)[10] = registers[10] + registers[7]
end

end
::p319::
do
do
(registers)[10] = registers[10] + registers[3]
end

end
::p320::
do
do
(registers)[10] = registers[10] + registers[7]
end

end
::p321::
do
do
registers[10] = 3688927203 + registers[10]
end

end
goto p281
end
end
