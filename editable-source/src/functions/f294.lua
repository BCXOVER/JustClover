
-- Function f294; 55 recovered instruction blocks.
F.f294=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f294",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f294 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p82
::p8::
tick(8)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 1
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p143 end
::p9::
do
do
(registers)[26] = (operand_i)
end

end
::p10::
do
do
registers[25] = (operand_g)
end

end
::p11::
do
do
registers[27] = operand_k
end

end
::p12::
do
do
registers[25][50] = 2
end

end
::p13::
do
do
registers[26][50] = 1
end

end
::p14::
do
do
registers[27][100] = 70
end

end
::p15::
do
do
for f = 20, 27, 1 do
    (registers)[f] = nil
end
end

end
goto p71
::p17::
tick(17)
do
do
upvalues[1]["applied_body"] = (registers[1])
end

end
::p18::
do
do
registers[1] = {
}
end

end
::p19::
do
do
upvalues[1]["correction_until"] = (registers[1])
end

end
::p20::
do
do
registers[1] = {
}
end

end
::p21::
do
do
registers[2] = {
}
end

end
::p22::
do
do
registers[1]["cur"] = (registers[2])
end

end
goto p145
::p46::
tick(46)
do
do
(registers)[5] = upvalues[0][141]
end

end
::p47::
do
do
(registers)[6] = registers[4]
end

end
::p48::
do
do
registers[7] = ("Force body yaw value")
end

end
goto p136
::p50::
tick(50)
do
do
registers[1]["miss_until"] = (registers[2])
end

end
::p51::
do
do
registers[2] = {
}
end

end
::p52::
do
do
registers[1]["misses"] = (registers[2])
end

end
::p53::
do
do
upvalues[1]["wraith"] = (registers[1])
end

end
::p62::
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
::p63::
tick(63)
do
do
(registers)[5] = upvalues[0][141]
end

end
::p64::
do
do
(registers)[6] = registers[4]
end

end
::p65::
do
do
registers[7] = ("Force body yaw")
end

end
::p66::
do
do
registers[8] = (false)
end

end
::p67::
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p46
::p71::
tick(71)
do
do
registers[1]["last_value"] = (registers[2])
end

end
::p72::
do
do
registers[2] = {
}
end

end
::p73::
do
do
registers[1]["miss_side"] = (registers[2])
end

end
::p74::
do
do
registers[2] = {
}
end

end
goto p50
::p82::
do
do
registers[1] = (1)
end

end
::p83::
do
do
registers[2] = (64)
end

end
::p84::
do
do
registers[3] = (1)
end

end
goto p8
::p86::
tick(86)
do
do
registers[2] = {
}
end

end
::p87::
do
do
registers[1]["flags"] = (registers[2])
end

end
::p88::
do
do
registers[2] = {
}
end

end
goto p71
::p98::
tick(98)
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p143
::p102::
tick(102)
do
do
registers[1]["pre_prev"] = (registers[2])
end

end
::p103::
do
do
registers[2] = {
}
end

end
::p104::
do
do
registers[1]["pre_pre_prev"] = (registers[2])
end

end
goto p86
::p128::
tick(128)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p129::
do
do
registers[1] = {
}
end

end
::p130::
do
do
upvalues[1]["applied"] = (registers[1])
end

end
::p131::
do
do
registers[1] = {
}
end

end
goto p17
::p136::
do
do
registers[8] = (0)
end

end
::p137::
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p138::
do
do
(registers)[5] = upvalues[0][141]
end

end
::p139::
do
do
(registers)[6] = registers[4]
end

end
::p140::
do
do
registers[7] = ("Override prefer body aim")
end

end
::p141::
do
do
registers[8] = ("-")
end

end
goto p98
::p143::
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
    (registers)[1 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p128
::p145::
do
do
registers[2] = {
}
end

end
::p146::
do
do
registers[1]["prev"] = (registers[2])
end

end
::p147::
do
do
registers[2] = {
}
end

end
goto p102
end
end
