
-- Function f467; 34 recovered instruction blocks.
F.f467=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f467",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f467 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p39
::p11::
tick(11)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p12::
do
do
(registers)[4] = registers[3]
end

end
::p13::
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
::p14::
tick(14)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p34 end
goto p11
::p16::
tick(16)
do
do
registers[6] = (1)
end

end
::p17::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p14 end
::p18::
do
do
registers[21] = operand_k
end

end
::p19::
do
do
registers[15] = (code_metadata)
end

end
::p20::
do
do
(registers)[22] = (39 + 5)
end

end
::p21::
do
do
(registers)[23] = constant_cache[10]
end

end
::p22::
do
do
registers[24] = ("j#\226")
end

end
::p23::
do
do
registers[25] = (3)
end

end
::p24::
do
do
registers[26] = (3)
end

end
::p25::
do
do
a = 23
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p26::
do
do
(registers)[22] = registers[22] + registers[23]
end

end
::p27::
do
do
registers[22] = 25341 + registers[22]
end

end
::p28::
do
do
registers[22] = registers[22] + -25526
end

end
::p29::
do
do
registers[15][48] = (registers[22])
end

end
::p30::
do
do
registers[21][33] = 43
end

end
::p31::
do
do
for f = 14, 26, 1 do
    (registers)[f] = nil
end
end

end
goto p44
::p34::
do
do
(registers)[8] = upvalues[1][151]
end

end
::p35::
do
do
(registers)[9] = registers[3]
end

end
::p36::
do
do
(registers)[10] = upvalues[0]["measure_item"]
end

end
::p37::
do
do
(registers)[11] = upvalues[0]["render_items"]
end

end
goto p44
::p39::
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
::p40::
do
do
registers[3] = (0)
end

end
::p41::
do
do
registers[4] = (1)
end

end
::p42::
do
do
(registers)[5] = upvalues[0]["render_count"]
end

end
goto p16
::p44::
do
do
(registers)[11] = registers[11][registers[7]]
end

end
::p45::
do
do
(registers)[12] = registers[1]
end

end
::p46::
do
do
(registers)[13] = registers[2]
end

end
::p47::
do
do
a = 10
z = (4)
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
a = 8
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p49::
do
do
(registers)[3] = registers[8]
end

end
goto p14
end
end
