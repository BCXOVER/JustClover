
-- Function f430; 35 recovered instruction blocks.
F.f430=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f430",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f430 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p89
::p6::
tick(6)
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
::p35::
tick(35)
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p36::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p37::
do
do
registers[6] = ("%-")
end

end
::p40::
do
do
registers[7] = ("+")
end

end
::p41::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p42::
do
do
(registers)[3] = registers[4]
end

end
::p43::
do
do
registers[4] = (#registers[3])
end

end
goto p58
::p45::
tick(45)
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
tick(46)
do
do
(registers)[5] = registers[2][registers[3]]
end

end
::p47::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p78 end
goto p6
::p58::
do
do
registers[4] = registers[4] % 4
end

end
::p59::
branch_taken=false
do
do
if registers[4] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
::p62::
do
do
(registers)[5] = environment["string"]
end

end
::p63::
do
do
registers[5] = (registers[5]["rep"])
end

end
::p64::
do
do
registers[6] = ("=")
end

end
::p65::
do
do
registers[7] = 4 - registers[4]
end

end
::p66::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p67::
do
do
registers[3] = (registers[3] .. registers[5])
end

end
goto p46
::p78::
do
do
registers[2][registers[3]] = true
end

end
::p79::
do
do
registers[5] = (#registers[1])
end

end
::p80::
do
do
registers[5] = registers[5] + 1
end

end
::p81::
do
do
(registers[1])[registers[5]] = registers[3]
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
::p89::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p90::
do
do
registers[4] = (upvalues[0])
end

end
::p91::
do
do
(registers)[5] = registers[3]
end

end
::p92::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p106
::p95::
tick(95)
do
do
a = (4)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p96::
do
do
registers[6] = ("_")
end

end
::p97::
do
do
registers[7] = ("/")
end

end
goto p35
::p99::
tick(99)
do
do
registers[4] = (#registers[3])
end

end
::p100::
branch_taken=false
do
do
if not (not (registers[4] < 16)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p95 end
goto p45
::p106::
do
do
(registers)[3] = registers[4]
end

end
::p107::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p99
end
end
