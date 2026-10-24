
-- Function f454; 79 recovered instruction blocks.
F.f454=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f454",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f454 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p88
::p7::
tick(7)
do
do
(registers)[11] = upvalues[1]["random_int"]
end

end
::p8::
do
do
registers[12] = (0)
end

end
::p9::
do
do
registers[13] = (1)
end

end
::p10::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p166
::p12::
tick(12)
do
do
(registers)[12] = upvalues[1]["random_int"]
end

end
::p13::
do
do
(registers)[13] = registers[7]
end

end
::p14::
do
do
(registers)[14] = registers[8]
end

end
goto p181
::p29::
tick(29)
do
do
registers[1]["target_pitch"] = (registers[11])
end

end
::p30::
do
do
registers[1]["start_time"] = (registers[6])
end

end
goto p62
::p32::
tick(32)
do
do
registers[12] = (-1)
end

end
goto p102
::p34::
tick(34)
do
do
registers[8] = (0)
end

end
::p35::
tick(35)
do
do
(registers)[9] = registers[4]
end

end
::p36::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p72
::p40::
tick(40)
do
do
registers[11] = (-1)
end

end
goto p211
::p42::
tick(42)
do
do
registers[11] = (1)
end

end
goto p66
::p45::
tick(45)
do
do
(registers)[12] = upvalues[0][162]
end

end
::p46::
do
do
registers[13] = (registers[11] / registers[10])
end

end
::p47::
do
do
registers[14] = (1)
end

end
::p48::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p49::
do
do
registers[13] = (registers[1]["base_pitch"])
end

end
::p50::
do
do
registers[14] = (registers[1]["target_pitch"])
end

end
::p51::
do
do
registers[15] = (registers[1]["base_pitch"])
end

end
goto p84
::p62::
tick(62)
do
do
registers[11] = (registers[1]["start_time"])
end

end
::p63::
do
do
registers[11] = (registers[6] - registers[11])
end

end
::p64::
branch_taken=false
do
do
if not (not (registers[10] <= registers[11])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p12
::p66::
tick(66)
do
do
registers[11] = registers[11] / 10
end

end
::p67::
do
do
registers[12] = (0.01)
end

end
::p68::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p69::
do
do
registers[11] = (registers[1]["initialized"])
end

end
goto p171
::p72::
do
do
registers[9] = (0)
end

end
goto p162
::p84::
do
do
registers[14] = (registers[14] - registers[15])
end

end
::p85::
do
do
(registers)[14] = registers[14] * registers[12]
end

end
::p86::
do
do
(registers)[13] = registers[13] + registers[14]
end

end
::p87::
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
return registers[13]
end

end
::p88::
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
::p89::
do
do
(registers)[6] = upvalues[0][30]
end

end
::p90::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p91::
do
do
(registers)[7] = registers[3]
end

end
::p92::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p119
::p94::
tick(94)
do
do
(registers)[8] = registers[2]
end

end
::p95::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p34
::p97::
tick(97)
do
do
registers[14] = (1)
end

end
::p98::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p99::
do
do
registers[12] = (registers[12] == 0)
end

end
::p100::
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p32
::p102::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p158 end
goto p209
::p111::
tick(111)
do
do
registers[11] = (1)
end

end
goto p151
::p113::
tick(113)
do
do
(registers)[13] = registers[9] * registers[13]
end

end
::p114::
do
do
(registers)[12] = registers[12] + registers[13]
end

end
::p115::
do
do
registers[1]["target_pitch"] = (registers[12])
end

end
::p116::
do
do
registers[1]["start_time"] = (registers[6])
end

end
goto p122
::p119::
do
do
registers[7] = (0)
end

end
goto p94
::p122::
do
do
registers[11] = (0)
end

end
goto p45
::p144::
tick(144)
do
do
registers[1]["initialized"] = true
end

end
::p145::
do
do
(registers)[11] = upvalues[1]["random_int"]
end

end
::p146::
do
do
(registers)[12] = registers[7]
end

end
::p147::
do
do
(registers)[13] = registers[8]
end

end
::p148::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p149::
do
do
registers[1]["base_pitch"] = (registers[11])
end

end
goto p7
::p151::
tick(151)
do
do
registers[1]["spin_dir"] = (registers[11])
end

end
::p152::
do
do
registers[11] = (registers[1]["base_pitch"])
end

end
::p153::
do
do
registers[12] = (registers[1]["spin_dir"])
end

end
::p154::
do
do
(registers)[12] = registers[9] * registers[12]
end

end
::p155::
do
do
(registers)[11] = registers[11] + registers[12]
end

end
goto p29
::p158::
tick(158)
do
do
registers[1]["spin_dir"] = (registers[12])
end

end
::p159::
do
do
registers[12] = (registers[1]["base_pitch"])
end

end
::p160::
do
do
registers[13] = (registers[1]["spin_dir"])
end

end
goto p113
::p162::
do
do
(registers)[10] = upvalues[0][151]
end

end
::p163::
do
do
(registers)[11] = registers[5]
end

end
::p164::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p42
::p166::
do
do
registers[11] = (registers[11] == 0)
end

end
::p167::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p211 end
goto p40
::p171::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p144
::p181::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p182::
do
do
registers[1]["base_pitch"] = (registers[12])
end

end
::p183::
do
do
(registers)[12] = upvalues[1]["random_int"]
end

end
::p184::
do
do
registers[13] = (0)
end

end
goto p97
::p209::
do
do
registers[12] = (1)
end

end
goto p158
::p211::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p111
end
end
