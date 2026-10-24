
-- Function f228; 79 recovered instruction blocks.
F.f228=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f228",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f228 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p84
::p2::
tick(2)
do
do
registers[11] = (-1)
end

end
goto p35
::p4::
tick(4)
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p10
::p6::
tick(6)
do
do
registers[14] = (registers[14] - registers[15])
end

end
::p7::
do
do
(registers)[14] = registers[14] * registers[12]
end

end
::p8::
do
do
(registers)[13] = registers[13] + registers[14]
end

end
goto p162
::p10::
do
do
registers[12] = (1)
end

end
goto p111
::p12::
tick(12)
do
do
registers[8] = (0)
end

end
goto p120
::p15::
tick(15)
do
do
registers[1]["initialized"] = true
end

end
::p16::
do
do
(registers)[11] = upvalues[1]["random_int"]
end

end
::p17::
do
do
(registers)[12] = registers[7]
end

end
::p18::
do
do
(registers)[13] = registers[8]
end

end
goto p171
::p21::
tick(21)
do
do
(registers)[8] = registers[3]
end

end
::p22::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p12
::p31::
tick(31)
do
do
registers[9] = (0)
end

end
goto p44
::p33::
tick(33)
branch_taken=false
do
do
if not registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p141
::p35::
tick(35)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p194 end
goto p175
::p38::
tick(38)
do
do
registers[12] = (0)
end

end
::p39::
do
do
registers[13] = (1)
end

end
::p40::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p41::
do
do
registers[11] = (registers[11] == 0)
end

end
::p42::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p2
::p44::
tick(44)
do
do
(registers)[10] = upvalues[0][151]
end

end
::p45::
do
do
(registers)[11] = registers[5]
end

end
::p46::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p177 end
goto p192
::p57::
tick(57)
do
do
registers[11] = (registers[1]["initialized"])
end

end
::p58::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p219 end
goto p15
::p84::
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
::p85::
do
do
(registers)[6] = upvalues[0][30]
end

end
::p86::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
goto p181
::p88::
tick(88)
do
do
(registers)[12] = upvalues[0][162]
end

end
::p89::
do
do
registers[13] = (registers[11] / registers[10])
end

end
::p90::
do
do
registers[14] = (1)
end

end
goto p208
::p111::
do
do
registers[1]["spin_dir"] = (registers[12])
end

end
::p112::
do
do
registers[12] = (registers[1]["base_yaw"])
end

end
::p113::
do
do
registers[13] = (registers[1]["spin_dir"])
end

end
goto p200
::p120::
do
do
(registers)[9] = registers[4]
end

end
::p121::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p31
::p129::
tick(129)
do
do
(registers)[12] = upvalues[1]["random_int"]
end

end
::p130::
do
do
(registers)[13] = registers[7]
end

end
::p131::
do
do
(registers)[14] = registers[8]
end

end
::p132::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p133::
do
do
registers[1]["base_yaw"] = (registers[12])
end

end
::p134::
do
do
(registers)[12] = upvalues[1]["random_int"]
end

end
::p135::
do
do
registers[13] = (0)
end

end
goto p223
::p137::
tick(137)
do
do
(registers)[11] = registers[11] + registers[12]
end

end
::p138::
do
do
registers[1]["target_yaw"] = (registers[11])
end

end
::p139::
do
do
registers[1]["start_time"] = (registers[6])
end

end
goto p219
::p141::
do
do
registers[12] = (-1)
end

end
goto p4
::p160::
tick(160)
do
do
registers[7] = (0)
end

end
goto p21
::p162::
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
::p171::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p172::
do
do
registers[1]["base_yaw"] = (registers[11])
end

end
::p173::
do
do
(registers)[11] = upvalues[1]["random_int"]
end

end
goto p38
::p175::
do
do
registers[11] = (1)
end

end
goto p194
::p177::
tick(177)
do
do
registers[11] = registers[11] / 10
end

end
::p178::
do
do
registers[12] = (0.01)
end

end
::p179::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p57
::p181::
do
do
(registers)[7] = registers[2]
end

end
::p182::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p160
::p192::
do
do
registers[11] = (1)
end

end
goto p177
::p194::
do
do
registers[1]["spin_dir"] = (registers[11])
end

end
::p195::
do
do
registers[11] = (registers[1]["base_yaw"])
end

end
::p196::
do
do
registers[12] = (registers[1]["spin_dir"])
end

end
::p197::
do
do
(registers)[12] = registers[9] * registers[12]
end

end
goto p137
::p200::
do
do
(registers)[13] = registers[9] * registers[13]
end

end
::p201::
do
do
(registers)[12] = registers[12] + registers[13]
end

end
::p202::
do
do
registers[1]["target_yaw"] = (registers[12])
end

end
::p203::
do
do
registers[1]["start_time"] = (registers[6])
end

end
::p204::
do
do
registers[11] = (0)
end

end
goto p88
::p208::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p209::
do
do
registers[13] = (registers[1]["base_yaw"])
end

end
::p210::
do
do
registers[14] = (registers[1]["target_yaw"])
end

end
::p211::
do
do
registers[15] = (registers[1]["base_yaw"])
end

end
goto p6
::p219::
do
do
registers[11] = (registers[1]["start_time"])
end

end
::p220::
do
do
registers[11] = (registers[6] - registers[11])
end

end
::p221::
branch_taken=false
do
do
if not (not (registers[10] <= registers[11])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p129
::p223::
do
do
registers[14] = (1)
end

end
::p224::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p225::
do
do
registers[12] = (registers[12] == 0)
end

end
goto p33
end
end
