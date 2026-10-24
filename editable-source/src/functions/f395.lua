
-- Function f395; 21 recovered instruction blocks.
F.f395=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f395",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f395 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p4
::p2::
tick(2)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p20 end
goto p8
::p4::
do
do
a = {
    ...,
}
for f = 1, 2, 1 do
    registers[f] = (a[f])
end
end

end
::p5::
do
do
(registers)[3] = environment["tostring"]
end

end
::p6::
do
do
(registers)[4] = registers[2]
end

end
goto p2
::p8::
do
do
registers[4] = ("")
end

end
goto p20
::p10::
tick(10)
do
do
a = (5)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["match"]
end

end
::p11::
do
do
registers[7] = ("^([AB])")
end

end
::p12::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p27
::p14::
tick(14)
do
do
registers[6] = ("B")
end

end
goto p18
::p16::
tick(16)
do
do
(registers)[5] = registers[3]
end

end
::p17::
do
do
if not (N) then

else
    for T, environment, W in next, N do
        if not (T >= 1) then

        else
            environment[2] = environment;
            (environment)[3] = (registers[T]);
            (environment)[1] = (3)
            N[T] = nil
        end
    end
end
return registers[5]
end

end
::p18::
tick(18)
do
do
registers[6] = registers[6] .. " - Planting"
end

end
::p19::
do
do
if not (N) then

else
    for T, environment, W in next, N do
        if not (T >= 1) then

        else
            environment[2] = environment;
            (environment)[3] = (registers[T]);
            (environment)[1] = (3)
            N[T] = nil
        end
    end
end
return registers[6]
end

end
::p20::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p21::
do
do
(registers)[4] = environment["string"]
end

end
::p22::
do
do
registers[4] = (registers[4]["upper"])
end

end
::p23::
do
do
(registers)[5] = registers[3]
end

end
::p24::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p25::
branch_taken=false
do
do
if registers[1] ~= "bomb_planting" then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p10
::p27::
do
do
(registers)[6] = registers[5]
end

end
::p28::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p14
end
end
