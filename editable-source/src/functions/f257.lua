
-- Function f257; 34 recovered instruction blocks.
F.f257=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f257",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f257 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p62
::p21::
tick(21)
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
tick(23)
do
do
registers[3][2] = (registers[4])
end

end
::p24::
do
do
registers[5] = (registers[1]["configs_db"])
end

end
::p25::
do
do
registers[5] = (registers[5]["menu_list"])
end

end
::p26::
do
do
registers[6] = (registers[3][1])
end

end
::p27::
do
do
(registers[5])[registers[2]] = registers[6]
end

end
::p28::
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["write_db"]
end

end
::p29::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p30::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p50
::p32::
tick(32)
do
do
(registers)[4] = upvalues[0][86]
end

end
::p33::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p34::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p35::
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
::p37::
tick(37)
do
do
(registers)[4] = environment["type"]
end

end
::p38::
do
do
(registers)[5] = registers[3]
end

end
::p39::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p40::
branch_taken=false
do
do
if registers[4] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p32
::p42::
do
do
(registers)[5] = upvalues[0][86]
end

end
::p43::
do
do
registers[6] = ("play resource/warning.wav")
end

end
::p44::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p21
::p46::
tick(46)
do
do
(registers)[5] = upvalues[0][86]
end

end
::p47::
do
do
registers[6] = ("play resource/warning.wav")
end

end
::p48::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p49::
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
::p50::
do
do
(registers)[5] = upvalues[0][86]
end

end
::p51::
do
do
registers[6] = ("play ui\\beepclear")
end

end
::p52::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p21
::p57::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_encoded_payload"]
end

end
::p58::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p59::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p46
::p62::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p63::
do
do
registers[3] = (registers[1]["configs_db"])
end

end
::p64::
do
do
registers[3] = (registers[3]["cfg_list"])
end

end
::p65::
do
do
(registers)[3] = registers[3][registers[2]]
end

end
goto p37
end
end
