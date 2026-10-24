
-- Function f145; 55 recovered instruction blocks.
F.f145=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f145",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f145 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p44
::p8::
tick(8)
do
do
registers[1]["backtrack_cleaner_timer"] = 0
end

end
::p9::
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
::p10::
tick(10)
branch_taken=false
do
do
if registers[6] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p8
::p18::
tick(18)
do
do
(registers)[8] = upvalues[0][154]
end

end
::p19::
do
do
registers[9] = (registers[1]["backtrack_cleaner_timer"])
end

end
::p20::
do
do
registers[9] = registers[9] / 11
end

end
::p21::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p141
::p24::
tick(24)
do
do
registers[1]["backtrack_cleaner_timer"] = 0
end

end
::p25::
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
::p26::
tick(26)
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
::p27::
tick(27)
do
do
(registers)[5] = upvalues[0][47]
end

end
::p28::
do
do
(registers)[6] = registers[4]
end

end
::p29::
do
do
registers[7] = ("m_bFreezePeriod")
end

end
::p30::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p31::
branch_taken=false
do
do
if registers[5] ~= 1 then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p24
::p42::
tick(42)
do
do
registers[1]["backtrack_cleaner_timer"] = 0
end

end
::p43::
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
::p44::
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
::p45::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_invalid_tick_cleaner_enabled"]
end

end
::p46::
do
do
(registers)[6] = registers[3]
end

end
::p47::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p139
::p49::
tick(49)
do
do
registers[7] = (registers[7] * 11)
end

end
::p50::
do
do
registers[8] = (registers[1]["backtrack_cleaner_timer"])
end

end
::p51::
branch_taken=false
do
do
if not (registers[8] < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
goto p18
::p55::
do
do
registers[8] = (registers[1]["backtrack_cleaner_timer"])
end

end
::p56::
do
do
registers[9] = registers[7] + 32
end

end
::p57::
branch_taken=false
do
do
if not (registers[8] < registers[9]) then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p106
::p59::
tick(59)
do
do
(registers)[5] = upvalues[0][32]
end

end
::p60::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p61::
do
do
(registers)[6] = upvalues[0][52]
end

end
::p62::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p63::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p127
::p70::
do
do
registers[1]["backtrack_cleaner_timer"] = 0
end

end
goto p26
::p103::
tick(103)
do
do
registers[1]["backtrack_cleaner_timer"] = (registers[8])
end

end
goto p26
::p106::
do
do
registers[2]["force_defensive"] = true
end

end
::p107::
do
do
registers[8] = (registers[1]["backtrack_cleaner_timer"])
end

end
::p108::
do
do
registers[8] = registers[8] + 1
end

end
goto p103
::p127::
do
do
(registers)[7] = upvalues[0][50]
end

end
::p128::
do
do
(registers)[8] = registers[5]
end

end
::p129::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p130::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p10
::p135::
do
do
registers[1]["force_defensive_active"] = true
end

end
::p136::
do
do
registers[7] = (upvalues[1])
end

end
::p137::
do
do
registers[7] = (#registers[7])
end

end
goto p49
::p139::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p42
::p141::
do
do
registers[8] = registers[8] + 1
end

end
::p142::
do
do
(registers)[9] = upvalues[1][registers[8]]
end

end
::p143::
do
do
registers[9] = (registers[9] == true)
end

end
::p144::
do
do
registers[2]["force_defensive"] = (registers[9])
end

end
::p146::
do
do
registers[9] = (registers[1]["backtrack_cleaner_timer"])
end

end
::p147::
do
do
registers[9] = registers[9] + 1
end

end
::p148::
do
do
registers[1]["backtrack_cleaner_timer"] = (registers[9])
end

end
goto p26
::p167::
do
do
(registers)[4] = upvalues[0][44]
end

end
::p168::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p169::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p27
end
end
