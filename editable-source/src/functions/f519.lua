
-- Function f519; 93 recovered instruction blocks.
F.f519=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f519",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f519 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p28
::p18::
tick(18)
do
do
(registers)[15] = upvalues[1][154]
end

end
::p19::
do
do
registers[16] = (registers[5] - registers[14])
end

end
::p20::
do
do
registers[16] = (registers[16] * 0.5)
end

end
goto p194
::p22::
tick(22)
do
do
(registers)[12] = upvalues[0]["px"]
end

end
::p23::
do
do
registers[13] = (1)
end

end
::p24::
do
do
(registers)[14] = registers[7]
end

end
::p25::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p26::
do
do
registers[13] = (registers[6] * 2)
end

end
goto p83
::p28::
do
do
a = {
    ...,
}
for f = 1, 8, 1 do
    registers[f] = (a[f])
end
end

end
::p29::
do
do
(registers)[9] = upvalues[0]["get_animation_alpha"]
end

end
::p30::
do
do
registers[10] = (registers[1]["key"])
end

end
::p31::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p32::
do
do
(registers)[10] = upvalues[0]["get_animation_slide"]
end

end
goto p208
::p34::
tick(34)
do
do
(registers)[17] = upvalues[0]["px"]
end

end
::p35::
do
do
registers[18] = (26)
end

end
::p36::
do
do
(registers)[19] = registers[7]
end

end
goto p89
::p39::
tick(39)
do
do
(registers)[21] = registers[13]
end

end
::p40::
do
do
(registers)[22] = registers[9]
end

end
::p41::
do
do
a = (17)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p43::
do
do
(registers)[17] = upvalues[0]["draw_item"]
end

end
::p44::
do
do
(registers)[18] = registers[1]
end

end
::p45::
do
do
(registers)[19] = registers[15]
end

end
goto p122
::p68::
tick(68)
do
do
(registers)[17] = upvalues[0]["draw_centered_text"]
end

end
::p69::
do
do
(registers)[18] = registers[2]
end

end
::p70::
do
do
(registers)[19] = registers[3]
end

end
::p71::
do
do
(registers)[20] = registers[4] + registers[6]
end

end
::p72::
do
do
(registers)[20] = registers[20] + registers[12]
end

end
goto p144
::p83::
do
do
(registers)[13] = registers[13] + registers[12]
end

end
::p84::
do
do
registers[14] = (registers[1]["kind"])
end

end
::p85::
do
do
registers[14] = (registers[14] == "bomb_planting")
end

end
goto p113
::p89::
do
do
a = 17
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p90::
do
do
(registers)[17] = registers[17] * registers[10]
end

end
::p91::
do
do
registers[17] = registers[17] + 0.5
end

end
::p92::
do
do
a = (16);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p93::
do
do
registers[16] = (registers[15] - registers[16])
end

end
::p94::
do
do
(registers)[17] = upvalues[0]["draw_row_background"]
end

end
::p95::
do
do
(registers)[18] = registers[11]
end

end
::p96::
do
do
(registers)[19] = registers[4]
end

end
::p97::
do
do
(registers)[20] = registers[5]
end

end
goto p39
::p107::
tick(107)
do
do
(registers)[17] = upvalues[0]["draw_planting_progress_circle"]
end

end
::p108::
do
do
(registers)[18] = registers[16]
end

end
::p109::
do
do
(registers)[19] = registers[4]
end

end
::p110::
do
do
(registers)[20] = registers[14]
end

end
goto p127
::p113::
branch_taken=false
do
do
if not registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p182 end
goto p185
::p122::
do
do
(registers)[20] = registers[4]
end

end
::p123::
do
do
(registers)[21] = registers[14]
end

end
::p124::
do
do
(registers)[22] = registers[6]
end

end
goto p132
::p127::
do
do
(registers)[21] = registers[6]
end

end
::p128::
do
do
(registers)[22] = registers[7]
end

end
::p129::
do
do
(registers)[23] = registers[9]
end

end
::p130::
do
do
a = (17)
top = a + 7 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p68
::p132::
do
do
(registers)[23] = registers[7]
end

end
::p133::
do
do
(registers)[24] = registers[8]
end

end
::p134::
do
do
(registers)[25] = registers[9]
end

end
::p135::
do
do
(registers)[26] = registers[10]
end

end
::p136::
do
do
registers[27] = (false)
end

end
::p137::
do
do
a = (17)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p138::
do
do
registers[17] = (registers[1]["kind"])
end

end
::p139::
branch_taken=false
do
do
if registers[17] ~= "bomb_planting" then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p107
::p141::
tick(141)
do
do
(registers)[17] = registers[7]
end

end
::p142::
do
do
a = 14
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p18
::p144::
do
do
(registers)[21] = registers[5]
end

end
::p145::
do
do
(registers)[22] = registers[6]
end

end
::p146::
do
do
(registers)[23] = registers[7]
end

end
::p160::
do
do
(registers)[24] = registers[8]
end

end
::p161::
do
do
(registers)[25] = registers[9]
end

end
::p162::
do
do
(registers)[26] = registers[10]
end

end
::p163::
do
do
a = (17)
top = a + 10 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p164::
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
::p165::
tick(165)
do
do
(registers)[12] = upvalues[0]["px"]
end

end
::p166::
do
do
registers[13] = (26)
end

end
::p167::
do
do
(registers)[14] = registers[7]
end

end
::p168::
do
do
a = 12
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p169::
do
do
(registers)[12] = registers[12] * registers[10]
end

end
goto p212
::p173::
tick(173)
do
do
(registers)[14] = upvalues[0]["measure_item"]
end

end
::p174::
do
do
(registers)[15] = registers[1]
end

end
::p175::
do
do
(registers)[16] = registers[8]
end

end
goto p141
::p182::
tick(182)
branch_taken=false
do
do
if registers[14] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p173
::p185::
do
do
(registers)[14] = upvalues[0]["measure_planting_item"]
end

end
::p186::
do
do
(registers)[15] = registers[1]
end

end
::p187::
do
do
(registers)[16] = registers[8]
end

end
::p188::
do
do
(registers)[17] = registers[7]
end

end
::p192::
do
do
a = 14
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p182
::p194::
do
do
registers[16] = registers[16] + 0.5
end

end
::p195::
do
do
a = (15);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p196::
do
do
(registers)[15] = registers[3] + registers[15]
end

end
::p197::
do
do
(registers)[16] = upvalues[1][154]
end

end
goto p34
::p208::
do
do
registers[11] = (registers[1]["key"])
end

end
::p209::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p210::
do
do
(registers)[11] = upvalues[1][154]
end

end
goto p165
::p212::
do
do
registers[12] = registers[12] + 0.5
end

end
::p213::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p214::
do
do
registers[11] = (registers[3] - registers[11])
end

end
goto p22
end
end
