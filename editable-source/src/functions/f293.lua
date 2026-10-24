
-- Function f293; 27 recovered instruction blocks.
F.f293=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f293",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f293 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p73
::p8::
tick(8)
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
::p9::
tick(9)
do
do
(registers)[2] = upvalues[1][141]
end

end
::p10::
do
do
(registers)[3] = registers[1]
end

end
::p11::
do
do
registers[4] = ("Override prefer body aim")
end

end
goto p24
::p13::
tick(13)
do
do
(registers)[2] = upvalues[1][141]
end

end
::p14::
do
do
(registers)[3] = registers[1]
end

end
::p15::
do
do
registers[4] = ("Force body yaw")
end

end
::p16::
do
do
registers[5] = (false)
end

end
::p17::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p39
::p24::
do
do
registers[5] = ("-")
end

end
::p25::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p26::
do
do
(registers)[2] = upvalues[0]["applied_body"]
end

end
::p27::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
goto p8
::p39::
do
do
(registers)[2] = upvalues[1][141]
end

end
::p40::
do
do
(registers)[3] = registers[1]
end

end
::p41::
do
do
registers[4] = ("Force body yaw value")
end

end
::p42::
do
do
registers[5] = (0)
end

end
goto p77
::p61::
tick(61)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p103 end
goto p13
::p73::
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
::p74::
do
do
(registers)[2] = upvalues[0]["applied"]
end

end
::p75::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
goto p61
::p77::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p78::
do
do
(registers)[2] = upvalues[0]["applied"]
end

end
::p79::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p103::
do
do
(registers)[2] = upvalues[0]["applied_body"]
end

end
::p104::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p105::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p9
end
end
