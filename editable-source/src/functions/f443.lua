
-- Function f443; 52 recovered instruction blocks.
F.f443=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f443",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f443 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p78
::p2::
tick(2)
do
do
(registers)[3] = upvalues[0]["config"]
end

end
::p3::
do
do
registers[3] = (registers[3]["list"])
end

end
::p4::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
goto p145
::p14::
tick(14)
do
do
registers[3] = (registers[1]["configs_db"])
end

end
::p15::
do
do
registers[3] = (registers[3]["menu_list"])
end

end
::p16::
do
do
registers[3] = (#registers[3])
end

end
::p17::
do
do
(registers)[3] = (registers[3] - 1)
end

end
::p18::
branch_taken=false
do
do
if not (registers[3] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p119
::p33::
tick(33)
branch_taken=false
do
do
if registers[3] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p2
::p35::
tick(35)
do
do
(registers)[2] = upvalues[0]["config"]
end

end
::p36::
do
do
registers[2] = (registers[2]["list"])
end

end
::p37::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["update"]
end

end
::p38::
do
do
registers[4] = (registers[1]["configs_db"])
end

end
goto p91
::p46::
tick(46)
do
do
(registers)[2] = upvalues[0]["config"]
end

end
::p47::
do
do
registers[2] = (registers[2]["list"])
end

end
::p48::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["update"]
end

end
::p49::
do
do
registers[4] = new_frame(1)
end

end
::p50::
do
do
registers[5] = ("No configs")
end

end
::p51::
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 1, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p52::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p53::
do
do
(registers)[2] = upvalues[0]["config"]
end

end
::p54::
do
do
registers[2] = (registers[2]["list"])
end

end
::p59::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p60::
do
do
registers[4] = (0)
end

end
::p61::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
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
::p76::
tick(76)
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
::p78::
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
::p79::
do
do
registers[2] = (registers[1]["configs_db"])
end

end
::p80::
do
do
registers[2] = (registers[2]["menu_list"])
end

end
::p81::
do
do
registers[2] = (#registers[2])
end

end
::p82::
branch_taken=false
do
do
if registers[2] ~= 0 then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p46
::p91::
do
do
registers[4] = (registers[4]["menu_list"])
end

end
::p92::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p93::
do
do
(registers)[2] = upvalues[0]["config"]
end

end
goto p130
::p119::
do
do
(registers)[3] = upvalues[0]["config"]
end

end
::p120::
do
do
registers[3] = (registers[3]["list"])
end

end
::p121::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p122::
do
do
registers[5] = (registers[1]["configs_db"])
end

end
::p123::
do
do
registers[5] = (registers[5]["menu_list"])
end

end
::p124::
do
do
registers[5] = (#registers[5])
end

end
::p125::
do
do
(registers)[5] = (registers[5] - 1)
end

end
goto p166
::p130::
do
do
registers[2] = (registers[2]["list"])
end

end
::p131::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p132::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p168
::p145::
do
do
registers[5] = (0)
end

end
::p146::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p147::
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
::p166::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p76
::p168::
do
do
(registers)[3] = environment["type"]
end

end
::p169::
do
do
(registers)[4] = registers[2]
end

end
::p170::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p33
end
end
