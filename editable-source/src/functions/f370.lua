
-- Function f370; 65 recovered instruction blocks.
F.f370=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f370",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f370 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p23
::p2::
tick(2)
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
::p4::
tick(4)
do
do
registers[5] = (registers[1]["forwardmove"])
end

end
::p5::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p167
::p9::
tick(9)
do
do
registers[5] = (registers[1]["sidemove"])
end

end
::p10::
branch_taken=false
do
do
if not (not (registers[5] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p80
::p12::
tick(12)
do
do
registers[5] = (registers[1]["sidemove"])
end

end
::p13::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p125
::p15::
tick(15)
do
do
registers[5] = (registers[1]["sidemove"])
end

end
::p16::
branch_taken=false
do
do
if not (0 < registers[5]) then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p74
::p18::
tick(18)
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p19::
do
do
registers[5] = registers[5] + 90
end

end
::p20::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p129
::p23::
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
::p24::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p25::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p157
::p36::
tick(36)
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p37::
do
do
registers[5] = registers[5] + 150
end

end
::p38::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p12
::p40::
tick(40)
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p41::
do
do
registers[5] = registers[5] + 90
end

end
::p42::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p15
::p53::
tick(53)
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
::p55::
tick(55)
do
do
registers[6] = (registers[1]["yaw"])
end

end
::p56::
do
do
registers[6] = 0.5 + registers[6]
end

end
::p57::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p58::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p4
::p74::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p75::
do
do
registers[5] = registers[5] + 150
end

end
::p76::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p9
::p80::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p81::
do
do
registers[5] = registers[5] + 30
end

end
::p82::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p132
::p93::
tick(93)
do
do
registers[5] = (registers[1]["sidemove"])
end

end
::p94::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p129 end
goto p18
::p96::
tick(96)
do
do
registers[1]["in_forward"] = 1
end

end
::p97::
do
do
registers[5] = (registers[1]["sidemove"])
end

end
::p98::
branch_taken=false
do
do
if registers[5] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p40
::p100::
tick(100)
do
do
registers[1]["pitch"] = 89
end

end
::p101::
do
do
registers[1]["in_moveleft"] = 1
end

end
::p102::
do
do
registers[1]["in_moveright"] = 0
end

end
::p103::
do
do
registers[1]["in_back"] = 0
end

end
goto p96
::p106::
tick(106)
do
do
(registers)[3] = upvalues[0][47]
end

end
::p107::
do
do
(registers)[4] = registers[2]
end

end
::p108::
do
do
registers[5] = ("m_MoveType")
end

end
::p109::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p110::
branch_taken=false
do
do
if registers[3] ~= 9 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p2
::p113::
do
do
(registers)[4] = upvalues[0][93]
end

end
::p114::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p115::
do
do
(registers)[5] = upvalues[0][154]
end

end
goto p55
::p125::
do
do
registers[5] = (registers[1]["yaw"])
end

end
::p126::
do
do
registers[5] = registers[5] + 30
end

end
::p127::
do
do
registers[1]["yaw"] = (registers[5])
end

end
goto p132
::p129::
do
do
registers[5] = (registers[1]["sidemove"])
end

end
::p130::
branch_taken=false
do
do
if not (not (registers[5] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p36
::p132::
tick(132)
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
::p133::
tick(133)
do
do
registers[5] = (registers[1]["forwardmove"])
end

end
::p134::
branch_taken=false
do
do
if not (not (registers[5] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p182
::p136::
tick(136)
do
do
registers[1]["pitch"] = 89
end

end
::p137::
do
do
registers[1]["in_moveleft"] = 0
end

end
::p138::
do
do
registers[1]["in_moveright"] = 1
end

end
::p139::
do
do
registers[1]["in_back"] = 1
end

end
::p140::
do
do
registers[1]["in_forward"] = 0
end

end
goto p93
::p157::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p106 end
goto p53
::p167::
branch_taken=false
do
do
if not (not (registers[4] < 45)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p136
::p182::
branch_taken=false
do
do
if not (not (registers[4] < 45)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p100
end
end
