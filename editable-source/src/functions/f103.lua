
-- Function f103; 69 recovered instruction blocks.
F.f103=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f103",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f103 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p171
::p2::
tick(2)
do
do
registers[3] = (registers[1]["enabled"])
end

end
::p3::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p4::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p85
::p6::
tick(6)
do
do
(registers)[4] = not registers[3]
end

end
::p7::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p52
::p9::
tick(9)
do
do
registers[2] = (registers[1]["enabled"])
end

end
::p10::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p2
::p13::
tick(13)
do
do
registers[2] = (upvalues[2])
end

end
::p14::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p15::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p157
::p31::
tick(31)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p138
::p33::
tick(33)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p191 end
goto p76
::p44::
tick(44)
do
do
(registers)[6] = upvalues[1]["apply_smooth_animfix"]
end

end
::p45::
do
do
(registers)[7] = registers[1]
end

end
::p46::
do
do
(registers)[8] = registers[5]
end

end
goto p136
::p48::
tick(48)
do
do
registers[5] = (upvalues[5])
end

end
::p49::
do
do
(registers)[6] = registers[2]
end

end
::p50::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p33
::p52::
do
do
registers[4] = (upvalues[4])
end

end
::p53::
do
do
(registers)[5] = registers[1]
end

end
::p54::
do
do
registers[6] = ("Lean")
end

end
::p55::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p175
::p57::
tick(57)
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
::p76::
do
do
(registers)[5] = nil
end

end
goto p191
::p80::
tick(80)
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
goto p44
::p83::
tick(83)
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p128
::p85::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p13 end
goto p147
::p87::
tick(87)
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p95::
tick(95)
do
do
(registers)[5] = registers[4]
end

end
::p96::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p48
::p107::
do
do
a = (6)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_overlay"]
end

end
::p108::
do
do
registers[8] = (6)
end

end
::p109::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p110::
do
do
(registers)[7] = upvalues[1]["apply_air_legs"]
end

end
::p111::
do
do
(registers)[8] = registers[1]
end

end
::p112::
do
do
(registers)[9] = registers[2]
end

end
::p113::
do
do
(registers)[10] = registers[6]
end

end
::p114::
do
do
a = (7)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p83
::p117::
do
do
registers[3] = (upvalues[3])
end

end
::p118::
do
do
(registers)[4] = registers[2]
end

end
::p119::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p6
::p128::
tick(128)
do
do
a = (6)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get_anim_overlay"]
end

end
::p129::
do
do
registers[8] = (12)
end

end
::p130::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p131::
do
do
(registers)[7] = upvalues[1]["apply_move_lean"]
end

end
::p132::
do
do
(registers)[8] = registers[1]
end

end
goto p194
::p136::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p31
::p138::
do
do
(registers)[6] = upvalues[1]["apply_ground_legs"]
end

end
::p139::
do
do
(registers)[7] = registers[1]
end

end
::p140::
do
do
(registers)[8] = registers[2]
end

end
::p141::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p83
::p143::
tick(143)
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
::p147::
tick(147)
do
do
(registers)[2] = upvalues[1]["reset"]
end

end
::p148::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
::p149::
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
::p157::
do
do
(registers)[3] = upvalues[1]["reset"]
end

end
::p158::
do
do
top = (3)
registers[top]()
top = top - 1
end

end
::p159::
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
::p171::
do
do
registers[1] = (upvalues[0])
end

end
::p172::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p173::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p147 end
goto p9
::p175::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p95 end
goto p187
::p177::
tick(177)
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p57
::p187::
do
do
registers[4] = (upvalues[4])
end

end
::p188::
do
do
(registers)[5] = registers[1]
end

end
::p189::
do
do
registers[6] = ("Smooth")
end

end
goto p87
::p191::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p80 end
goto p177
::p194::
do
do
(registers)[9] = registers[6]
end

end
::p195::
do
do
a = 7;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p143
end
end
