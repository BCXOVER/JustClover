
-- Function f434; 21 recovered instruction blocks.
F.f434=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f434",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f434 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p74
::p2::
tick(2)
do
do
registers[2] = (registers[2] == "table")
end

end
::p3::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p17 end
goto p27
::p10::
tick(10)
do
do
(registers)[2] = environment["type"]
end

end
::p11::
do
do
registers[3] = (registers[1]["set"])
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
registers[2] = (registers[2] == "function")
end

end
::p15::
tick(15)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p20
::p17::
tick(17)
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p15 end
goto p10
::p20::
do
do
(registers)[2] = environment["type"]
end

end
::p21::
do
do
registers[3] = (registers[1]["type"])
end

end
::p22::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p23::
do
do
registers[2] = (registers[2] == "string")
end

end
goto p50
::p27::
do
do
(registers)[2] = environment["type"]
end

end
::p28::
do
do
registers[3] = (registers[1]["get"])
end

end
::p29::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p30::
do
do
registers[2] = (registers[2] == "function")
end

end
goto p17
::p50::
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
return registers[2]
end

end
::p74::
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
::p75::
do
do
(registers)[2] = environment["type"]
end

end
::p76::
do
do
(registers)[3] = registers[1]
end

end
::p77::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p2
end
end
