
-- Function f410; 17 recovered instruction blocks.
F.f410=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f410",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f410 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p43
::p2::
tick(2)
do
do
(registers)[1] = upvalues[1]["updated_this_tick"]
end

end
::p3::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p25
::p14::
tick(14)
do
do
a = (1)
top = a + 6 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p15::
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
::p25::
do
do
(registers)[1] = upvalues[1]["hotkey_active"]
end

end
::p26::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p76
::p28::
do
do
(registers)[1] = upvalues[2][138]
end

end
::p29::
do
do
registers[2] = (255)
end

end
::p30::
do
do
registers[3] = (255)
end

end
goto p39
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
::p39::
do
do
registers[4] = (255)
end

end
::p40::
do
do
registers[5] = (200)
end

end
::p41::
do
do
registers[6] = ("HC")
end

end
goto p14
::p43::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p44::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p45::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p32
::p76::
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
