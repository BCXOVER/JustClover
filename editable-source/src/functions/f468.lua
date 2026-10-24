
-- Function f468; 27 recovered instruction blocks.
F.f468=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f468",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f468 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p29
::p4::
tick(4)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
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
::p15::
tick(15)
do
do
(registers)[1] = upvalues[0]["fakelag_exploit_tick"]
end

end
::p16::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p17::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p18::
do
do
(registers)[2] = environment["type"]
end

end
goto p34
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
::p29::
do
do
(registers)[1] = upvalues[0]["fakelag_exploit_enabled"]
end

end
::p30::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p31::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p32::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p27
::p34::
do
do
(registers)[3] = registers[1]
end

end
::p35::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p36::
branch_taken=false
do
do
if registers[2] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p83
::p63::
tick(63)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p64::
do
do
(registers)[2] = upvalues[1]["antiaim"]
end

end
::p65::
do
do
registers[2] = (registers[2]["fakelag"])
end

end
::p77::
do
do
registers[2] = (registers[2]["limit"])
end

end
::p78::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p79::
do
do
a = registers
z = 4
q = registers
end

end
::p80::
do
do
m = 1
q = q[m]
m = 2
end

end
::p81::
do
do
q = q - m;
(a)[z] = (q)
end

end
goto p4
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
(registers)[2] = upvalues[1]["misc"]
end

end
::p85::
do
do
registers[2] = (registers[2]["usercmd"])
end

end
::p86::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p87::
do
do
(registers)[4] = registers[1]
end

end
goto p63
end
end
