
-- Function f251; 17 recovered instruction blocks.
F.f251=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f251",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f251 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p52
::p21::
tick(21)
do
do
registers[2] = registers[1] .. "d"
end

end
::p22::
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
::p27::
tick(27)
do
do
(registers)[2] = environment["string"]
end

end
::p28::
do
do
registers[2] = (registers[2]["find"])
end

end
::p29::
do
do
(registers)[3] = registers[1]
end

end
::p30::
do
do
registers[4] = ("d")
end

end
::p31::
do
do
registers[5] = (1)
end

end
::p33::
do
do
registers[6] = (true)
end

end
::p34::
do
do
a = 2
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p35::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
::p38::
do
do
(registers)[2] = registers[1]
end

end
::p39::
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
::p50::
tick(50)
branch_taken=false
do
do
if registers[1] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p66
::p52::
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
::p53::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p50
::p66::
do
do
registers[2] = ("d")
end

end
::p67::
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
end
end
