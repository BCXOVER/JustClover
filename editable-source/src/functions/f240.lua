
-- Function f240; 45 recovered instruction blocks.
F.f240=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f240",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f240 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p46
::p22::
tick(22)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p95
::p32::
tick(32)
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
if branch_taken then goto p112 end
goto p85
::p46::
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
::p47::
do
do
registers[3] = (registers[1]["configs_db"])
end

end
::p48::
do
do
registers[3] = (registers[3]["cfg_list"])
end

end
::p49::
do
do
(registers)[3] = registers[3][registers[2]]
end

end
::p50::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p117
::p59::
tick(59)
do
do
registers[10] = (registers[10]["menu_list"])
end

end
::p60::
do
do
(registers)[11] = registers[8]
end

end
::p61::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p32
::p73::
tick(73)
do
do
(registers)[9] = environment["table"]
end

end
::p74::
do
do
registers[9] = (registers[9]["remove"])
end

end
::p75::
do
do
registers[10] = (registers[1]["configs_db"])
end

end
::p76::
do
do
registers[10] = (registers[10]["cfg_list"])
end

end
::p77::
do
do
(registers)[11] = registers[8]
end

end
goto p99
::p84::
tick(84)
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
::p85::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p86::
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["write_db"]
end

end
::p87::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p22
::p89::
do
do
(registers)[5] = upvalues[0][86]
end

end
::p90::
do
do
registers[6] = ("play resource/warning.wav")
end

end
::p91::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p84
::p93::
tick(93)
do
do
registers[7] = (-1)
end

end
::p94::
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
if branch_taken then goto p32 end
::p95::
do
do
(registers)[5] = upvalues[0][86]
end

end
::p96::
do
do
registers[6] = ("play ui\\beepclear")
end

end
::p97::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p84
::p99::
do
do
a = 9;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p100::
do
do
(registers)[9] = environment["table"]
end

end
::p101::
do
do
registers[9] = (registers[9]["remove"])
end

end
::p102::
do
do
registers[10] = (registers[1]["configs_db"])
end

end
goto p59
::p112::
do
do
registers[9] = (registers[1]["configs_db"])
end

end
::p113::
do
do
registers[9] = (registers[9]["cfg_list"])
end

end
::p114::
do
do
(registers)[9] = registers[9][registers[8]]
end

end
goto p121
::p117::
do
do
(registers)[4] = upvalues[0][86]
end

end
::p118::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p119::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p120::
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
::p121::
do
do
registers[9] = (registers[9][1])
end

end
::p122::
branch_taken=false
do
do
if registers[9] ~= registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p73
::p130::
do
do
registers[4] = (registers[3][1])
end

end
::p131::
do
do
registers[5] = (registers[1]["configs_db"])
end

end
::p132::
do
do
registers[5] = (registers[5]["cfg_list"])
end

end
::p133::
do
do
registers[5] = (#registers[5])
end

end
::p134::
do
do
registers[6] = (1)
end

end
goto p93
end
end
