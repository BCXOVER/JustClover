
-- Function f330; 42 recovered instruction blocks.
F.f330=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f330",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f330 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p27
::p10::
tick(10)
do
do
registers[2] = (registers[1]["target"])
end

end
goto p147
::p25::
tick(25)
do
do
registers[5] = (0)
end

end
goto p75
::p27::
tick(27)
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
::p28::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p72
::p55::
tick(55)
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
::p56::
tick(56)
do
do
registers[5] = (registers[3]["miss_streak"])
end

end
::p57::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p75 end
goto p25
::p59::
tick(59)
do
do
(registers)[2] = environment["tonumber"]
end

end
::p60::
do
do
registers[3] = (registers[1]["target"])
end

end
::p61::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p62::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p10
::p64::
tick(64)
do
do
registers[3] = (registers[1]["reason"])
end

end
::p65::
branch_taken=false
do
do
if registers[3] ~= "prediction error" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p55
::p68::
tick(68)
do
do
(registers)[4] = upvalues[1][23]
end

end
::p69::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p70::
do
do
registers[4] = registers[4] + 48
end

end
goto p106
::p72::
do
do
registers[2] = (registers[1]["target"])
end

end
::p73::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p64
::p75::
do
do
registers[5] = registers[5] + 1
end

end
::p76::
do
do
registers[6] = (4)
end

end
::p77::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p78::
do
do
registers[3]["miss_streak"] = (registers[4])
end

end
::p79::
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
::p81::
tick(81)
do
do
registers[4]["origin"] = (registers[0])
end

end
::p82::
do
do
registers[4]["penalty_until"] = 0
end

end
::p83::
do
do
registers[4]["boost_until"] = 0
end

end
::p99::
do
do
registers[4]["stable_ticks"] = 0
end

end
::p100::
do
do
registers[4]["hit_streak"] = 0
end

end
::p101::
do
do
registers[4]["miss_streak"] = 0
end

end
::p102::
do
do
(registers)[3] = registers[4]
end

end
::p103::
do
do
(registers)[4] = upvalues[0]["player_state"]
end

end
::p104::
do
do
(registers[4])[registers[2]] = registers[3]
end

end
goto p68
::p106::
do
do
registers[3]["penalty_until"] = (registers[4])
end

end
::p107::
do
do
registers[3]["boost_until"] = 0
end

end
::p108::
do
do
registers[3]["hit_streak"] = 0
end

end
::p109::
do
do
(registers)[4] = upvalues[1][162]
end

end
goto p56
::p126::
tick(126)
do
do
registers[4] = {
}
end

end
::p127::
do
do
registers[4]["velocity"] = (registers[0])
end

end
::p128::
do
do
registers[4]["simtime"] = (registers[0])
end

end
goto p81
::p147::
do
do
(registers)[3] = upvalues[0]["player_state"]
end

end
::p148::
do
do
(registers)[3] = registers[3][registers[2]]
end

end
::p149::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p126
end
end
