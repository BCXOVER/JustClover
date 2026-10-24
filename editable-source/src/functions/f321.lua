
-- Function f321; 23 recovered instruction blocks.
F.f321=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f321",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f321 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p87
::p18::
tick(18)
do
do
(registers)[3] = upvalues[0]["px"]
end

end
::p19::
do
do
registers[4] = (21)
end

end
::p20::
do
do
(registers)[5] = registers[2]
end

end
goto p69
::p28::
tick(28)
branch_taken=false
do
do
if registers[1] ~= "hc" then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
::p41::
do
do
(registers)[3] = upvalues[0]["px"]
end

end
::p42::
do
do
registers[4] = (22)
end

end
::p43::
do
do
(registers)[5] = registers[2]
end

end
::p44::
do
do
a = (3)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p48::
tick(48)
branch_taken=false
do
do
if registers[1] ~= "ping" then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
::p56::
do
do
(registers)[3] = upvalues[0]["px"]
end

end
::p57::
do
do
registers[4] = (25)
end

end
::p58::
do
do
(registers)[5] = registers[2]
end

end
goto p70
::p60::
tick(60)
do
do
a = (3.0);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p61::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p18
::p69::
do
do
a = (3)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p70::
do
do
a = (3)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p82::
do
do
(registers)[3] = upvalues[0]["px"]
end

end
::p83::
do
do
registers[4] = (18)
end

end
::p84::
do
do
(registers)[5] = registers[2]
end

end
goto p102
::p87::
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
::p88::
do
do
(registers)[3] = upvalues[0]["is_bomb_indicator_kind"]
end

end
::p89::
do
do
(registers)[4] = registers[1]
end

end
goto p60
::p102::
do
do
a = (3)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
end
end
