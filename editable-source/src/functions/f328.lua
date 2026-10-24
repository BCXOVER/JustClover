
-- Function f328; 24 recovered instruction blocks.
F.f328=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f328",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f328 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p27
::p2::
tick(2)
do
do
registers[5] = (0)
end

end
::p10::
tick(10)
do
do
registers[6] = (registers[2]["sequence"])
end

end
::p11::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p34
::p19::
tick(19)
do
do
(registers)[5] = registers[5] < registers[6]
end

end
::p20::
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
::p23::
tick(23)
do
do
(registers)[5] = registers[3] < registers[4]
end

end
::p24::
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
::p25::
tick(25)
do
do
registers[3] = (false)
end

end
::p26::
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
return registers[3]
end

end
::p27::
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
::p28::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p25
::p30::
tick(30)
do
do
registers[5] = (registers[1]["sequence"])
end

end
::p31::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p2
::p34::
do
do
registers[6] = (0)
end

end
goto p19
::p37::
tick(37)
do
do
registers[3] = (true)
end

end
::p38::
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
return registers[3]
end

end
::p81::
tick(81)
branch_taken=false
do
do
if registers[3] == registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p23
::p83::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p37
::p85::
tick(85)
do
do
registers[4] = (1000)
end

end
goto p81
::p87::
tick(87)
do
do
registers[4] = (registers[2]["order"])
end

end
::p88::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p85
::p92::
do
do
registers[3] = (registers[1]["order"])
end

end
::p93::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
::p95::
do
do
registers[3] = (1000)
end

end
goto p87
end
end
