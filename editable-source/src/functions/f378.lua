
-- Function f378; 55 recovered instruction blocks.
F.f378=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f378",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f378 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p129
::p4::
tick(4)
do
do
(registers)[4] = registers[3]
end

end
::p5::
do
do
a = (upvalues[2]);
(registers)[5] = a[2][a[1]]
end

end
::p6::
branch_taken=false
do
do
if registers[5] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p153 end
goto p150
::p8::
tick(8)
do
do
a = upvalues[3]
a[2][a[1]] = registers[4]
end

end
::p9::
do
do
(registers)[5] = upvalues[4]["set_callback"]
end

end
::p10::
do
do
registers[6] = ("setup_command")
end

end
goto p135
::p33::
tick(33)
do
do
a = upvalues[6]
a[2][a[1]] = registers[3]
end

end
::p34::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p121 end
goto p96
::p37::
tick(37)
do
do
(registers)[7] = upvalues[5]["pre_render"]
end

end
::p38::
do
do
(registers)[8] = registers[2]
end

end
::p39::
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p40::
do
do
(registers)[5] = upvalues[4]["set_callback"]
end

end
::p41::
do
do
registers[6] = ("setup_command")
end

end
goto p109
::p84::
tick(84)
do
do
(registers)[5] = upvalues[5]["reset"]
end

end
::p85::
do
do
top = (5)
registers[top]()
top = top - 1
end

end
::p86::
tick(86)
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
::p87::
tick(87)
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p4
::p90::
tick(90)
do
do
registers[2] = (registers[1]["enabled"])
end

end
::p91::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p92::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p93::
do
do
registers[2] = (registers[2] == true)
end

end
goto p118
::p96::
do
do
registers[5] = {
}
end

end
::p97::
do
do
upvalues[7]["server_anim_states"] = (registers[5])
end

end
goto p121
::p105::
tick(105)
do
do
registers[2] = (registers[1]["enabled"])
end

end
::p106::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
goto p126
::p109::
do
do
(registers)[7] = upvalues[5]["setup_command"]
end

end
::p110::
do
do
(registers)[8] = registers[4]
end

end
::p111::
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p147
::p114::
tick(114)
do
do
registers[3] = (upvalues[1])
end

end
::p115::
do
do
(registers)[4] = registers[1]
end

end
::p116::
do
do
registers[5] = ("Smooth")
end

end
goto p87
::p118::
tick(118)
do
do
(registers)[3] = registers[2]
end

end
::p119::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p114
::p121::
tick(121)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p149 end
goto p141
::p126::
tick(126)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p90
::p129::
do
do
registers[1] = (upvalues[0])
end

end
::p130::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p131::
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p132::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p105
::p135::
do
do
(registers)[7] = upvalues[5]["setup_command"]
end

end
::p136::
do
do
(registers)[8] = registers[4]
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
goto p144
::p141::
do
do
(registers)[5] = upvalues[5]["reset"]
end

end
::p142::
do
do
top = (5)
registers[top]()
top = top - 1
end

end
goto p149
::p144::
tick(144)
do
do
a = (upvalues[6]);
(registers)[5] = a[2][a[1]]
end

end
::p145::
branch_taken=false
do
do
if registers[5] == registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p121 end
goto p33
::p147::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p86 end
goto p84
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
::p150::
do
do
a = (upvalues[3]);
(registers)[5] = a[2][a[1]]
end

end
::p151::
branch_taken=false
do
do
if registers[5] == registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p144 end
goto p8
::p153::
do
do
a = upvalues[2]
a[2][a[1]] = registers[2]
end

end
::p154::
do
do
a = upvalues[6]
a[2][a[1]] = registers[3]
end

end
::p155::
do
do
a = upvalues[3]
a[2][a[1]] = registers[4]
end

end
::p156::
do
do
(registers)[5] = upvalues[4]["set_callback"]
end

end
::p157::
do
do
registers[6] = ("pre_render")
end

end
goto p37
end
end
