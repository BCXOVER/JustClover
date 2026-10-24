
-- Function f223; 66 recovered instruction blocks.
F.f223=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f223",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f223 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p41
::p5::
tick(5)
do
do
registers[3] = (upvalues[0])
end

end
::p6::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_delay"]
end

end
::p7::
do
do
(registers)[5] = registers[1]
end

end
goto p97
::p21::
tick(21)
do
do
registers[3] = (upvalues[0])
end

end
::p22::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set_aa"]
end

end
::p23::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p24::
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
::p41::
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
::p42::
do
do
registers[2] = (upvalues[0])
end

end
::p43::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["unset_aa"]
end

end
goto p88
::p53::
tick(53)
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p54::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p21
::p62::
tick(62)
do
do
(registers)[5] = registers[1]
end

end
::p63::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p64::
do
do
registers[3] = (upvalues[0])
end

end
goto p101
::p74::
tick(74)
do
do
registers[3] = (upvalues[0])
end

end
::p75::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_pitch"]
end

end
::p76::
do
do
(registers)[5] = registers[2]
end

end
::p77::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p78::
do
do
registers[3] = (upvalues[0])
end

end
::p79::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_defensive_yaw_double_delay"]
end

end
goto p161
::p88::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p89::
do
do
registers[2] = (upvalues[1])
end

end
::p90::
do
do
a = upvalues[2];
(registers)[3] = (a[2][a[1]]["current"])
end

end
goto p130
::p92::
tick(92)
do
do
registers[3] = (upvalues[0])
end

end
::p93::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_body_yaw"]
end

end
::p94::
do
do
(registers)[5] = registers[1]
end

end
::p95::
do
do
(registers)[6] = registers[2]
end

end
goto p138
::p97::
do
do
(registers)[6] = registers[2]
end

end
::p98::
do
do
a = (3)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p92
::p101::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_disable_fakelag"]
end

end
::p102::
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p103::
do
do
registers[3] = (upvalues[0])
end

end
goto p142
::p105::
tick(105)
do
do
upvalues[0]["updated"] = true
end

end
goto p134
::p125::
tick(125)
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_safehead"]
end

end
::p126::
do
do
a = upvalues[2];
(registers)[5] = (a[2][a[1]]["current"])
end

end
::p127::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p128::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p134
::p130::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p131::
do
do
registers[3] = (upvalues[0])
end

end
::p132::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_hotkeys"]
end

end
goto p62
::p134::
do
do
registers[3] = (upvalues[0])
end

end
::p135::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_defensive"]
end

end
::p136::
do
do
(registers)[5] = registers[1]
end

end
goto p53
::p138::
do
do
a = (3)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p139::
do
do
registers[3] = (upvalues[0])
end

end
::p140::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_yaw"]
end

end
goto p149
::p142::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["break_lc"]
end

end
::p143::
do
do
(registers)[5] = registers[1]
end

end
::p144::
do
do
(registers)[6] = registers[2]
end

end
::p145::
do
do
a = (3)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p146::
do
do
upvalues[0]["updated"] = false
end

end
::p147::
do
do
registers[3] = (upvalues[0])
end

end
goto p125
::p149::
do
do
(registers)[5] = registers[2]
end

end
::p150::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p151::
do
do
registers[3] = (upvalues[0])
end

end
::p152::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_yaw_jitter"]
end

end
::p153::
do
do
(registers)[5] = registers[2]
end

end
::p155::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p156::
do
do
registers[3] = (upvalues[0])
end

end
::p157::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["update_hidden"]
end

end
::p158::
do
do
(registers)[5] = registers[2]
end

end
::p159::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p105
::p161::
do
do
(registers)[5] = registers[1]
end

end
::p162::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p163::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p5
end
end
