
-- Function f267; 70 recovered instruction blocks.
F.f267=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f267",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f267 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p30
::p2::
tick(2)
do
do
(registers)[2] = upvalues[1]["misc"]
end

end
::p3::
do
do
registers[2] = (registers[2]["usercmd"])
end

end
::p4::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p5::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p6::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p175 end
goto p121
::p21::
tick(21)
do
do
(registers)[1] = upvalues[1]["antiaim"]
end

end
::p22::
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p23::
do
do
registers[1] = (registers[1]["on"])
end

end
goto p26
::p25::
tick(25)
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
::p26::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p27::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p28::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p124
::p30::
tick(30)
do
do
(registers)[1] = upvalues[0]["is_enabled"]
end

end
::p31::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p32::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p182
::p35::
do
do
(registers)[1] = upvalues[2][32]
end

end
::p36::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p37::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p184
::p39::
tick(39)
do
do
(registers)[12] = registers[5]
end

end
::p40::
do
do
(registers)[13] = registers[6]
end

end
::p41::
do
do
registers[14] = (255)
end

end
::p42::
do
do
registers[15] = (9)
end

end
goto p73
::p56::
tick(56)
do
do
registers[4] = 255 - registers[4]
end

end
::p57::
do
do
registers[5] = registers[3] / 1.62
end

end
::p58::
do
do
registers[5] = (registers[5] * 3.42105263158)
end

end
::p59::
do
do
registers[6] = registers[3] / 1.62
end

end
::p60::
do
do
registers[6] = (registers[6] * 0.22807017543)
end

end
::p61::
do
do
(registers)[7] = upvalues[2][138]
end

end
::p62::
do
do
(registers)[8] = registers[4]
end

end
::p63::
do
do
(registers)[9] = registers[5]
end

end
::p64::
do
do
(registers)[10] = registers[6]
end

end
::p65::
do
do
registers[11] = (255)
end

end
::p66::
do
do
registers[12] = ("PEEK")
end

end
goto p161
::p68::
tick(68)
do
do
(registers)[8] = upvalues[2][127]
end

end
::p69::
do
do
registers[9] = (90)
end

end
::p70::
do
do
registers[10] = registers[7] + 19
end

end
::p71::
do
do
registers[11] = (0)
end

end
goto p176
::p73::
do
do
registers[16] = (0)
end

end
::p74::
do
do
registers[17] = registers[3] / 100
end

end
::p75::
do
do
registers[18] = (4)
end

end
::p76::
do
do
a = (8)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
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
::p102::
tick(102)
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
::p121::
branch_taken=false
do
do
if registers[2] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p175
::p124::
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
::p136::
do
do
(registers)[3] = upvalues[0]["choked_commands"]
end

end
::p137::
do
do
registers[3] = (registers[3] * 100)
end

end
::p138::
do
do
registers[3] = (registers[3] / registers[2])
end

end
::p139::
do
do
registers[4] = registers[3] / 1.62
end

end
::p140::
do
do
registers[4] = (registers[4] * 2.29824561404)
end

end
goto p56
::p142::
tick(142)
do
do
registers[17] = (1)
end

end
::p143::
do
do
registers[18] = (5)
end

end
::p144::
do
do
a = (8)
top = a + 11 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p145::
do
do
(registers)[8] = upvalues[2][127]
end

end
::p146::
do
do
registers[9] = (90)
end

end
::p147::
do
do
registers[10] = registers[7] + 19
end

end
::p148::
do
do
(registers)[11] = registers[4]
end

end
goto p39
::p161::
do
do
a = 7
top = a + 6 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p162::
branch_taken=false
do
do
if registers[7] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p102
::p175::
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
::p176::
do
do
registers[12] = (0)
end

end
::p177::
do
do
registers[13] = (0)
end

end
::p178::
do
do
registers[14] = (150)
end

end
::p179::
do
do
registers[15] = (10)
end

end
::p180::
do
do
registers[16] = (0)
end

end
goto p142
::p182::
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
::p184::
do
do
(registers)[2] = upvalues[2][50]
end

end
::p185::
do
do
(registers)[3] = registers[1]
end

end
::p186::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p187::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p25
end
end
