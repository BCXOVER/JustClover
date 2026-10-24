
-- Function f227; 55 recovered instruction blocks.
F.f227=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f227",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f227 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p103
::p2::
tick(2)
do
do
(registers)[5] = registers[1]
end

end
::p3::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p4::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
goto p31
::p6::
tick(6)
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
::p7::
tick(7)
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p54
::p10::
tick(10)
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
::p11::
tick(11)
do
do
(registers)[2] = upvalues[0]["reset"]
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
goto p10
::p31::
do
do
registers[3] = ("player_connect_full")
end

end
::p32::
do
do
(registers)[4] = upvalues[0]["player_connect_full"]
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
registers[2] = (upvalues[2])
end

end
::p36::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
::p37::
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p11
::p39::
tick(39)
do
do
(registers)[4] = upvalues[0]["reset"]
end

end
::p40::
do
do
(registers)[5] = registers[1]
end

end
::p41::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p42::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p43::
do
do
registers[3] = ("level_init")
end

end
::p44::
do
do
(registers)[4] = upvalues[0]["reset"]
end

end
goto p2
::p46::
tick(46)
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p47::
do
do
registers[3] = ("post_render")
end

end
::p48::
do
do
(registers)[4] = upvalues[0]["post_render"]
end

end
::p49::
do
do
(registers)[5] = registers[1]
end

end
::p50::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p51::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
goto p58
::p54::
do
do
(registers)[2] = upvalues[0]["reset"]
end

end
::p55::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
goto p6
::p58::
do
do
registers[3] = ("pre_render")
end

end
::p59::
do
do
(registers)[4] = upvalues[0]["pre_render"]
end

end
::p60::
do
do
(registers)[5] = registers[1]
end

end
::p61::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p62::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p63::
do
do
registers[3] = ("aim_miss")
end

end
::p81::
do
do
(registers)[4] = upvalues[0]["aim_miss"]
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
::p84::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
goto p108
::p87::
tick(87)
do
do
upvalues[0]["active"] = (registers[1])
end

end
::p88::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p89::
do
do
registers[3] = ("net_update_end")
end

end
::p90::
do
do
(registers)[4] = upvalues[0]["net_update_end"]
end

end
::p91::
do
do
(registers)[5] = registers[1]
end

end
::p92::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p46
::p103::
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
::p104::
do
do
registers[1] = (registers[1] == true)
end

end
::p105::
do
do
(registers)[2] = upvalues[0]["active"]
end

end
::p106::
branch_taken=false
do
do
if registers[2] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p7
::p108::
do
do
registers[3] = ("aim_hit")
end

end
::p109::
do
do
(registers)[4] = upvalues[0]["aim_hit"]
end

end
::p110::
do
do
(registers)[5] = registers[1]
end

end
::p111::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p112::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p113::
do
do
registers[3] = ("round_start")
end

end
goto p39
end
end
