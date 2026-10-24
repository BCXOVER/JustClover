
-- Function f368; 34 recovered instruction blocks.
F.f368=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f368",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f368 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p116
::p23::
tick(23)
do
do
(registers)[4] = registers[2]
end

end
::p24::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p25::
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
::p37::
tick(37)
do
do
(registers)[3] = upvalues[1]["miss_counter"]
end

end
::p38::
do
do
registers[3][registers[2]] = 1
end

end
::p39::
do
do
(registers)[3] = upvalues[1]["correction_until"]
end

end
::p40::
do
do
(registers[3])[registers[2]] = registers[0]
end

end
::p41::
do
do
registers[3] = (upvalues[2])
end

end
goto p23
::p45::
tick(45)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p69
::p48::
tick(48)
do
do
(registers)[2] = environment["tonumber"]
end

end
::p49::
do
do
registers[3] = (registers[1]["target"])
end

end
::p50::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p45
::p61::
tick(61)
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
::p69::
do
do
registers[2] = (registers[1]["target"])
end

end
goto p112
::p72::
tick(72)
do
do
(registers[3])[registers[2]] = registers[0]
end

end
::p73::
do
do
registers[3] = (upvalues[2])
end

end
::p74::
do
do
(registers)[4] = registers[2]
end

end
::p75::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p76::
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
::p77::
tick(77)
do
do
(registers)[3] = upvalues[1]["wraith"]
end

end
::p78::
do
do
registers[3] = (registers[3]["misses"])
end

end
::p79::
do
do
(registers[3])[registers[2]] = registers[0]
end

end
::p80::
do
do
(registers)[3] = upvalues[1]["wraith"]
end

end
::p81::
do
do
registers[3] = (registers[3]["miss_side"])
end

end
::p82::
do
do
(registers[3])[registers[2]] = registers[0]
end

end
::p83::
do
do
(registers)[3] = upvalues[1]["wraith"]
end

end
::p84::
do
do
registers[3] = (registers[3]["miss_until"])
end

end
goto p72
::p112::
do
do
registers[3] = (upvalues[0])
end

end
::p113::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p114::
branch_taken=false
do
do
if registers[3] ~= "Auto" then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p77
::p116::
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
::p117::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p61 end
::p122::
do
do
registers[2] = (registers[1]["target"])
end

end
::p123::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p61
end
end
