
-- Function f396; 48 recovered instruction blocks.
F.f396=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f396",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f396 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p114
::p2::
tick(2)
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p3::
do
do
(registers)[5] = upvalues[1]["icon_paths"]
end

end
::p4::
do
do
registers[6] = (registers[1]["kind"])
end

end
::p5::
do
do
(registers)[5] = registers[5][registers[6]]
end

end
::p6::
do
do
registers[5] = (registers[5] ~= registers[0])
end

end
::p7::
do
do
(registers)[6] = registers[5]
end

end
::p8::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p135
::p11::
tick(11)
do
do
(registers)[8] = upvalues[0][151]
end

end
::p12::
do
do
(registers)[9] = upvalues[1]["px"]
end

end
::p13::
do
do
registers[10] = (34)
end

end
goto p107
::p49::
tick(49)
do
do
(registers)[6] = upvalues[1]["px"]
end

end
::p50::
do
do
registers[7] = (12)
end

end
::p51::
do
do
(registers)[8] = registers[3]
end

end
::p52::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p80
::p59::
tick(59)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p102
::p62::
tick(62)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p49
::p65::
tick(65)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p124
::p67::
tick(67)
do
do
registers[4] = (0)
end

end
goto p11
::p71::
tick(71)
do
do
(registers)[6] = upvalues[1]["px"]
end

end
::p72::
do
do
registers[7] = (42)
end

end
::p73::
do
do
(registers)[8] = registers[3]
end

end
::p74::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p59
::p76::
tick(76)
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p77::
do
do
(registers)[8] = environment["type"]
end

end
::p78::
do
do
(registers)[9] = registers[4]
end

end
goto p121
::p80::
do
do
(registers)[7] = upvalues[1]["px"]
end

end
::p81::
do
do
registers[8] = (9)
end

end
::p82::
do
do
(registers)[9] = registers[3]
end

end
goto p76
::p102::
do
do
(registers)[6] = upvalues[1]["px"]
end

end
::p103::
do
do
registers[7] = (40)
end

end
::p104::
do
do
(registers)[8] = registers[3]
end

end
::p105::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p62
::p107::
do
do
(registers)[11] = registers[3]
end

end
::p108::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p109::
do
do
(registers)[10] = registers[6] + registers[4]
end

end
::p110::
do
do
(registers)[10] = registers[10] + registers[7]
end

end
::p111::
do
do
a = (8)
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
::p114::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p115::
do
do
(registers)[4] = upvalues[0][136]
end

end
::p116::
do
do
(registers)[5] = registers[2]
end

end
::p117::
do
do
registers[6] = (registers[1]["text"])
end

end
goto p65
::p121::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p122::
branch_taken=false
do
do
if registers[8] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p67
::p124::
do
do
registers[6] = ("")
end

end
goto p2
::p135::
do
do
(registers)[6] = upvalues[1]["is_bomb_indicator_kind"]
end

end
::p136::
do
do
registers[7] = (registers[1]["kind"])
end

end
::p137::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p138::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p71
end
end
