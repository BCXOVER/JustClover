
-- Function f536; 38 recovered instruction blocks.
F.f536=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f536",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f536 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p23
::p5::
tick(5)
do
do
(registers)[1] = upvalues[1]["antiaim"]
end

end
::p6::
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p7::
do
do
registers[1] = (registers[1]["limit"])
end

end
goto p112
::p9::
tick(9)
do
do
(registers)[1] = upvalues[0]["saved_limit"]
end

end
::p10::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p101 end
goto p5
::p14::
tick(14)
do
do
(registers)[1] = upvalues[1]["antiaim"]
end

end
::p15::
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p16::
do
do
registers[1] = (registers[1]["limit"])
end

end
goto p54
::p18::
tick(18)
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p19::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p63
::p21::
tick(21)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p57
::p23::
do
do
(registers)[1] = upvalues[0]["saved_usercmd"]
end

end
::p24::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p106
::p40::
tick(40)
do
do
(registers)[1] = upvalues[1]["antiaim"]
end

end
::p41::
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p42::
do
do
registers[1] = (registers[1]["limit"])
end

end
goto p18
::p54::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_original"]
end

end
::p55::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p65
::p57::
do
do
(registers)[1] = upvalues[1]["misc"]
end

end
::p58::
do
do
registers[1] = (registers[1]["usercmd"])
end

end
::p59::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p60::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p104
::p63::
tick(63)
do
do
upvalues[0]["saved_limit"] = (registers[1])
end

end
goto p101
::p65::
tick(65)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p40
::p80::
tick(80)
do
do
(registers)[1] = upvalues[1]["misc"]
end

end
::p81::
do
do
registers[1] = (registers[1]["usercmd"])
end

end
::p82::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_original"]
end

end
::p83::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p21
::p101::
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
::p104::
do
do
upvalues[0]["saved_usercmd"] = (registers[1])
end

end
goto p9
::p106::
do
do
(registers)[1] = upvalues[1]["misc"]
end

end
::p107::
do
do
registers[1] = (registers[1]["usercmd"])
end

end
::p108::
do
do
registers[1] = (registers[1]["get_original"])
end

end
::p109::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
goto p122
::p112::
do
do
registers[1] = (registers[1]["get_original"])
end

end
::p113::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p114::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p14
::p122::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p80
end
end
