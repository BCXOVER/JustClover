
-- Function f165; 19 recovered instruction blocks.
F.f165=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f165",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f165 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p40
::p2::
tick(2)
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p3::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p4::
do
do
a = registers
z = (2)
q = (registers)
end

end
::p5::
do
do
m = 1
q = q[m]
end

end
::p6::
do
do
m = ("hotkey")
q = q[m]
end

end
::p7::
do
do
(a)[z] = q
end

end
goto p48
::p9::
tick(9)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p10::
branch_taken=false
do
do
if registers[2] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
::p29::
tick(29)
do
do
registers[3] = (registers[1]["override"])
end

end
::p30::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p51
::p40::
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
::p41::
do
do
(registers)[2] = environment["type"]
end

end
::p42::
do
do
(registers)[3] = registers[1]
end

end
goto p9
::p48::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p73
::p51::
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
::p66::
tick(66)
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
::p73::
do
do
registers[2] = (registers[1]["hotkey"])
end

end
::p74::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p75::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p66
end
end
