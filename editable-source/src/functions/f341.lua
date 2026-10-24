
-- Function f341; 43 recovered instruction blocks.
F.f341=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f341",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f341 pc="..pc,0) end
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
::p3::
do
do
registers[2] = (upvalues[0])
end

end
::p4::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p5::
branch_taken=false
do
do
if registers[2] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p49
::p13::
tick(13)
do
do
(registers)[3] = upvalues[2]["wraith"]
end

end
::p14::
do
do
registers[3] = (registers[3]["flags"])
end

end
::p15::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
goto p54
::p36::
tick(36)
do
do
(registers)[3] = upvalues[3][33]
end

end
::p37::
do
do
(registers)[4] = registers[1]
end

end
::p38::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p152
::p46::
tick(46)
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
::p49::
do
do
registers[3] = (upvalues[1])
end

end
::p50::
do
do
registers[4] = ("Flags")
end

end
::p51::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p52::
branch_taken=false
do
do
if registers[3] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p46
::p54::
do
do
registers[4] = (registers[3] ~= registers[0])
end

end
::p55::
do
do
(registers)[5] = registers[3]
end

end
::p56::
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
a = (4)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p64::
tick(64)
do
do
(registers)[3] = upvalues[2]["wraith"]
end

end
::p65::
do
do
registers[3] = (registers[3]["flags"])
end

end
::p66::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
::p67::
do
do
registers[4] = (upvalues[4])
end

end
goto p123
::p84::
tick(84)
do
do
registers[4] = ("MEDA")
end

end
goto p142
::p87::
do
do
(registers)[2] = upvalues[2]["resolved"]
end

end
::p88::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p89::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p36
::p117::
tick(117)
do
do
registers[3] = (upvalues[4])
end

end
::p118::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p119::
branch_taken=false
do
do
if registers[3] ~= "Auto" then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p13
::p121::
tick(121)
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p149
::p123::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p124::
branch_taken=false
do
do
if registers[4] ~= "Auto" then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p121
::p132::
tick(132)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p84
::p135::
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
::p136::
do
do
registers[3] = (true)
end

end
::p137::
do
do
registers[4] = (registers[2]["jitter"])
end

end
::p138::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
::p140::
do
do
registers[4] = ("MEDA[J]")
end

end
goto p132
::p142::
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
a = (3)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p149::
do
do
registers[4] = (true)
end

end
::p150::
do
do
(registers)[5] = registers[3]
end

end
::p151::
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
a = (4)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p152::
branch_taken=false
do
do
if registers[3] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p64
end
end
