
-- Function f243; 31 recovered instruction blocks.
F.f243=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f243",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f243 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p46
::p2::
tick(2)
do
do
registers[2] = (registers[1] ~= registers[0])
end

end
::p3::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p6
::p5::
tick(5)
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
do
do
registers[2] = (registers[1]["fakelag_exploit_tick"])
end

end
goto p15
::p9::
tick(9)
do
do
(registers)[2] = nil
end

end
goto p93
::p15::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p9
::p19::
tick(19)
do
do
(registers)[1] = nil
end

end
goto p2
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
::p24::
tick(24)
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
::p30::
tick(30)
do
do
(registers)[1] = upvalues[1]["antiaim"]
end

end
::p31::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p32::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p61
::p35::
tick(35)
do
do
(registers)[6] = registers[3]
end

end
::p36::
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
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
::p46::
do
do
(registers)[1] = upvalues[0]["is_enabled"]
end

end
::p47::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p48::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p24
::p52::
tick(52)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p19
::p61::
do
do
(registers)[1] = upvalues[1]["antiaim"]
end

end
::p62::
do
do
registers[1] = (registers[1]["features"])
end

end
goto p52
::p79::
tick(79)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p80::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p81::
do
do
(registers)[4] = environment["type"]
end

end
::p83::
do
do
(registers)[5] = registers[3]
end

end
::p84::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p85::
branch_taken=false
do
do
if registers[4] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p98 end
goto p5
::p93::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p21
::p98::
do
do
(registers)[4] = upvalues[2]["misc"]
end

end
::p99::
do
do
registers[4] = (registers[4]["usercmd"])
end

end
::p100::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
goto p35
end
end
