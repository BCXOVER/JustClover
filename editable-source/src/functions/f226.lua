
-- Function f226; 29 recovered instruction blocks.
F.f226=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f226",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f226 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p42
::p29::
tick(29)
do
do
registers[4] = (false)
end

end
::p30::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p31::
do
do
(registers)[1] = upvalues[0]["set_callback"]
end

end
::p32::
do
do
registers[2] = ("aim_hit")
end

end
::p33::
do
do
(registers)[3] = upvalues[1]["aim_hit"]
end

end
goto p56
::p35::
tick(35)
do
do
upvalues[1]["active"] = false
end

end
::p36::
do
do
(registers)[1] = upvalues[1]["clear"]
end

end
::p37::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
goto p77
::p42::
do
do
(registers)[1] = upvalues[0]["set_callback"]
end

end
::p43::
do
do
registers[2] = ("aim_fire")
end

end
::p44::
do
do
(registers)[3] = upvalues[1]["aim_fire"]
end

end
goto p29
::p46::
tick(46)
do
do
registers[4] = (false)
end

end
::p47::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p48::
do
do
(registers)[1] = upvalues[0]["set_callback"]
end

end
goto p70
::p50::
tick(50)
do
do
(registers)[3] = upvalues[1]["paint"]
end

end
::p51::
do
do
registers[4] = (false)
end

end
::p52::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p35
::p56::
do
do
registers[4] = (false)
end

end
::p57::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p58::
do
do
(registers)[1] = upvalues[0]["set_callback"]
end

end
::p59::
do
do
registers[2] = ("aim_miss")
end

end
::p60::
do
do
(registers)[3] = upvalues[1]["aim_miss"]
end

end
goto p46
::p70::
do
do
registers[2] = ("player_hurt")
end

end
::p71::
do
do
(registers)[3] = upvalues[1]["player_hurt"]
end

end
::p72::
do
do
registers[4] = (false)
end

end
::p73::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p74::
do
do
(registers)[1] = upvalues[0]["set_callback"]
end

end
::p75::
do
do
registers[2] = ("paint")
end

end
goto p50
::p77::
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
end
end
