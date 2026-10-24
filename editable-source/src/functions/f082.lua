
-- Function f82; 14 recovered instruction blocks.
F.f82=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f82",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f82 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p8
::p8::
do
do
(registers)[1] = environment["getfenv"]
end

end
::p9::
do
do
(registers)[2] = environment["tostring"]
end

end
::p10::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p12::
do
do
(registers)[2] = environment["getfenv"]
end

end
::p13::
do
do
registers[3] = (0)
end

end
::p14::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p15::
branch_taken=false
do
do
if registers[1] == registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p50
::p21::
tick(21)
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p22::
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
::p50::
do
do
registers[1] = (upvalues[0])
end

end
::p51::
do
do
registers[2] = {
}
end

end
::p52::
do
do
(registers)[3] = upvalues[1]["CHECK_15_FAILED"]
end

end
::p53::
do
do
registers[2]["ban_num"] = (registers[3])
end

end
::p54::
do
do
registers[2]["ban_info"] = "external [CALL][0x01]"
end

end
goto p21
end
end
