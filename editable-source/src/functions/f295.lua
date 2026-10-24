
-- Function f295; 44 recovered instruction blocks.
F.f295=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f295",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f295 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p3
::p3::
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
::p4::
do
do
(registers)[2] = upvalues[0]["sim_store"]
end

end
::p5::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p6::
do
do
(registers)[2] = upvalues[0]["ent_store"]
end

end
goto p25
::p10::
tick(10)
do
do
registers[2] = (registers[2]["miss_side"])
end

end
::p11::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p12::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
goto p93
::p14::
tick(14)
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p15::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p16::
do
do
registers[2] = (registers[2]["last_value"])
end

end
::p17::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p18::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
goto p10
::p25::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p26::
do
do
(registers)[2] = upvalues[0]["resolved"]
end

end
::p27::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p28::
do
do
(registers)[2] = upvalues[0]["records"]
end

end
goto p73
::p57::
tick(57)
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p58::
do
do
registers[2] = (registers[2]["prev"])
end

end
::p59::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
goto p112
::p61::
tick(61)
do
do
registers[2] = (upvalues[1])
end

end
::p62::
do
do
(registers)[3] = registers[1]
end

end
::p63::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p122
::p73::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p74::
do
do
(registers)[2] = upvalues[0]["miss_counter"]
end

end
::p75::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p76::
do
do
(registers)[2] = upvalues[0]["correction_until"]
end

end
::p77::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p78::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p79::
do
do
registers[2] = (registers[2]["cur"])
end

end
::p80::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
goto p57
::p93::
do
do
registers[2] = (registers[2]["miss_until"])
end

end
::p94::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p95::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p96::
do
do
registers[2] = (registers[2]["misses"])
end

end
::p97::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
goto p61
::p112::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p113::
do
do
registers[2] = (registers[2]["pre_prev"])
end

end
::p114::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p116::
tick(116)
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p117::
do
do
registers[2] = (registers[2]["pre_pre_prev"])
end

end
::p118::
do
do
(registers[2])[registers[1]] = registers[0]
end

end
::p119::
do
do
(registers)[2] = upvalues[0]["wraith"]
end

end
::p120::
do
do
registers[2] = (registers[2]["flags"])
end

end
goto p14
::p122::
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
