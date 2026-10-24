
-- Function f457; 13 recovered instruction blocks.
F.f457=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f457",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f457 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p19
::p2::
tick(2)
do
do
a = (1)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p15::
tick(15)
do
do
(registers)[4] = upvalues[3]["ragebot"]
end

end
::p16::
do
do
registers[4] = (registers[4]["extrapolation"])
end

end
goto p46
::p19::
do
do
(registers)[1] = upvalues[0]["clamp"]
end

end
::p20::
do
do
(registers)[2] = upvalues[1][154]
end

end
::p21::
do
do
registers[3] = (upvalues[2])
end

end
goto p72
::p46::
tick(46)
do
do
registers[5] = (0)
end

end
::p47::
do
do
a = 3
z = (3)
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
::p48::
do
do
a = 2
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p49::
do
do
registers[3] = (0)
end

end
::p50::
do
do
registers[4] = (5)
end

end
goto p2
::p72::
do
do
(registers)[4] = upvalues[3]["ragebot"]
end

end
::p73::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p46 end
goto p15
end
end
