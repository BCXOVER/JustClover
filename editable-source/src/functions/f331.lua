
-- Function f331; 10 recovered instruction blocks.
F.f331=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f331",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f331 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p1
::p1::
do
do
(registers)[1] = upvalues[0]["update_callbacks"]
end

end
::p2::
do
do
registers[2] = (upvalues[1])
end

end
::p3::
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
::p4::
do
do
a = 1;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p5::
do
do
registers[1] = (upvalues[1])
end

end
::p7::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p8::
branch_taken=false
do
do
if registers[1] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
::p11::
do
do
(registers)[1] = upvalues[0]["reset"]
end

end
::p12::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p14::
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
