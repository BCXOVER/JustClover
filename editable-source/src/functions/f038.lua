
-- Function f38; 42 recovered instruction blocks.
F.f38=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f38",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f38 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p47
::p4::
tick(4)
do
do
registers[5] = ("Text passed to hmac_sha256 should be a string")
end

end
::p5::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p6::
do
do
registers[3] = (#registers[1])
end

end
::p7::
do
do
(registers)[4] = upvalues[0]["blocksize"]
end

end
::p8::
branch_taken=false
do
do
if not (registers[4] < registers[3]) then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
::p20::
do
do
(registers)[3] = upvalues[0]["sha256_binary"]
end

end
::p21::
do
do
a = (registers)
z = 4
end

end
::p22::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p23::
do
do
(a)[z] = q
end

end
::p24::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p25::
do
do
(registers)[1] = registers[3]
end

end
goto p52
::p41::
tick(41)
do
do
(registers)[3] = environment["assert"]
end

end
::p42::
do
do
(registers)[4] = environment["type"]
end

end
::p43::
do
do
(registers)[5] = registers[2]
end

end
::p44::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p45::
do
do
registers[4] = (registers[4] == "string")
end

end
goto p4
::p47::
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
::p48::
do
do
(registers)[3] = environment["assert"]
end

end
::p49::
do
do
(registers)[4] = environment["type"]
end

end
goto p73
::p52::
do
do
registers[3] = (upvalues[1])
end

end
::p53::
do
do
a = (registers)
z = 4
end

end
::p54::
do
do
q = registers
m = 1
q = (q[m])
end

end
::p55::
do
do
(a)[z] = q
end

end
::p56::
do
do
registers[5] = (54)
end

end
goto p108
::p73::
do
do
(registers)[5] = registers[1]
end

end
::p74::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p75::
do
do
registers[4] = (registers[4] == "string")
end

end
::p76::
do
do
registers[5] = ("Key passed to hmac_sha256 should be a string")
end

end
::p77::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p41
::p80::
tick(80)
do
do
(registers)[5] = upvalues[0]["sha256"]
end

end
::p81::
do
do
(registers)[6] = upvalues[0]["sha256_binary"]
end

end
::p82::
do
do
registers[7] = (registers[3] .. registers[2])
end

end
::p83::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p84::
do
do
registers[6] = (registers[4] .. registers[6])
end

end
::p85::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (5)
return registers[a](registers[a + 1])
end

end
::p108::
do
do
(registers)[6] = upvalues[0]["blocksize"]
end

end
::p109::
do
do
a = 3
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p110::
do
do
registers[4] = (upvalues[1])
end

end
::p111::
do
do
(registers)[5] = registers[1]
end

end
::p112::
do
do
registers[6] = (92)
end

end
::p113::
do
do
(registers)[7] = upvalues[0]["blocksize"]
end

end
::p114::
do
do
a = 4
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p80
end
end
