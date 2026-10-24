
-- Function f104; 29 recovered instruction blocks.
F.f104=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f104",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f104 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p36
::p2::
tick(2)
do
do
registers[2] = (upvalues[1])
end

end
::p3::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p4::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p75 end
goto p25
::p10::
tick(10)
do
do
registers[3] = (registers[1]["enabled"])
end

end
::p11::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p12::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p13::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p74
::p23::
tick(23)
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p26
::p25::
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
::p26::
do
do
registers[4] = (upvalues[3])
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
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p80
::p32::
tick(32)
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
do
do
registers[1] = (upvalues[0])
end

end
::p37::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p38::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
::p39::
do
do
registers[2] = (registers[1]["enabled"])
end

end
::p40::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p74 end
goto p10
::p60::
tick(60)
do
do
(registers)[5] = upvalues[4]["capture_smooth_state"]
end

end
::p61::
do
do
(registers)[6] = registers[1]
end

end
::p62::
do
do
(registers)[7] = registers[2]
end

end
::p63::
do
do
(registers)[8] = registers[4]
end

end
::p64::
do
do
a = (5)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p32
::p74::
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
::p75::
do
do
registers[3] = (upvalues[2])
end

end
::p76::
do
do
(registers)[4] = registers[1]
end

end
::p77::
do
do
registers[5] = ("Smooth")
end

end
::p78::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p23
::p80::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p60
end
end
