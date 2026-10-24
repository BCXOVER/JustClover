
-- Function f164; 16 recovered instruction blocks.
F.f164=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f164",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f164 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p54
::p27::
tick(27)
do
do
registers[2] = (registers[1]["hotkey"])
end

end
::p28::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p29::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p38
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
::p35::
tick(35)
do
do
registers[3] = (registers[1]["override"])
end

end
::p36::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p32
::p38::
tick(38)
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
::p47::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p48::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p49::
do
do
registers[2] = (registers[1]["hotkey"])
end

end
goto p80
::p54::
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
::p55::
do
do
(registers)[2] = environment["type"]
end

end
::p56::
do
do
(registers)[3] = registers[1]
end

end
::p57::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p58::
branch_taken=false
do
do
if registers[2] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p35
::p80::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p27
end
end
