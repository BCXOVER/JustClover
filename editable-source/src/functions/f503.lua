
-- Function f503; 27 recovered instruction blocks.
F.f503=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f503",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f503 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p29
::p2::
tick(2)
do
do
a = (upvalues[0])
a[2][a[1]] = (false)
end

end
goto p32
::p4::
tick(4)
do
do
a = (upvalues[0])
a[2][a[1]] = (true)
end

end
::p5::
do
do
registers[2] = (upvalues[3])
end

end
::p6::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
goto p2
::p9::
tick(9)
branch_taken=false
do
do
if registers[1] ~= "Visuals" then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p17
::p11::
tick(11)
do
do
registers[4] = ("Other")
end

end
::p12::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p13::
do
do
a = (upvalues[0])
a[2][a[1]] = (false)
end

end
::p14::
do
do
registers[1] = ("Other")
end

end
::p15::
branch_taken=false
do
do
if registers[1] ~= "Anti-Aim" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p25
::p17::
do
do
a = (upvalues[0])
a[2][a[1]] = (true)
end

end
::p18::
do
do
(registers)[2] = upvalues[1]["switch"]
end

end
::p19::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
goto p11
::p21::
tick(21)
do
do
(registers)[1] = upvalues[1]["switch"]
end

end
::p22::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p23::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p9
::p25::
do
do
registers[2] = (upvalues[2])
end

end
::p26::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p27::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p4
::p29::
do
do
a = (upvalues[0]);
(registers)[1] = a[2][a[1]]
end

end
::p30::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
::p31::
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
::p32::
do
do
registers[2] = (upvalues[4])
end

end
::p33::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
::p34::
do
do
registers[2] = (upvalues[5])
end

end
::p35::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
::p36::
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
