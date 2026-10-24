
-- Function f259; 15 recovered instruction blocks.
F.f259=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f259",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f259 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p15
::p11::
tick(11)
do
do
(registers)[3] = upvalues[0]["set_int"]
end

end
::p12::
branch_taken=false
do
do
if registers[3.0] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p23
::p15::
tick(15)
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
::p16::
do
do
registers[2] = (upvalues[0])
end

end
::p17::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p11
::p19::
tick(19)
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p20::
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
::p23::
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
registers[2] = (upvalues[0])
end

end
::p27::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
::p28::
do
do
(registers)[4] = registers[1]
end

end
::p29::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p55 end
::p44::
do
do
registers[4] = (0)
end

end
::p55::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
::p84::
do
do
registers[4] = (1)
end

end
goto p19
end
end
