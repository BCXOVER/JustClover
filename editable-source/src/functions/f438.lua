
-- Function f438; 36 recovered instruction blocks.
F.f438=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f438",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f438 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p59
::p38::
tick(38)
do
do
(registers)[4] = upvalues[0]["restore_all"]
end

end
::p39::
do
do
(registers)[5] = registers[1]
end

end
::p40::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p41::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p42::
do
do
registers[3] = ("level_init")
end

end
goto p63
::p59::
do
do
(registers)[1] = upvalues[0]["get_ticks"]
end

end
::p60::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p61::
do
do
(registers)[1] = registers[1] > 0
end

end
goto p123
::p63::
do
do
(registers)[4] = upvalues[0]["clear_state"]
end

end
::p64::
do
do
(registers)[5] = registers[1]
end

end
::p65::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p66::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
goto p98
::p68::
tick(68)
do
do
(registers)[2] = upvalues[0]["clear_state"]
end

end
::p69::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
goto p116
::p96::
tick(96)
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
::p98::
do
do
registers[3] = ("aim_miss")
end

end
::p99::
do
do
(registers)[4] = upvalues[0]["aim_miss"]
end

end
::p100::
do
do
(registers)[5] = registers[1]
end

end
::p101::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p102::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p103::
do
do
registers[3] = ("aim_hit")
end

end
::p104::
do
do
(registers)[4] = upvalues[0]["aim_hit"]
end

end
::p105::
do
do
(registers)[5] = registers[1]
end

end
::p106::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p107::
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p68
::p112::
tick(112)
do
do
upvalues[0]["active"] = (registers[1])
end

end
::p113::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p114::
do
do
registers[3] = ("setup_command")
end

end
goto p117
::p116::
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
::p117::
do
do
(registers)[4] = upvalues[0]["setup_command"]
end

end
::p118::
do
do
(registers)[5] = registers[1]
end

end
::p119::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p120::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p121::
do
do
registers[3] = ("run_command")
end

end
goto p38
::p123::
do
do
(registers)[2] = upvalues[0]["active"]
end

end
::p124::
branch_taken=false
do
do
if registers[2] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p96
end
end
