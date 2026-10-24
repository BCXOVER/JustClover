
-- Function f472; 12 recovered instruction blocks.
F.f472=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f472",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f472 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p48
::p10::
tick(10)
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
::p16::
tick(16)
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
::p28::
tick(28)
do
do
(registers)[4] = upvalues[2]["setup_command"]
end

end
::p29::
do
do
(registers)[5] = registers[1]
end

end
::p30::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p10
::p35::
tick(35)
do
do
a = upvalues[0]
a[2][a[1]] = registers[1]
end

end
::p36::
do
do
(registers)[2] = upvalues[1]["set_callback"]
end

end
::p37::
do
do
registers[3] = ("setup_command")
end

end
goto p28
::p48::
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
::p49::
do
do
registers[1] = (registers[1] == true)
end

end
::p50::
do
do
a = (upvalues[0]);
(registers)[2] = a[2][a[1]]
end

end
::p51::
branch_taken=false
do
do
if registers[2] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p16
end
end
