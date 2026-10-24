
-- Function f237; 31 recovered instruction blocks.
F.f237=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f237",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f237 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p77
::p25::
tick(25)
do
do
(registers)[2] = upvalues[2][120]
end

end
::p26::
do
do
registers[3] = (upvalues[1])
end

end
::p27::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p63
::p32::
tick(32)
do
do
registers[4] = {
}
end

end
::p33::
do
do
registers[4]["type"] = (registers[2])
end

end
::p34::
do
do
(registers)[5] = upvalues[4]["get_raw_value"]
end

end
goto p46
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
::p46::
do
do
registers[6] = (upvalues[0])
end

end
::p47::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p48::
do
do
registers[4]["value"] = (registers[5])
end

end
::p49::
do
do
(registers[3])[registers[2]] = registers[4]
end

end
goto p89
::p51::
tick(51)
do
do
registers[3] = (upvalues[1])
end

end
::p52::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p42
::p54::
tick(54)
do
do
registers[3] = (upvalues[0])
end

end
::p55::
do
do
registers[4] = {
}
end

end
::p56::
do
do
(upvalues[3])[registers[3]] = registers[4]
end

end
::p58::
tick(58)
do
do
registers[3] = (upvalues[0])
end

end
::p59::
do
do
(registers)[3] = upvalues[3][registers[3]]
end

end
::p60::
do
do
(registers)[4] = registers[3][registers[2]]
end

end
::p61::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p32
::p63::
do
do
registers[3] = (upvalues[0])
end

end
::p64::
do
do
(registers)[3] = upvalues[3][registers[3]]
end

end
::p65::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p54
::p77::
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
::p78::
do
do
registers[2] = (upvalues[0])
end

end
::p79::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p51
::p89::
do
do
(registers)[4] = upvalues[2][110]
end

end
::p90::
do
do
registers[5] = (upvalues[0])
end

end
::p91::
do
do
(registers)[6] = registers[1]
end

end
::p92::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p93::
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
end
end
