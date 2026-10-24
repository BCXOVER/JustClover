
-- Function f389; 44 recovered instruction blocks.
F.f389=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f389",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f389 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p102
::p2::
tick(2)
do
do
(registers)[10] = registers[2]
end

end
::p3::
do
do
(registers)[11] = registers[4]
end

end
::p4::
do
do
(registers)[12] = registers[6]
end

end
::p5::
do
do
registers[13] = (0)
end

end
::p6::
do
do
registers[14] = (0)
end

end
::p7::
do
do
registers[15] = (0)
end

end
::p8::
do
do
registers[16] = (0)
end

end
goto p83
::p17::
tick(17)
do
do
(registers)[12] = registers[6]
end

end
::p18::
do
do
registers[13] = (0)
end

end
::p19::
do
do
registers[14] = (0)
end

end
::p20::
do
do
registers[15] = (0)
end

end
::p21::
do
do
(registers)[16] = registers[7]
end

end
::p22::
do
do
a = (8)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p143
::p24::
tick(24)
do
do
(registers)[8] = upvalues[0][128]
end

end
::p25::
do
do
(registers)[9] = registers[1] + registers[4]
end

end
::p26::
do
do
(registers)[10] = registers[2]
end

end
::p27::
do
do
(registers)[11] = registers[5]
end

end
goto p17
::p51::
tick(51)
do
do
registers[17] = (0)
end

end
::p52::
do
do
registers[18] = (0)
end

end
::p53::
do
do
registers[19] = (0)
end

end
::p54::
do
do
registers[20] = (0)
end

end
::p55::
do
do
registers[21] = (true)
end

end
::p56::
do
do
a = (8)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
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
::p65::
tick(65)
do
do
registers[14] = (0)
end

end
::p66::
do
do
registers[15] = (0)
end

end
::p67::
do
do
(registers)[16] = registers[7]
end

end
goto p51
::p79::
tick(79)
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p24
::p83::
do
do
registers[17] = (0)
end

end
::p84::
do
do
registers[18] = (0)
end

end
::p85::
do
do
registers[19] = (0)
end

end
::p86::
do
do
(registers)[20] = registers[7]
end

end
::p87::
do
do
registers[21] = (true)
end

end
::p88::
do
do
a = (8)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p79
::p102::
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
::p103::
do
do
(registers)[8] = upvalues[0][129]
end

end
::p104::
do
do
(registers)[9] = registers[1]
end

end
goto p2
::p143::
do
do
(registers)[8] = upvalues[0][129]
end

end
::p144::
do
do
(registers)[9] = registers[1] + registers[4]
end

end
::p145::
do
do
(registers)[9] = registers[9] + registers[5]
end

end
::p146::
do
do
(registers)[10] = registers[2]
end

end
::p147::
do
do
(registers)[11] = registers[4]
end

end
::p148::
do
do
(registers)[12] = registers[6]
end

end
::p149::
do
do
registers[13] = (0)
end

end
goto p65
end
end
