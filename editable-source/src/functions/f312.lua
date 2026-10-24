
-- Function f312; 14 recovered instruction blocks.
F.f312=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f312",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f312 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p46
::p32::
tick(32)
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
::p33::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p60
::p36::
tick(36)
do
do
(registers)[3] = registers[2]
end

end
goto p79
::p46::
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
::p47::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p51 end
goto p57
::p51::
tick(51)
do
do
(registers)[3] = environment["tonumber"]
end

end
::p52::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p53::
do
do
a = 4
z = (2)
q = 0
if z == 0 then

else
    top = (a + z - 1)
end
m, x = nil
if z ~= 1 then
    m, x = pack_returns(registers[a](unpack_range(top, registers, a + 1)))
else
    m, x = pack_returns(registers[a]())
end
if q ~= 1 then
    if q ~= 0 then
        m = a + q - 2
        top = (m + 1)
    else
        m = m + a - 1
        top = m
    end
    z = 0
    for f = a, m do
        z = (z + 1);
        (registers)[f] = x[z]
    end
else
    top = a - 1
end
end

end
::p54::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p55::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p60 end
goto p32
::p57::
do
do
(registers)[3] = registers[2]
end

end
::p58::
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
::p60::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p36
::p79::
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
end
end
