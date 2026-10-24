
-- Function f413; 18 recovered instruction blocks.
F.f413=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f413",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f413 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p33
::p11::
tick(11)
do
do
(registers)[4] = upvalues[0]["px"]
end

end
::p12::
do
do
registers[5] = (36)
end

end
::p13::
do
do
(registers)[6] = registers[3]
end

end
::p14::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p33::
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
::p34::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
::p36::
do
do
(registers)[4] = upvalues[0]["px"]
end

end
::p37::
do
do
registers[5] = (12)
end

end
::p38::
do
do
(registers)[6] = registers[3]
end

end
::p39::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p48::
do
do
(registers)[4] = upvalues[0]["is_bomb_indicator_kind"]
end

end
::p49::
do
do
(registers)[5] = registers[1]
end

end
::p50::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p51::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p11
::p65::
tick(65)
do
do
(registers)[4] = upvalues[0]["px"]
end

end
::p66::
do
do
registers[5] = (35)
end

end
::p67::
do
do
(registers)[6] = registers[3]
end

end
::p68::
do
do
a = (4)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
end
end
