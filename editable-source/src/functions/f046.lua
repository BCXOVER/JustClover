
-- Function f46; 31 recovered instruction blocks.
F.f46=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f46",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f46 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p74
::p18::
tick(18)
do
do
(registers)[5] = registers[1]
end

end
::p19::
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
::p20::
do
do
a = 2
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p21::
do
do
a = (registers)
z = (1)
end

end
::p22::
do
do
a = a[z]
z = ("signature")
q = (registers)
end

end
::p23::
do
do
m = 2
end

end
::p24::
do
do
q = (q[m])
a[z] = q
end

end
goto p57
::p42::
tick(42)
do
do
registers[1]["info"] = (registers[2])
end

end
::p43::
do
do
(registers)[2] = upvalues[1]["hmac_sha256"]
end

end
::p44::
do
do
registers[3] = (upvalues[2])
end

end
::p45::
do
do
(registers)[4] = environment["json"]
end

end
::p46::
do
do
registers[4] = (registers[4]["stringify"])
end

end
goto p18
::p57::
do
do
(registers)[2] = environment["database"]
end

end
::p58::
do
do
a = registers
z = (2)
q = (registers)
end

end
::p59::
do
do
m = 2
q = q[m]
end

end
::p60::
do
do
m = ("write")
q = q[m]
end

end
::p61::
do
do
(a)[z] = q
end

end
::p62::
do
do
registers[3] = ("grenade_helper_store_v1")
end

end
::p63::
do
do
(registers)[4] = registers[1]
end

end
::p64::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p65::
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
::p74::
do
do
registers[1] = {
}
end

end
::p75::
do
do
(registers)[2] = environment["client"]
end

end
::p76::
do
do
registers[2] = (registers[2]["unix_time"])
end

end
::p77::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p79::
do
do
registers[1]["timestamp"] = (registers[2])
end

end
::p80::
do
do
registers[1]["script"] = "Andromeda Exclusive"
end

end
::p81::
do
do
a = (registers)
end

end
::p82::
do
do
z = 2
end

end
::p83::
do
do
q = (upvalues)
end

end
::p84::
do
do
m = 0
q = (q[m])
a[z] = q
end

end
goto p42
end
end
