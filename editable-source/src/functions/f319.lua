
-- Function f319; 44 recovered instruction blocks.
F.f319=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f319",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f319 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p6
::p6::
do
do
a = {
    ...,
}
for f = 1, 7, 1 do
    registers[f] = (a[f])
end
end

end
::p7::
do
do
(registers)[8] = upvalues[0]["get_animation_alpha"]
end

end
::p8::
do
do
registers[9] = (registers[1]["key"])
end

end
::p9::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p10::
do
do
(registers)[9] = upvalues[0]["get_animation_slide"]
end

end
::p11::
do
do
registers[10] = (registers[1]["key"])
end

end
goto p106
::p13::
tick(13)
do
do
(registers)[13] = registers[3]
end

end
::p14::
do
do
(registers)[14] = registers[4]
end

end
::p15::
do
do
(registers)[15] = registers[5]
end

end
::p16::
do
do
(registers)[16] = registers[8]
end

end
::p24::
do
do
a = (11)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p25::
do
do
(registers)[11] = upvalues[0]["draw_item"]
end

end
::p26::
do
do
(registers)[12] = registers[1]
end

end
::p27::
do
do
(registers)[13] = registers[2]
end

end
goto p31
::p29::
tick(29)
do
do
a = (11)
top = a + 7 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p30::
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
::p31::
do
do
(registers)[14] = registers[3]
end

end
::p32::
do
do
(registers)[15] = registers[4]
end

end
::p33::
do
do
(registers)[16] = registers[5]
end

end
::p34::
do
do
(registers)[17] = registers[6]
end

end
::p35::
do
do
(registers)[18] = registers[7]
end

end
::p36::
do
do
(registers)[19] = registers[8]
end

end
::p37::
do
do
(registers)[20] = registers[9]
end

end
::p45::
do
do
registers[21] = (false)
end

end
::p46::
do
do
a = (11)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p47::
do
do
(registers)[11] = upvalues[0]["draw_planting_progress_circle"]
end

end
::p48::
do
do
(registers)[12] = registers[10]
end

end
::p49::
do
do
(registers)[13] = registers[3]
end

end
goto p120
::p106::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p107::
do
do
(registers)[10] = upvalues[1][154]
end

end
::p108::
do
do
(registers)[11] = upvalues[0]["px"]
end

end
::p109::
do
do
registers[12] = (26)
end

end
::p110::
do
do
(registers)[13] = registers[6]
end

end
::p111::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p112::
do
do
(registers)[11] = registers[11] * registers[9]
end

end
::p113::
do
do
registers[11] = registers[11] + 0.5
end

end
::p114::
do
do
a = (10);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p115::
do
do
registers[10] = (registers[2] - registers[10])
end

end
::p116::
do
do
(registers)[11] = upvalues[0]["draw_row_background"]
end

end
::p117::
do
do
(registers)[12] = registers[10]
end

end
goto p13
::p120::
do
do
(registers)[14] = registers[4]
end

end
::p121::
do
do
(registers)[15] = registers[5]
end

end
::p122::
do
do
(registers)[16] = registers[6]
end

end
::p123::
do
do
(registers)[17] = registers[8]
end

end
goto p29
end
end
