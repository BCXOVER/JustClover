
-- Function f130; 30 recovered instruction blocks.
F.f130=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f130",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f130 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p82
::p12::
tick(12)
do
do
registers[5] = (upvalues[2])
end

end
::p13::
do
do
registers[6] = (11)
end

end
::p14::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p16::
do
do
registers[4]["gap"] = (registers[5])
end

end
::p17::
do
do
registers[4]["flags"] = "-"
end

end
::p18::
do
do
(upvalues[0])[registers[3]] = registers[4]
end

end
::p19::
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
::p34::
tick(34)
do
do
(registers)[5] = environment["tostring"]
end

end
::p35::
do
do
(registers)[6] = registers[1]
end

end
::p36::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p37::
do
do
registers[4]["text"] = (registers[5])
end

end
::p38::
do
do
a = (upvalues[1]);
(registers)[5] = a[2][a[1]]
end

end
::p39::
do
do
registers[4]["color"] = (registers[5])
end

end
::p40::
do
do
registers[5] = (upvalues[2])
end

end
::p41::
do
do
registers[6] = (4)
end

end
::p42::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p89
::p82::
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
::p83::
do
do
registers[3] = (upvalues[0])
end

end
::p84::
do
do
registers[3] = (#registers[3])
end

end
::p85::
do
do
registers[3] = registers[3] + 1
end

end
::p86::
do
do
registers[4] = {
}
end

end
goto p34
::p89::
do
do
registers[4]["gap"] = (registers[5])
end

end
::p90::
do
do
(upvalues[0])[registers[3]] = registers[4]
end

end
::p91::
do
do
registers[3] = (upvalues[0])
end

end
::p92::
do
do
registers[3] = (#registers[3])
end

end
::p93::
do
do
registers[3] = registers[3] + 1
end

end
::p94::
do
do
registers[4] = {
}
end

end
::p95::
do
do
registers[4]["text"] = (registers[2])
end

end
::p96::
do
do
registers[5] = (upvalues[3])
end

end
::p97::
do
do
registers[4]["color"] = (registers[5])
end

end
goto p12
end
end
