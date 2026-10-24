
-- Function f265; 38 recovered instruction blocks.
F.f265=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f265",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f265 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p104
::p2::
tick(2)
do
do
(registers)[1] = registers[2]
end

end
goto p46
::p16::
tick(16)
branch_taken=false
do
do
if registers[2] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p98
::p18::
tick(18)
do
do
(registers)[2] = upvalues[2]["antiaim"]
end

end
::p19::
do
do
registers[2] = (registers[2]["fakelag"])
end

end
::p20::
do
do
registers[2] = (registers[2]["limit"])
end

end
::p21::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p22::
do
do
(registers)[4] = registers[1]
end

end
::p23::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p24::
do
do
upvalues[0]["saved_limit"] = (registers[0])
end

end
goto p103
::p33::
tick(33)
do
do
(registers)[1] = upvalues[0]["saved_limit"]
end

end
::p34::
do
do
(registers)[2] = environment["type"]
end

end
::p35::
do
do
(registers)[3] = registers[1]
end

end
goto p89
::p46::
do
do
(registers)[2] = upvalues[2]["misc"]
end

end
::p47::
do
do
registers[2] = (registers[2]["usercmd"])
end

end
::p48::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p49::
do
do
(registers)[4] = registers[1]
end

end
::p50::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p51::
do
do
upvalues[0]["saved_usercmd"] = (registers[0])
end

end
goto p109
::p58::
tick(58)
do
do
(registers)[2] = upvalues[1][162]
end

end
::p59::
do
do
(registers)[3] = registers[1]
end

end
::p60::
do
do
registers[4] = (14)
end

end
::p61::
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p62::
do
do
(registers)[1] = registers[2]
end

end
goto p18
::p64::
tick(64)
do
do
(registers)[1] = upvalues[0]["saved_usercmd"]
end

end
::p65::
do
do
(registers)[2] = environment["type"]
end

end
::p66::
do
do
(registers)[3] = registers[1]
end

end
::p67::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p16
::p89::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p90::
branch_taken=false
do
do
if registers[2] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p58
::p98::
do
do
(registers)[2] = upvalues[1][162]
end

end
::p99::
do
do
(registers)[3] = registers[1]
end

end
::p100::
do
do
registers[4] = (16)
end

end
::p101::
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p2
::p103::
tick(103)
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
(registers)[1] = upvalues[0]["saved_usercmd"]
end

end
::p105::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p64
::p109::
do
do
(registers)[1] = upvalues[0]["saved_limit"]
end

end
::p110::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p103 end
goto p33
end
end
