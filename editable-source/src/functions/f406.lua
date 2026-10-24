
-- Function f406; 31 recovered instruction blocks.
F.f406=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f406",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f406 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
tick(2)
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p3::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p4::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p11 end
goto p57
::p11::
do
do
(registers)[1] = upvalues[1]["visuals"]
end

end
::p12::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p62
::p24::
tick(24)
do
do
(registers)[4] = upvalues[1]["visuals"]
end

end
::p25::
do
do
registers[4] = (registers[4]["stubs"])
end

end
::p26::
do
do
registers[4] = (registers[4]["damage_indicator"])
end

end
::p27::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p28::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p29::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p82
::p31::
tick(31)
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
::p57::
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
::p59::
tick(59)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p31
::p62::
do
do
(registers)[2] = upvalues[1]["visuals"]
end

end
::p63::
do
do
registers[2] = (registers[2]["stubs"])
end

end
::p64::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
::p66::
do
do
(registers)[3] = upvalues[1]["visuals"]
end

end
::p67::
do
do
registers[3] = (registers[3]["stubs"])
end

end
::p68::
do
do
registers[3] = (registers[3]["damage_indicator"])
end

end
::p69::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p24
::p71::
do
do
registers[2] = (upvalues[3])
end

end
::p72::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
::p73::
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
::p82::
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
::p83::
do
do
(registers)[1] = upvalues[2][32]
end

end
::p84::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p85::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
::p87::
do
do
(registers)[2] = upvalues[2][50]
end

end
::p88::
do
do
(registers)[3] = registers[1]
end

end
::p89::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p59
end
end
