
-- Function f244; 15 recovered instruction blocks.
F.f244=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f244",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f244 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p17
::p2::
tick(2)
do
do
(registers)[3] = nil
end

end
::p3::
tick(3)
do
do
registers[4] = (registers[3] ~= registers[0])
end

end
::p4::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p22
::p6::
tick(6)
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
return registers[4]
end

end
::p7::
tick(7)
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p6 end
goto p14
::p9::
tick(9)
do
do
registers[3] = (registers[2]["invalid_tick_cleaner"])
end

end
::p12::
tick(12)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p2
::p14::
do
do
a = upvalues[0];
(registers)[4] = (a[2][a[1]]["air"])
end

end
::p15::
do
do
registers[4] = (registers[4] == true)
end

end
goto p6
::p17::
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
::p18::
do
do
(registers)[3] = registers[2]
end

end
::p19::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p12 end
goto p9
::p22::
do
do
a = (4)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p23::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p24::
do
do
registers[4] = (registers[4] == "Remove Backtrack")
end

end
goto p7
end
end
