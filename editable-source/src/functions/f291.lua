
-- Function f291; 38 recovered instruction blocks.
F.f291=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f291",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f291 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p137
::p9::
tick(9)
do
do
a = 4;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p10::
do
do
registers[4] = (registers[2]["stop_to_full_running_fraction"])
end

end
::p11::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
::p13::
do
do
registers[4] = (0)
end

end
goto p27
::p17::
tick(17)
do
do
(registers)[4] = upvalues[1][151]
end

end
::p18::
do
do
registers[5] = (1)
end

end
::p19::
do
do
registers[6] = (registers[2]["feet_speed_unknown_forwards_or_sideways"])
end

end
::p20::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p9 end
goto p62
::p22::
tick(22)
do
do
(registers)[5] = upvalues[1][161]
end

end
::p23::
do
do
registers[6] = (registers[2]["max_yaw"])
end

end
::p24::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p77 end
goto p70
::p27::
do
do
registers[4] = (registers[4] * -0.30000001)
end

end
::p28::
do
do
(registers)[4] = (registers[4] - 0.19999999)
end

end
::p29::
do
do
(registers)[4] = registers[4] * registers[3]
end

end
::p30::
do
do
registers[4] = registers[4] + 1
end

end
goto p22
::p44::
tick(44)
do
do
registers[4] = (0)
end

end
goto p133
::p62::
do
do
registers[6] = (1)
end

end
goto p9
::p66::
tick(66)
do
do
(registers)[3] = upvalues[0]["clamp"]
end

end
::p67::
do
do
registers[4] = (registers[2]["feet_speed_forwards_or_sideways"])
end

end
::p68::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p133 end
goto p44
::p70::
do
do
registers[6] = (58)
end

end
::p77::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p78::
do
do
(registers)[6] = registers[5] * registers[4]
end

end
::p79::
do
do
(registers)[7] = upvalues[0]["clamp"]
end

end
::p80::
do
do
(registers)[8] = registers[6]
end

end
goto p112
::p82::
tick(82)
do
do
registers[3] = (58)
end

end
::p83::
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
::p94::
tick(94)
do
do
registers[12] = (58)
end

end
::p95::
do
do
a = 10
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
::p96::
do
do
if not (N) then

else
    for f, F, u in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f])
            F[1] = (3)
            N[f] = (nil)
        end
    end
end
a = 7
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p112::
do
do
registers[9] = (27)
end

end
::p113::
do
do
(registers)[10] = upvalues[1][162]
end

end
::p114::
do
do
(registers)[11] = registers[5]
end

end
goto p94
::p133::
do
do
registers[5] = (0)
end

end
::p134::
do
do
registers[6] = (1)
end

end
::p135::
do
do
a = 3
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p17
::p137::
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
::p138::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p82
end
end
