
-- Function f245; 45 recovered instruction blocks.
F.f245=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f245",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f245 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p34
::p10::
tick(10)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p11::
do
do
registers[5] = (registers[5] == "table")
end

end
::p12::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p54
::p21::
tick(21)
do
do
(registers)[6] = environment["tonumber"]
end

end
::p22::
do
do
registers[7] = (registers[2]["revision"])
end

end
::p23::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p24::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p48
::p26::
tick(26)
do
do
(registers)[6] = registers[2]
end

end
::p27::
do
do
registers[7] = (false)
end

end
::p28::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (6)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p30::
tick(30)
do
do
registers[6] = {
}
end

end
::p31::
do
do
registers[7] = (false)
end

end
::p32::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (6)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p34::
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
::p35::
do
do
(registers)[2] = upvalues[0][121]
end

end
::p36::
do
do
registers[3] = (registers[1]["db"])
end

end
::p37::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p38::
do
do
(registers)[3] = upvalues[0][121]
end

end
::p39::
do
do
registers[4] = (registers[1]["backup_db"])
end

end
::p40::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
do
do
(registers)[4] = environment["type"]
end

end
::p42::
do
do
(registers)[5] = registers[2]
end

end
::p43::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p107
::p45::
tick(45)
do
do
(registers)[8] = registers[3]
end

end
::p46::
do
do
registers[9] = (true)
end

end
::p47::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (8)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p48::
do
do
registers[6] = (0)
end

end
goto p58
::p50::
tick(50)
do
do
registers[7] = (0)
end

end
goto p92
::p54::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p111 end
goto p21
::p56::
tick(56)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p63
::p58::
tick(58)
do
do
(registers)[7] = environment["tonumber"]
end

end
::p59::
do
do
registers[8] = (registers[3]["revision"])
end

end
::p60::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p61::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p50
::p63::
do
do
(registers)[6] = registers[3]
end

end
::p64::
do
do
registers[7] = (true)
end

end
::p65::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (6)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p77::
tick(77)
do
do
(registers)[8] = registers[2]
end

end
::p78::
do
do
registers[9] = (false)
end

end
::p79::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (8)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p92::
branch_taken=false
do
do
if not (registers[6] < registers[7]) then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p45
::p107::
do
do
registers[4] = (registers[4] == "table")
end

end
::p108::
do
do
(registers)[5] = environment["type"]
end

end
::p109::
do
do
(registers)[6] = registers[3]
end

end
goto p10
::p111::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p26
end
end
