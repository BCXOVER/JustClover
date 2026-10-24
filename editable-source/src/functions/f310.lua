
-- Function f310; 29 recovered instruction blocks.
F.f310=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f310",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f310 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p23
::p19::
tick(19)
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
::p23::
do
do
(registers)[1] = environment["cvar"]
end

end
::p24::
do
do
registers[1] = (registers[1]["r_aspectratio"])
end

end
::p25::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p83
::p27::
tick(27)
do
do
(registers)[1] = environment["cvar"]
end

end
::p28::
do
do
a = registers
z = (1)
q = (registers)
end

end
::p29::
do
do
m = 1
q = q[m]
end

end
::p30::
do
do
m = ("r_aspectratio")
q = q[m]
end

end
::p31::
do
do
(a)[z] = q
end

end
::p32::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
goto p70
::p34::
tick(34)
do
do
(registers)[1] = upvalues[0]["aspect_ratio_value"]
end

end
::p35::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p36::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p37::
branch_taken=false
do
do
if not (49 < registers[1]) then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p27
::p57::
do
do
(registers)[1] = upvalues[0]["aspect_ratio"]
end

end
::p58::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p59::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p60::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p34
::p70::
do
do
(registers)[3] = upvalues[0]["aspect_ratio_value"]
end

end
::p71::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p72::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p84
::p83::
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
::p84::
do
do
registers[3] = (registers[3] * 0.01)
end

end
::p85::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p19
::p87::
do
do
(registers)[1] = environment["cvar"]
end

end
::p88::
do
do
registers[1] = (registers[1]["r_aspectratio"])
end

end
::p89::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p90::
do
do
registers[3] = (upvalues[1])
end

end
::p91::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p19
end
end
