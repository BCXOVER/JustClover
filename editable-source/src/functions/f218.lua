
-- Function f218; 11 recovered instruction blocks.
F.f218=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f218",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f218 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p84
::p9::
tick(9)
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
::p10::
tick(10)
do
do
(registers)[2] = upvalues[0][54]
end

end
::p11::
do
do
registers[3] = (registers[1]["userid"])
end

end
::p12::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p13::
do
do
(registers)[3] = upvalues[0][32]
end

end
goto p87
::p84::
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
::p85::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p10
::p87::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p88::
branch_taken=false
do
do
if registers[2] ~= registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
::p90::
do
do
(registers)[2] = upvalues[1]["reset"]
end

end
::p91::
do
do
top = (2)
registers[top]()
top = top - 1
end

end
goto p9
end
end
