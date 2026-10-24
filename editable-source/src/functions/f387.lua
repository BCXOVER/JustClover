
-- Function f387; 55 recovered instruction blocks.
F.f387=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f387",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f387 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p117
::p3::
tick(3)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[3 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p126
::p5::
tick(5)
do
do
registers[3] = (1)
end

end
::p6::
do
do
registers[4] = (#registers[2])
end

end
::p7::
do
do
registers[5] = (1)
end

end
goto p45
::p18::
tick(18)
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
::p19::
tick(19)
do
do
registers[8] = (upvalues[2])
end

end
::p20::
do
do
(registers)[9] = registers[7]
end

end
::p21::
do
do
registers[10] = ("m_vecOrigin")
end

end
::p22::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p23::
do
do
(registers)[9] = upvalues[0]["predict_player_position"]
end

end
goto p63
::p33::
tick(33)
do
do
(registers)[10] = upvalues[0]["shifted_players"]
end

end
::p34::
do
do
(registers[10])[registers[7]] = registers[8]
end

end
::p35::
do
do
(registers)[10] = upvalues[1][36]
end

end
::p36::
do
do
(registers)[11] = registers[7]
end

end
::p37::
do
do
registers[12] = ("m_vecOrigin")
end

end
::p38::
do
do
registers[13] = (registers[9]["x"])
end

end
::p39::
do
do
registers[14] = (registers[9]["y"])
end

end
::p40::
do
do
registers[15] = (registers[9]["z"])
end

end
::p41::
do
do
a = (10)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p3
::p43::
tick(43)
branch_taken=false
do
do
if registers[8] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p61
::p45::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 3
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p3 end
::p46::
tick(46)
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
::p48::
tick(48)
do
do
(registers)[8] = upvalues[1][42]
end

end
::p49::
do
do
(registers)[9] = registers[7]
end

end
::p50::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p19
::p54::
do
do
(registers)[7] = registers[2][registers[6]]
end

end
::p55::
do
do
(registers)[8] = upvalues[1][50]
end

end
::p56::
do
do
(registers)[9] = registers[7]
end

end
::p57::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p58::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p48
::p61::
branch_taken=false
do
do
if registers[9] == registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p33
::p63::
do
do
(registers)[10] = registers[7]
end

end
::p64::
do
do
(registers)[11] = registers[8]
end

end
::p65::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p66::
branch_taken=false
do
do
if registers[9] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p43
::p68::
tick(68)
do
do
(registers)[1] = upvalues[1][32]
end

end
::p69::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p70::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p121
::p93::
tick(93)
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p94::
branch_taken=false
do
do
if not (registers[1] <= 0) then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p18
::p97::
tick(97)
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
::p99::
tick(99)
do
do
(registers)[2] = upvalues[1][49]
end

end
::p100::
do
do
registers[3] = (true)
end

end
::p101::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p102::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p5 end
goto p46
::p117::
do
do
(registers)[1] = upvalues[0]["restore_all"]
end

end
::p118::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p119::
do
do
(registers)[1] = upvalues[0]["get_ticks"]
end

end
goto p93
::p121::
do
do
(registers)[2] = upvalues[1][50]
end

end
::p122::
do
do
(registers)[3] = registers[1]
end

end
::p123::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p124::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p97
::p126::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p127::
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
end
end
