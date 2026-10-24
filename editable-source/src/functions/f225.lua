
-- Function f225; 39 recovered instruction blocks.
F.f225=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f225",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f225 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p76
::p11::
tick(11)
do
do
(registers)[2] = upvalues[1]["clear"]
end

end
::p12::
do
do
top = (2)
registers[top]()
top = top - 1
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
::p28::
tick(28)
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
::p29::
tick(29)
do
do
upvalues[1]["active"] = (registers[1])
end

end
::p30::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
::p31::
do
do
registers[3] = ("aim_fire")
end

end
::p32::
do
do
(registers)[4] = upvalues[1]["aim_fire"]
end

end
::p33::
do
do
(registers)[5] = registers[1]
end

end
::p34::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p35::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
goto p80
::p57::
tick(57)
do
do
(registers)[1] = upvalues[1]["is_enabled"]
end

end
::p58::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p59::
do
do
(registers)[2] = upvalues[1]["active"]
end

end
::p60::
branch_taken=false
do
do
if registers[2] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p28
::p62::
tick(62)
do
do
(registers)[5] = registers[1]
end

end
::p63::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p64::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
goto p115
::p76::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p77::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p78::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p110
::p80::
do
do
registers[3] = ("aim_hit")
end

end
::p81::
do
do
(registers)[4] = upvalues[1]["aim_hit"]
end

end
::p82::
do
do
(registers)[5] = registers[1]
end

end
::p83::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p111
::p94::
tick(94)
do
do
(registers)[5] = registers[1]
end

end
::p95::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p96::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
::p97::
do
do
registers[3] = ("player_hurt")
end

end
::p98::
do
do
(registers)[4] = upvalues[1]["player_hurt"]
end

end
goto p62
::p110::
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
::p111::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
::p112::
do
do
registers[3] = ("aim_miss")
end

end
::p113::
do
do
(registers)[4] = upvalues[1]["aim_miss"]
end

end
goto p94
::p115::
do
do
registers[3] = ("paint")
end

end
::p116::
do
do
(registers)[4] = upvalues[1]["paint"]
end

end
::p117::
do
do
(registers)[5] = registers[1]
end

end
::p118::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p119::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p11
end
end
