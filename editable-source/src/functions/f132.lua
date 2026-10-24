
-- Function f132; 50 recovered instruction blocks.
F.f132=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f132",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f132 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p96
::p31::
tick(31)
do
do
(registers)[2] = upvalues[0][128]
end

end
::p32::
do
do
registers[3] = (upvalues[1])
end

end
::p33::
do
do
a = (upvalues[2]);
(registers)[4] = a[2][a[1]]
end

end
goto p74
::p36::
tick(36)
do
do
registers[6] = (upvalues[3])
end

end
::p37::
do
do
registers[7] = (0)
end

end
::p38::
do
do
registers[8] = (0)
end

end
::p39::
do
do
registers[9] = (0)
end

end
goto p70
::p42::
tick(42)
do
do
registers[13] = (0)
end

end
::p43::
do
do
registers[14] = (210)
end

end
::p44::
do
do
registers[15] = (true)
end

end
goto p102
::p57::
tick(57)
do
do
registers[8] = (0)
end

end
::p58::
do
do
registers[9] = (0)
end

end
::p59::
do
do
registers[10] = (210)
end

end
::p60::
do
do
registers[11] = (0)
end

end
::p61::
do
do
registers[12] = (0)
end

end
::p62::
do
do
registers[13] = (0)
end

end
::p63::
do
do
registers[14] = (0)
end

end
::p64::
do
do
registers[15] = (true)
end

end
goto p82
::p66::
tick(66)
do
do
registers[10] = (210)
end

end
::p67::
do
do
a = (2)
top = a + 9 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p126
::p70::
do
do
registers[10] = (0)
end

end
::p71::
do
do
registers[11] = (0)
end

end
::p72::
do
do
registers[12] = (0)
end

end
goto p42
::p74::
do
do
(registers)[3] = registers[3] + registers[4]
end

end
::p75::
do
do
(registers)[4] = registers[1]
end

end
::p76::
do
do
registers[5] = (upvalues[4])
end

end
::p77::
do
do
registers[6] = (upvalues[3])
end

end
::p78::
do
do
registers[7] = (0)
end

end
::p79::
do
do
registers[8] = (0)
end

end
::p80::
do
do
registers[9] = (0)
end

end
goto p66
::p82::
do
do
a = (2)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p83::
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
::p84::
tick(84)
do
do
(registers)[4] = registers[1]
end

end
::p85::
do
do
a = (upvalues[2]);
(registers)[5] = a[2][a[1]]
end

end
::p86::
do
do
registers[6] = (upvalues[3])
end

end
::p87::
do
do
registers[7] = (0)
end

end
goto p57
::p96::
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
::p97::
do
do
(registers)[2] = upvalues[0][129]
end

end
::p98::
do
do
registers[3] = (upvalues[1])
end

end
::p99::
do
do
(registers)[4] = registers[1]
end

end
::p100::
do
do
a = (upvalues[2]);
(registers)[5] = a[2][a[1]]
end

end
goto p36
::p102::
do
do
a = (2)
top = a + 14 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p103::
do
do
registers[2] = (upvalues[4])
end

end
::p104::
branch_taken=false
do
do
if not (0 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p31
::p126::
do
do
(registers)[2] = upvalues[0][129]
end

end
::p127::
do
do
registers[3] = (upvalues[1])
end

end
::p128::
do
do
a = (upvalues[2]);
(registers)[4] = a[2][a[1]]
end

end
::p129::
do
do
(registers)[3] = registers[3] + registers[4]
end

end
::p130::
do
do
registers[4] = (upvalues[4])
end

end
::p131::
do
do
(registers)[3] = registers[3] + registers[4]
end

end
goto p84
end
end
