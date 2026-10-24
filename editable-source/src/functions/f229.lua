
-- Function f229; 40 recovered instruction blocks.
F.f229=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f229",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f229 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p93
::p8::
tick(8)
do
do
(registers)[8] = registers[2]
end

end
goto p37
::p28::
tick(28)
do
do
registers[6] = (1)
end

end
goto p100
::p31::
tick(31)
do
do
registers[9] = (0)
end

end
goto p115
::p33::
tick(33)
do
do
a = upvalues[0];
(registers)[8] = (a[2][a[1]]["packets"])
end

end
::p34::
do
do
registers[9] = (registers[1]["last_flick_at"])
end

end
::p35::
do
do
registers[8] = (registers[8] - registers[9])
end

end
goto p86
::p37::
tick(37)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p139
::p39::
tick(39)
do
do
(registers)[9] = registers[8]
end

end
::p40::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p115 end
goto p31
::p51::
tick(51)
do
do
registers[9] = (-1)
end

end
goto p134
::p65::
tick(65)
do
do
registers[7] = (0)
end

end
goto p33
::p82::
tick(82)
do
do
registers[8] = (registers[1]["flicker"])
end

end
::p83::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p8
::p86::
branch_taken=false
do
do
if not (not (registers[6] <= registers[8])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p103
::p88::
tick(88)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p51
::p93::
do
do
a = {
    ...,
}
for f = 1, 5, 1 do
    registers[f] = (a[f])
end
end

end
::p94::
do
do
(registers)[6] = registers[4]
end

end
::p95::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p28
::p100::
do
do
(registers)[7] = registers[5]
end

end
::p101::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p65
::p103::
do
do
registers[8] = (registers[1]["flicker"])
end

end
::p104::
do
do
(registers)[8] = not registers[8]
end

end
::p105::
do
do
registers[1]["flicker"] = (registers[8])
end

end
::p106::
do
do
a = upvalues[0];
(registers)[8] = (a[2][a[1]]["packets"])
end

end
::p107::
do
do
registers[1]["last_flick_at"] = (registers[8])
end

end
goto p82
::p109::
tick(109)
do
do
(registers)[9] = registers[8] > 0
end

end
::p110::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p88 end
goto p124
::p112::
tick(112)
do
do
(registers)[9] = registers[9] * registers[10]
end

end
::p113::
do
do
(registers)[8] = registers[8] + registers[9]
end

end
goto p121
::p115::
do
do
(registers)[8] = registers[9]
end

end
::p116::
branch_taken=false
do
do
if registers[7] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p121 end
goto p109
::p121::
do
do
(registers)[9] = registers[8]
end

end
::p122::
do
do
registers[10] = (registers[1]["flicker"])
end

end
::p123::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (9)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p124::
do
do
registers[9] = (1)
end

end
goto p88
::p134::
do
do
(registers)[10] = upvalues[1]["random_int"]
end

end
::p135::
do
do
registers[11] = (0)
end

end
::p136::
do
do
(registers)[12] = registers[7]
end

end
::p137::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p112
::p139::
do
do
(registers)[8] = registers[3]
end

end
goto p39
end
end
