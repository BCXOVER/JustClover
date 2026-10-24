
-- Function f241; 54 recovered instruction blocks.
F.f241=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f241",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f241 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p26
::p9::
tick(9)
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
::p23::
tick(23)
do
do
a = (6)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p54
::p26::
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
::p27::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_maps"]
end

end
::p28::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p144
::p30::
tick(30)
do
do
registers[6] = (registers[5]["Visuals"])
end

end
::p31::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p76
::p35::
tick(35)
do
do
a = (6)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["apply_group"]
end

end
::p36::
do
do
registers[8] = (registers[1]["maps"])
end

end
::p37::
do
do
registers[8] = (registers[8]["antiaim"])
end

end
goto p159
::p50::
tick(50)
do
do
(registers)[5] = upvalues[0][86]
end

end
::p51::
do
do
registers[6] = ("play resource/warning.wav")
end

end
::p52::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p9
::p54::
do
do
(registers)[6] = upvalues[0][86]
end

end
::p55::
do
do
registers[7] = ("play ui\\beepclear")
end

end
::p56::
do
do
a = (6)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p57::
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
::p66::
tick(66)
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
::p76::
do
do
a = (6)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["apply_group"]
end

end
::p77::
do
do
registers[8] = (registers[1]["maps"])
end

end
::p78::
do
do
registers[8] = (registers[8]["visuals"])
end

end
::p79::
do
do
registers[9] = (registers[4]["visuals"])
end

end
goto p23
::p81::
tick(81)
do
do
(registers)[6] = registers[4]
end

end
::p82::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p83::
branch_taken=false
do
do
if registers[5] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p50
::p96::
tick(96)
do
do
registers[5] = (registers[3][2])
end

end
::p97::
branch_taken=false
do
do
if registers[5] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p112
::p100::
tick(100)
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["decode"]
end

end
::p101::
do
do
registers[6] = (registers[3][2])
end

end
::p102::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p103::
do
do
(registers)[5] = environment["type"]
end

end
goto p81
::p112::
tick(112)
do
do
(registers)[4] = upvalues[0][86]
end

end
::p113::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p114::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p66
::p123::
tick(123)
do
do
registers[4] = (registers[3][2])
end

end
::p124::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p96
::p127::
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_selected_groups"]
end

end
::p128::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p129::
do
do
registers[6] = (registers[5]["Antiaim"])
end

end
goto p149
::p131::
tick(131)
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
tick(140)
do
do
(registers)[4] = upvalues[0][86]
end

end
::p141::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p142::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p131
::p144::
do
do
registers[3] = (registers[1]["configs_db"])
end

end
::p145::
do
do
registers[3] = (registers[3]["cfg_list"])
end

end
::p146::
do
do
(registers)[3] = registers[3][registers[2]]
end

end
::p147::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p123
::p149::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p35
::p159::
do
do
registers[9] = (registers[4]["antiaim"])
end

end
::p160::
do
do
a = (6)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p30
::p162::
do
do
registers[4] = (registers[1]["configs_db"])
end

end
::p163::
do
do
registers[4] = (registers[4]["cfg_list"])
end

end
::p164::
do
do
registers[4] = (#registers[4])
end

end
::p165::
branch_taken=false
do
do
if not (registers[4] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p140
end
end
