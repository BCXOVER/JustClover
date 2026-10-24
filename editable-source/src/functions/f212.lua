
-- Function f212; 19 recovered instruction blocks.
F.f212=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f212",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f212 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p10
::p2::
tick(2)
do
do
(registers)[8] = registers[4]
end

end
::p3::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p20
::p5::
tick(5)
do
do
(registers)[8] = environment["string"]
end

end
::p6::
do
do
registers[8] = (registers[8]["lower"])
end

end
::p7::
do
do
(registers)[9] = registers[2]
end

end
::p8::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p17
::p10::
do
do
a = {
    ...,
}
for f = 1, 5, 1 do
    registers[f] = (a[f])
end
end

end
::p11::
do
do
registers[6] = (#registers[1])
end

end
::p12::
do
do
registers[6] = registers[6] + 1
end

end
::p13::
do
do
registers[7] = {
}
end

end
::p14::
do
do
registers[7]["text"] = (registers[2])
end

end
::p15::
do
do
registers[7]["color"] = (registers[3])
end

end
goto p2
::p17::
tick(17)
do
do
registers[7]["legacy"] = (registers[8])
end

end
::p18::
do
do
(registers[1])[registers[6]] = registers[7]
end

end
::p19::
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
::p20::
do
do
registers[8] = (100)
end

end
::p23::
do
do
registers[7]["order"] = (registers[8])
end

end
::p24::
do
do
(registers)[8] = registers[5]
end

end
::p25::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p5
end
end
