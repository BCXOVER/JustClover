
-- Function f386; 36 recovered instruction blocks.
F.f386=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f386",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f386 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p16
::p2::
tick(2)
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
::p14::
tick(14)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p45
::p16::
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
::p17::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p84
::p20::
tick(20)
do
do
(registers)[2] = upvalues[0]["player_state"]
end

end
::p21::
do
do
(registers)[3] = environment["tonumber"]
end

end
::p22::
do
do
registers[4] = (registers[1]["target"])
end

end
::p23::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p14
::p34::
tick(34)
do
do
registers[4] = (0)
end

end
goto p74
::p36::
tick(36)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p34
::p38::
tick(38)
do
do
registers[2]["stable_ticks"] = (registers[3])
end

end
goto p2
::p40::
tick(40)
do
do
registers[4] = registers[4] + 2
end

end
::p41::
do
do
registers[5] = (12)
end

end
::p42::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p38
::p45::
do
do
registers[3] = (registers[1]["target"])
end

end
goto p98
::p47::
tick(47)
do
do
registers[2]["penalty_until"] = 0
end

end
::p48::
do
do
(registers)[3] = upvalues[1][23]
end

end
::p49::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p50::
do
do
registers[3] = registers[3] + 24
end

end
::p51::
do
do
registers[2]["boost_until"] = (registers[3])
end

end
::p52::
do
do
(registers)[3] = upvalues[1][162]
end

end
::p53::
do
do
registers[4] = (registers[2]["hit_streak"])
end

end
goto p36
::p71::
tick(71)
do
do
registers[4] = (0)
end

end
goto p40
::p73::
tick(73)
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
::p74::
do
do
registers[4] = registers[4] + 1
end

end
::p75::
do
do
registers[5] = (4)
end

end
::p76::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p77::
do
do
registers[2]["hit_streak"] = (registers[3])
end

end
::p78::
do
do
registers[2]["miss_streak"] = 0
end

end
::p79::
do
do
(registers)[3] = upvalues[1][162]
end

end
::p80::
do
do
registers[4] = (registers[2]["stable_ticks"])
end

end
::p81::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p40 end
goto p71
::p84::
do
do
registers[2] = (registers[1]["target"])
end

end
::p85::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p73
::p98::
do
do
(registers)[2] = registers[2][registers[3]]
end

end
::p99::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p47
end
end
