
-- Function f377; 14 recovered instruction blocks.
F.f377=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f377",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f377 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p39
::p24::
tick(24)
do
do
(registers)[1] = upvalues[1]["set_callback"]
end

end
::p25::
do
do
registers[2] = ("indicator")
end

end
::p26::
do
do
(registers)[3] = upvalues[0]["capture"]
end

end
::p27::
do
do
registers[4] = (false)
end

end
::p28::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p42
::p31::
tick(31)
do
do
registers[4] = (false)
end

end
::p32::
do
do
a = (1)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p37::
tick(37)
do
do
upvalues[0]["active"] = false
end

end
::p38::
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
::p39::
do
do
(registers)[1] = upvalues[0]["active"]
end

end
::p40::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p24
::p42::
do
do
(registers)[1] = upvalues[1]["set_callback"]
end

end
::p43::
do
do
registers[2] = ("paint")
end

end
::p44::
do
do
(registers)[3] = upvalues[0]["paint"]
end

end
goto p31
end
end
