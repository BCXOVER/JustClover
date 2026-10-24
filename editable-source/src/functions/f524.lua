
-- Function f524; 10 recovered instruction blocks.
F.f524=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f524",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f524 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p36
::p30::
tick(30)
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["update_list"]
end

end
::p31::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p32::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["init_callbacks"]
end

end
::p33::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p34::
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
a = {
    ...,
}
for f = 1, 1, 1 do
    registers[f] = (a[f])
end
end

end
::p37::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_maps"]
end

end
::p38::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p39::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["ensure_defaults"]
end

end
::p40::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p30
end
end
