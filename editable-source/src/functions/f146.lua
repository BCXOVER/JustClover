
-- Function f146; 61 recovered instruction blocks.
F.f146=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f146",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f146 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p57
::p2::
tick(2)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p158
::p4::
tick(4)
do
do
(registers)[6] = upvalues[1]["is_double_tap"]
end

end
::p5::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p6::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p160
::p22::
tick(22)
do
do
registers[1]["force_defensive_active"] = true
end

end
::p23::
do
do
registers[2]["force_defensive"] = true
end

end
::p24::
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
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p146
::p29::
tick(29)
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
::p36::
tick(36)
do
do
(registers)[6] = upvalues[1]["is_on_shot_antiaim"]
end

end
::p37::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p38::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p151
::p43::
tick(43)
do
do
(registers)[6] = upvalues[1]["is_on_shot_antiaim"]
end

end
::p44::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p45::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p22
::p57::
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
::p58::
do
do
registers[1]["force_defensive_active"] = false
end

end
::p59::
do
do
registers[2]["force_defensive"] = false
end

end
::p60::
do
do
(registers)[4] = registers[3]
end

end
::p61::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p107
::p89::
tick(89)
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_hidden_enabled"]
end

end
::p90::
do
do
(registers)[7] = registers[3]
end

end
::p91::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p92::
do
do
a = upvalues[0];
(registers)[6] = (a[2][a[1]]["exploits"])
end

end
goto p127
::p99::
tick(99)
do
do
(registers)[6] = upvalues[1]["is_double_tap"]
end

end
::p100::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p101::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p36
::p103::
tick(103)
do
do
registers[6] = (registers[2]["command_number"])
end

end
::p104::
do
do
registers[6] = registers[6] % 7
end

end
::p105::
do
do
registers[6] = (registers[6] == 0)
end

end
goto p118
::p107::
do
do
registers[4] = (registers[3]["force_defensive"])
end

end
goto p2
::p110::
tick(110)
do
do
a = (6)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p111::
do
do
registers[8] = ("Double tap")
end

end
::p112::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p113::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p4
::p116::
tick(116)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p99
::p118::
tick(118)
do
do
registers[2]["force_defensive"] = (registers[6])
end

end
::p119::
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
::p127::
do
do
registers[6] = (registers[6]["charged"])
end

end
::p128::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p171 end
::p136::
do
do
registers[1]["backtrack_cleaner_timer"] = 0
end

end
::p137::
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
::p140::
do
do
a = (6)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p141::
do
do
registers[8] = ("On shot anti-aim")
end

end
::p142::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p143::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p43
::p146::
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
::p151::
do
do
registers[1]["force_defensive_active"] = true
end

end
::p152::
do
do
(registers)[6] = environment["type"]
end

end
::p153::
do
do
registers[7] = (registers[2]["command_number"])
end

end
::p154::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p155::
do
do
(registers)[6] = (registers[6] ~= "number")
end

end
::p156::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p103
::p158::
do
do
(registers)[4] = nil
end

end
goto p89
::p160::
do
do
registers[1]["force_defensive_active"] = true
end

end
::p161::
do
do
registers[2]["force_defensive"] = true
end

end
::p162::
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
::p171::
do
do
a = (6)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["update_invalid_tick_cleaner"]
end

end
::p172::
do
do
(registers)[8] = registers[2]
end

end
::p173::
do
do
(registers)[9] = registers[3]
end

end
::p174::
do
do
a = (6)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p116
end
end
