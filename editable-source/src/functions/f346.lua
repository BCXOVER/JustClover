
-- Function f346; 85 recovered instruction blocks.
F.f346=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f346",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f346 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p44
::p4::
tick(4)
do
do
registers[1] = (registers[1][2])
end

end
::p5::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p6::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p7::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p8::
do
do
registers[1] = (registers[1]["angles"])
end

end
goto p82
::p26::
tick(26)
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p27::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p28::
do
do
registers[1] = (registers[1]["freestanding"])
end

end
::p29::
do
do
registers[1] = (registers[1]["hotkey"])
end

end
::p30::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p31::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p32::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p33::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p34::
do
do
registers[1] = (registers[1]["edge_yaw"])
end

end
::p35::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p36::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p37::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p38::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p40::
do
do
registers[1] = (registers[1]["roll"])
end

end
::p41::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p42::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p43::
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
::p44::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p45::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p46::
do
do
registers[1] = (registers[1]["enabled"])
end

end
::p47::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p48::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p49::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
goto p100
::p52::
tick(52)
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p53::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p54::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p55::
do
do
registers[1] = (registers[1]["yaw_base"])
end

end
::p56::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p169
::p59::
tick(59)
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p60::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p61::
do
do
registers[1] = (registers[1]["body_yaw"])
end

end
goto p107
::p69::
tick(69)
do
do
registers[1] = (registers[1][2])
end

end
::p70::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p71::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p72::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p73::
do
do
registers[1] = (registers[1]["angles"])
end

end
goto p159
::p77::
tick(77)
do
do
registers[1] = (registers[1]["body_yaw"])
end

end
::p78::
do
do
registers[1] = (registers[1][2])
end

end
::p79::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p80::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p164
::p82::
do
do
registers[1] = (registers[1]["yaw_jitter"])
end

end
::p83::
do
do
registers[1] = (registers[1][1])
end

end
::p84::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p85::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p86::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p87::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p88::
do
do
registers[1] = (registers[1]["yaw_jitter"])
end

end
::p89::
do
do
registers[1] = (registers[1][2])
end

end
::p90::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p91::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p59
::p100::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p101::
do
do
registers[1] = (registers[1]["pitch"])
end

end
::p102::
do
do
registers[1] = (registers[1][1])
end

end
::p103::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p104::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p148
::p107::
do
do
registers[1] = (registers[1][1])
end

end
::p108::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p109::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p110::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p111::
do
do
registers[1] = (registers[1]["angles"])
end

end
goto p77
::p148::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p149::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p150::
do
do
registers[1] = (registers[1]["pitch"])
end

end
goto p69
::p152::
tick(152)
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p153::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p154::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p155::
do
do
registers[1] = (registers[1]["freestanding"])
end

end
::p156::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p157::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p26
::p159::
do
do
registers[1] = (registers[1]["yaw"])
end

end
::p160::
do
do
registers[1] = (registers[1][1])
end

end
::p161::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p52
::p164::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p165::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p166::
do
do
registers[1] = (registers[1]["freestanding_body_yaw"])
end

end
::p167::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
goto p152
::p169::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p170::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p171::
do
do
registers[1] = (registers[1]["angles"])
end

end
::p172::
do
do
registers[1] = (registers[1]["yaw"])
end

end
goto p4
end
end
