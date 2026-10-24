
-- Function f337; 45 recovered instruction blocks.
F.f337=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f337",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f337 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p59
::p4::
tick(4)
do
do
upvalues[0]["hotkey_active"] = false
end

end
::p5::
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
::p6::
tick(6)
do
do
(registers)[2] = upvalues[1][37]
end

end
::p7::
do
do
(registers)[3] = registers[1]
end

end
::p8::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p9::
do
do
(registers)[3] = upvalues[0]["get_weapon_type"]
end

end
::p10::
do
do
(registers)[4] = registers[2]
end

end
::p11::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p12::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p4
::p19::
do
do
(registers)[4] = upvalues[2]["ragebot"]
end

end
::p20::
do
do
registers[4] = (registers[4]["hitchance"])
end

end
::p21::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
goto p83
::p23::
tick(23)
do
do
(registers)[2] = upvalues[1][50]
end

end
::p24::
do
do
(registers)[3] = registers[1]
end

end
::p25::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p41
::p34::
tick(34)
do
do
upvalues[0]["hotkey_active"] = false
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
::p36::
tick(36)
do
do
upvalues[0]["hotkey_active"] = false
end

end
::p37::
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
::p41::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p93
::p43::
tick(43)
do
do
(registers)[5] = upvalues[0]["get_value"]
end

end
::p44::
do
do
(registers)[6] = registers[1]
end

end
::p45::
do
do
(registers)[7] = registers[3]
end

end
goto p130
::p48::
tick(48)
do
do
(registers)[6] = upvalues[0]["set_hitchance"]
end

end
::p49::
do
do
(registers)[7] = registers[5]
end

end
::p50::
do
do
a = (6)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p125
::p59::
do
do
upvalues[0]["updated_this_tick"] = false
end

end
::p60::
do
do
upvalues[0]["indicator_value"] = (registers[0])
end

end
::p61::
do
do
(registers)[1] = upvalues[0]["is_enabled"]
end

end
::p62::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p63::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p100 end
goto p36
::p82::
tick(82)
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
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p43 end
goto p34
::p93::
tick(93)
do
do
upvalues[0]["hotkey_active"] = false
end

end
::p94::
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
::p100::
tick(100)
do
do
(registers)[1] = upvalues[1][32]
end

end
::p101::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p102::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p23
::p125::
do
do
upvalues[0]["active"] = true
end

end
::p126::
do
do
upvalues[0]["updated_this_tick"] = true
end

end
::p127::
do
do
upvalues[0]["indicator_value"] = (registers[5])
end

end
::p128::
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
::p130::
do
do
(registers)[8] = registers[4]
end

end
::p131::
do
do
a = 5
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p132::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p82
end
end
