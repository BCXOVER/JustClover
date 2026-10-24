
-- Function f342; 15 recovered instruction blocks.
F.f342=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f342",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f342 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p3
::p3::
tick(3)
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
::p4::
do
do
registers[3] = (registers[2]["yaw_modifiers"])
end

end
::p5::
do
do
registers[4] = (registers[3]["builder_type"])
end

end
goto p9
::p7::
tick(7)
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
::p9::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p10::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p11::
branch_taken=false
do
do
if registers[4] ~= "Default" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p41
::p14::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p15::
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_yaw_modifier_add"]
end

end
::p16::
do
do
(registers)[7] = registers[3]
end

end
::p17::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p18::
do
do
registers[4]["add"] = (registers[5])
end

end
goto p7
::p41::
do
do
registers[4] = (registers[1]["yaw"])
end

end
::p42::
do
do
registers[4]["add"] = 0
end

end
::p43::
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
