
-- Function f247; 15 recovered instruction blocks.
F.f247=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f247",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f247 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p5
::p2::
tick(2)
branch_taken=false
do
do
a = (1)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p31 end
goto p10
::p5::
do
do
(registers)[1] = upvalues[0]["restore_all"]
end

end
::p6::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p7::
do
do
(registers)[1] = environment["pairs"]
end

end
::p8::
do
do
(registers)[2] = upvalues[0]["player_state"]
end

end
goto p73
::p10::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p11::
do
do
(registers)[1] = upvalues[0]["latency_cache"]
end

end
::p12::
do
do
registers[1]["tick"] = -1
end

end
goto p75
::p31::
do
do
(registers)[3] = upvalues[0]["player_state"]
end

end
::p32::
do
do
(registers[3])[registers[2]] = registers[0]
end

end
goto p2
::p73::
do
do
a = 1
z = (2)
q = 4
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
::p74::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (1)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p2 end
::p75::
do
do
(registers)[1] = upvalues[0]["latency_cache"]
end

end
::p76::
do
do
registers[1]["time"] = 0
end

end
::p77::
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
end
end
