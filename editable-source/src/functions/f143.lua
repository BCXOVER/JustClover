
-- Function f143; 62 recovered instruction blocks.
F.f143=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f143",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f143 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p169
::p2::
tick(2)
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p3::
do
do
registers[6] = (false)
end

end
::p4::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p5::
do
do
(registers)[4] = upvalues[1]["antiaim"]
end

end
::p6::
do
do
registers[4] = (registers[4]["fakelag"])
end

end
goto p29
::p20::
tick(20)
do
do
(registers)[3] = upvalues[1]["is_fake_duck"]
end

end
::p21::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p22::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p75
::p24::
tick(24)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p25::
do
do
registers[6] = ("Standing")
end

end
::p26::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p27::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p165
::p29::
do
do
registers[4] = (registers[4]["variance"])
end

end
::p30::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p31::
do
do
registers[6] = (0)
end

end
goto p69
::p34::
tick(34)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p97
::p59::
tick(59)
do
do
registers[3] = (true)
end

end
goto p126
::p69::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p70::
do
do
(registers)[4] = upvalues[1]["antiaim"]
end

end
::p71::
do
do
registers[4] = (registers[4]["fakelag"])
end

end
goto p122
::p74::
tick(74)
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
::p75::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["reset_disable_fakelag"]
end

end
::p76::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p77::
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
::p87::
tick(87)
do
do
registers[3] = (true)
end

end
goto p126
::p89::
tick(89)
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["reset_disable_fakelag"]
end

end
::p90::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p74
::p97::
do
do
(registers)[4] = upvalues[1]["is_on_shot_antiaim"]
end

end
::p98::
do
do
registers[5] = ("no dt")
end

end
::p99::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p100::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p118
::p102::
tick(102)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p103::
do
do
registers[6] = ("Hide Shots")
end

end
::p104::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p34
::p108::
tick(108)
do
do
(registers)[4] = upvalues[1]["is_double_tap"]
end

end
::p109::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p110::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p59
::p118::
do
do
registers[3] = (true)
end

end
goto p126
::p122::
do
do
registers[4] = (registers[4]["limit"])
end

end
::p123::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p124::
do
do
registers[6] = (1)
end

end
goto p158
::p126::
tick(126)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p176
::p128::
do
do
registers[3] = (false)
end

end
::p129::
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p130::
do
do
registers[6] = ("Double Tap")
end

end
goto p147
::p133::
tick(133)
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["reset_disable_fakelag"]
end

end
::p134::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p135::
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
::p147::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p148::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p108
::p158::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p74
::p165::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_player_standing"]
end

end
::p166::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p167::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p87
::p169::
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
::p170::
do
do
(registers)[2] = upvalues[0]["antiaim"]
end

end
::p171::
do
do
registers[2] = (registers[2]["features"])
end

end
::p172::
do
do
registers[2] = (registers[2]["disable_fakelag"])
end

end
::p173::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p133
::p176::
do
do
(registers)[4] = upvalues[1]["antiaim"]
end

end
::p177::
do
do
registers[4] = (registers[4]["fakelag"])
end

end
::p178::
do
do
registers[4] = (registers[4]["on"])
end

end
goto p2
end
end
