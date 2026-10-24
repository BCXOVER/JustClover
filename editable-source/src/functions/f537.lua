
-- Function f537; 52 recovered instruction blocks.
F.f537=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f537",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f537 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p133
::p2::
tick(2)
branch_taken=false
do
do
if registers[1] ~= "hit" then
    branch_taken=true
end
end

end
if branch_taken then goto p102 end
goto p138
::p5::
tick(5)
do
do
(registers)[5] = nil
end

end
goto p127
::p8::
tick(8)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p5
::p10::
tick(10)
do
do
registers[5] = (registers[3]["aimbot_logs_hit_color"])
end

end
goto p144
::p12::
tick(12)
do
do
a = (4)
z = 4
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
::p14::
tick(14)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p120 end
goto p113
::p16::
tick(16)
do
do
(registers)[5] = nil
end

end
goto p44
::p18::
tick(18)
do
do
registers[4] = (220)
end

end
::p19::
do
do
registers[5] = (220)
end

end
::p20::
do
do
registers[6] = (220)
end

end
::p21::
do
do
(registers)[7] = registers[2]
end

end
::p22::
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
a = (4)
return unpack_range(a + 5 - 2, registers, a)
end

end
::p23::
tick(23)
do
do
(registers)[3] = upvalues[0]["visuals"]
end

end
::p24::
do
do
registers[3] = (registers[3]["stubs"])
end

end
goto p2
::p26::
tick(26)
do
do
registers[5] = (registers[3]["aimbot_logs_miss_color"])
end

end
goto p8
::p28::
tick(28)
do
do
(registers)[7] = registers[2]
end

end
::p29::
do
do
a = (4)
z = 4
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
::p31::
tick(31)
do
do
registers[9] = (88)
end

end
::p32::
do
do
a = (6)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p33::
do
do
(registers)[7] = registers[2]
end

end
goto p12
::p44::
tick(44)
do
do
registers[6] = new_frame(3)
end

end
::p45::
do
do
registers[7] = (201)
end

end
::p46::
do
do
registers[8] = (178)
end

end
goto p31
::p74::
tick(74)
branch_taken=false
do
do
if registers[1] ~= "miss" then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p109
::p76::
tick(76)
do
do
registers[5] = (registers[3]["aimbot_logs_got_color"])
end

end
goto p14
::p102::
branch_taken=false
do
do
if registers[1] ~= "got" then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
::p105::
do
do
(registers)[4] = upvalues[1]["get_picker_color"]
end

end
::p106::
do
do
registers[5] = (registers[3] ~= registers[0])
end

end
::p107::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p76
::p109::
do
do
(registers)[4] = upvalues[1]["get_picker_color"]
end

end
::p110::
do
do
registers[5] = (registers[3] ~= registers[0])
end

end
::p111::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p26
::p113::
tick(113)
do
do
(registers)[5] = nil
end

end
::p120::
do
do
registers[6] = new_frame(3)
end

end
::p121::
do
do
registers[7] = (201)
end

end
::p122::
do
do
registers[8] = (178)
end

end
::p123::
do
do
registers[9] = (88)
end

end
::p124::
do
do
a = (6)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p125::
do
do
(registers)[7] = registers[2]
end

end
goto p142
::p127::
do
do
registers[6] = new_frame(3)
end

end
::p128::
do
do
registers[7] = (228)
end

end
::p129::
do
do
registers[8] = (83)
end

end
::p130::
do
do
registers[9] = (78)
end

end
::p131::
do
do
a = (6)
z = 0
q = registers[a]
for f = 1, 3, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p28
::p133::
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
::p134::
do
do
(registers)[3] = upvalues[0]["visuals"]
end

end
::p135::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p23
::p138::
do
do
(registers)[4] = upvalues[1]["get_picker_color"]
end

end
::p139::
do
do
registers[5] = (registers[3] ~= registers[0])
end

end
::p140::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p10
::p142::
do
do
a = (4)
z = 4
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
::p144::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p16
end
end
