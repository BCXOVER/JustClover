
-- Function f160; 51 recovered instruction blocks.
F.f160=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f160",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f160 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p105
::p8::
tick(8)
do
do
(registers)[5] = upvalues[0][36]
end

end
::p9::
do
do
(registers)[6] = registers[2]
end

end
::p10::
do
do
registers[7] = ("m_flPoseParameter")
end

end
::p11::
do
do
(registers)[8] = upvalues[0][150]
end

end
::p12::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
goto p150
::p32::
tick(32)
do
do
registers[9] = (7)
end

end
::p33::
do
do
a = (5)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p34::
do
do
(registers)[5] = upvalues[0][36]
end

end
goto p69
::p42::
tick(42)
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
::p61::
tick(61)
do
do
registers[3]["weight"] = 1
end

end
::p62::
do
do
(registers)[5] = upvalues[0][26]
end

end
::p63::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p64::
do
do
registers[5] = (registers[5] * 0.55)
end

end
::p65::
do
do
registers[5] = registers[5] % 1
end

end
goto p94
::p69::
do
do
(registers)[6] = registers[2]
end

end
::p70::
do
do
registers[7] = ("m_flPoseParameter")
end

end
::p71::
do
do
(registers)[8] = upvalues[0][150]
end

end
::p72::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
::p73::
do
do
registers[9] = (6)
end

end
::p74::
do
do
a = (5)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p42
::p76::
tick(76)
branch_taken=false
do
do
if registers[4] ~= "Off" then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p102
::p80::
tick(80)
do
do
registers[7] = ("m_flPoseParameter")
end

end
::p81::
do
do
(registers)[8] = upvalues[0][150]
end

end
::p82::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
goto p32
::p94::
do
do
registers[3]["cycle"] = (registers[5])
end

end
::p95::
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
::p105::
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
::p106::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p171 end
goto p134
::p117::
tick(117)
do
do
registers[5] = (registers[1]["air_legs_weight"])
end

end
::p118::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p119::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p175
::p124::
tick(124)
branch_taken=false
do
do
if registers[4] ~= "Moonwalk" then
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p61
::p127::
tick(127)
do
do
registers[4] = (registers[1]["air_legs"])
end

end
::p128::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p129::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p76
::p134::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p171
::p137::
branch_taken=false
do
do
if registers[4] ~= "Kangaroo" then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p8
::p144::
branch_taken=false
do
do
if registers[4] ~= "Static" then
    branch_taken=true
end
end

end
if branch_taken then goto p124 end
goto p117
::p150::
do
do
registers[9] = (3)
end

end
::p151::
do
do
a = (5)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p152::
do
do
(registers)[5] = upvalues[0][36]
end

end
::p153::
do
do
(registers)[6] = registers[2]
end

end
goto p80
::p155::
tick(155)
do
do
a = (6)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p156::
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
::p175::
do
do
(registers)[6] = upvalues[0][36]
end

end
::p176::
do
do
(registers)[7] = registers[2]
end

end
::p177::
do
do
registers[8] = ("m_flPoseParameter")
end

end
::p178::
do
do
registers[9] = (registers[5] * 0.01)
end

end
::p179::
do
do
registers[10] = (6)
end

end
goto p155
end
end
