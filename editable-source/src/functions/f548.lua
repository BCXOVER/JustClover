
-- Function f548; 34 recovered instruction blocks.
F.f548=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f548",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f548 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p84
::p2::
tick(2)
do
do
registers[2]["ban_info"] = "[ENV][0x01]"
end

end
::p3::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (1)
return registers[a](registers[a + 1])
end

end
::p6::
tick(6)
do
do
registers[1] = (upvalues[0])
end

end
::p7::
do
do
registers[2] = {
}
end

end
::p8::
do
do
(registers)[3] = upvalues[1]["MODULE_ENV_CHECK_FAILED"]
end

end
::p9::
do
do
registers[2]["ban_num"] = (registers[3])
end

end
goto p2
::p27::
tick(27)
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
::p28::
tick(28)
do
do
(registers)[1] = environment["package"]
end

end
::p29::
do
do
registers[1] = (registers[1]["loaded"])
end

end
::p30::
do
do
(registers)[2] = environment["_LOADER_NAME"]
end

end
goto p49
::p32::
tick(32)
do
do
registers[2]["ban_info"] = "[ENV][0x03]"
end

end
::p33::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (1)
return registers[a](registers[a + 1])
end

end
::p34::
tick(34)
do
do
registers[2]["ban_info"] = "[ENV][0x02]"
end

end
::p35::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (1)
return registers[a](registers[a + 1])
end

end
::p44::
tick(44)
do
do
registers[1] = (upvalues[0])
end

end
::p45::
do
do
registers[2] = {
}
end

end
::p46::
do
do
(registers)[3] = upvalues[1]["MODULE_ENV_CHECK_FAILED"]
end

end
::p47::
do
do
registers[2]["ban_num"] = (registers[3])
end

end
goto p32
::p49::
do
do
(registers)[1] = registers[1][registers[2]]
end

end
::p50::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p44
::p69::
tick(69)
do
do
(registers)[2] = environment["string"]
end

end
::p70::
do
do
registers[2] = (registers[2]["find"])
end

end
::p71::
do
do
(registers)[3] = environment["_LOADER_NAME"]
end

end
::p72::
do
do
registers[4] = ("!!!")
end

end
::p73::
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p74::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
::p77::
tick(77)
do
do
registers[1] = (upvalues[0])
end

end
::p78::
do
do
registers[2] = {
}
end

end
::p79::
do
do
(registers)[3] = upvalues[1]["MODULE_ENV_CHECK_FAILED"]
end

end
::p80::
do
do
registers[2]["ban_num"] = (registers[3])
end

end
goto p34
::p84::
do
do
(registers)[1] = environment["_NAME"]
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
if branch_taken then goto p111 end
goto p6
::p111::
do
do
(registers)[1] = environment["_LOADER_NAME"]
end

end
::p112::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p69
end
end
