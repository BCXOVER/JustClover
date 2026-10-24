
-- Function f304; 22 recovered instruction blocks.
F.f304=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f304",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f304 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
do
do
registers[1] = (upvalues[0])
end

end
::p3::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p4::
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p52
::p6::
tick(6)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p7::
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
::p8::
tick(8)
do
do
registers[7] = new_frame(2)
end

end
::p9::
do
do
(registers)[8] = registers[4]
end

end
::p10::
do
do
(registers)[9] = registers[5]
end

end
::p11::
do
do
a = (7)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p12::
do
do
(registers[6])[registers[3]] = registers[7]
end

end
goto p64
::p52::
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
::p53::
do
do
(registers)[1] = environment["ipairs"]
end

end
::p54::
do
do
registers[2] = (upvalues[1])
end

end
::p55::
do
do
a = 2
z = (1)
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
::p56::
do
do
a = 1
z = (0)
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
::p57::
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
if branch_taken then goto p64 end
::p58::
tick(58)
do
do
(registers)[4] = environment["entity"]
end

end
::p59::
do
do
registers[4] = (registers[4]["get_simtime"])
end

end
::p60::
do
do
(registers)[5] = registers[3]
end

end
::p61::
do
do
a = 4
z = (2)
q = 3
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
::p62::
do
do
(registers)[6] = upvalues[2]["sim_store"]
end

end
goto p8
::p64::
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
if branch_taken then goto p58 end
goto p6
end
end
