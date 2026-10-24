
-- Function f332; 25 recovered instruction blocks.
F.f332=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f332",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f332 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p49
::p3::
tick(3)
do
do
a = upvalues[2];
(registers)[4] = (a[2][a[1]]["exploits"])
end

end
::p4::
do
do
registers[4]["charged"] = (registers[3])
end

end
::p5::
do
do
registers[4] = (registers[1]["command_number"])
end

end
::p6::
do
do
a = upvalues[3]
a[2][a[1]] = registers[4]
end

end
goto p58
::p8::
tick(8)
do
do
registers[6] = ("m_nTickBase")
end

end
::p9::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p10::
do
do
(registers)[5] = upvalues[1]["is_double_tap"]
end

end
::p23::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
::p24::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p54
::p49::
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
::p50::
do
do
(registers)[2] = upvalues[0][32]
end

end
::p51::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p52::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p88
::p54::
do
do
(registers)[5] = upvalues[1]["is_on_shot_antiaim"]
end

end
::p55::
do
do
top = 5;
(registers)[top] = registers[top]()
end

end
goto p85
::p58::
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
::p60::
tick(60)
do
do
registers[3] = (false)
end

end
goto p3
::p77::
tick(77)
do
do
(registers)[6] = upvalues[0][23]
end

end
::p78::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p79::
do
do
registers[3] = registers[6] > registers[4]
end

end
goto p3
::p81::
do
do
registers[3] = (false)
end

end
::p82::
do
do
(registers)[4] = upvalues[0][47]
end

end
::p83::
do
do
(registers)[5] = registers[2]
end

end
goto p8
::p85::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p60
::p88::
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
