
-- Function f500; 28 recovered instruction blocks.
F.f500=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f500",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f500 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p1
::p1::
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
::p2::
do
do
(registers)[3] = upvalues[0]["is_bomb_indicator_kind"]
end

end
::p3::
do
do
(registers)[4] = registers[1]
end

end
::p4::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p25
::p15::
tick(15)
do
do
registers[7] = (registers[4] - registers[3])
end

end
::p16::
do
do
registers[7] = (registers[7] * 0.5)
end

end
::p17::
do
do
registers[7] = registers[7] + 0.5
end

end
goto p31
::p25::
do
do
(registers)[3] = upvalues[0]["px"]
end

end
::p26::
do
do
registers[4] = (10)
end

end
::p27::
do
do
(registers)[5] = registers[2]
end

end
::p28::
do
do
a = (3)
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
::p31::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p32::
do
do
(registers)[6] = registers[5] + registers[6]
end

end
::p33::
do
do
if not (N) then

else
    for T, environment, W in next, N do
        if not (T >= 1) then

        else
            environment[2] = environment;
            (environment)[3] = (registers[T]);
            (environment)[1] = (3)
            N[T] = nil
        end
    end
end
return registers[6]
end

end
::p34::
tick(34)
do
do
(registers)[4] = upvalues[0]["px"]
end

end
::p35::
do
do
registers[5] = (25)
end

end
::p36::
do
do
(registers)[6] = registers[2]
end

end
::p37::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p38::
do
do
(registers)[5] = upvalues[0]["px"]
end

end
::p39::
do
do
registers[6] = (7)
end

end
::p40::
do
do
(registers)[7] = registers[2]
end

end
::p41::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p42::
do
do
(registers)[6] = upvalues[1][154]
end

end
goto p15
::p59::
do
do
(registers)[3] = upvalues[0]["get_icon_size"]
end

end
::p60::
do
do
(registers)[4] = registers[1]
end

end
::p61::
do
do
(registers)[5] = registers[2]
end

end
::p62::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p34
end
end
