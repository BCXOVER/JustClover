
-- Function f486; 65 recovered instruction blocks.
F.f486=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f486",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f486 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p113
::p25::
tick(25)
do
do
registers[5] = (registers[5]["viewmodel_offset_y"])
end

end
::p26::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p27::
do
do
a = (registers)
z = 7
end

end
::p28::
do
do
q = registers
m = 3
q = (q[m])
end

end
::p29::
do
do
(a)[z] = q
end

end
::p30::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p31::
do
do
(registers)[5] = environment["cvar"]
end

end
::p32::
do
do
registers[5] = (registers[5]["viewmodel_offset_z"])
end

end
goto p47
::p36::
tick(36)
do
do
a = 2
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
::p37::
do
do
a = (registers)
end

end
::p38::
do
do
z = 5
end

end
::p39::
do
do
q = (upvalues)
end

end
::p40::
do
do
m = 3
q = (q[m])
a[z] = q
end

end
::p41::
do
do
(registers)[6] = registers[1]
end

end
::p42::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p43::
do
do
(registers)[5] = environment["cvar"]
end

end
::p44::
do
do
registers[5] = (registers[5]["viewmodel_fov"])
end

end
::p45::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
goto p71
::p47::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p48::
do
do
(registers)[7] = registers[4]
end

end
::p49::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p131
::p51::
tick(51)
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p131 end
goto p129
::p54::
tick(54)
do
do
a = (registers)
end

end
::p55::
do
do
z = (4)
q = (environment)
end

end
::p56::
do
do
m = "cvar"
q = (q[m])
a[z] = q
end

end
::p57::
do
do
registers[4] = (registers[4]["viewmodel_offset_z"])
end

end
::p58::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p152 end
goto p128
::p71::
do
do
registers[7] = (upvalues[4])
end

end
::p72::
do
do
(registers)[8] = upvalues[0]["viewmodel_fov"]
end

end
::p73::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p74::
do
do
registers[7] = (registers[7] * 0.1)
end

end
::p75::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p51
::p77::
tick(77)
do
do
(registers)[2] = environment["cvar"]
end

end
::p78::
do
do
registers[2] = (registers[2]["viewmodel_offset_x"])
end

end
::p79::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p140
::p81::
tick(81)
do
do
a = (upvalues[5]);
(registers)[1] = a[2][a[1]]
end

end
::p82::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p123
::p103::
tick(103)
do
do
(registers)[5] = environment["cvar"]
end

end
::p104::
do
do
registers[5] = (registers[5]["viewmodel_offset_x"])
end

end
::p105::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_float"]
end

end
::p106::
do
do
(registers)[7] = registers[2]
end

end
::p107::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p108::
do
do
(registers)[5] = environment["cvar"]
end

end
goto p25
::p113::
do
do
(registers)[1] = environment["cvar"]
end

end
::p114::
do
do
registers[1] = (registers[1]["viewmodel_fov"])
end

end
::p115::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p77
::p117::
tick(117)
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
::p118::
tick(118)
do
do
registers[1] = (upvalues[1])
end

end
::p119::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p120::
do
do
registers[2] = (upvalues[2])
end

end
::p121::
do
do
(registers)[3] = registers[1]
end

end
goto p36
::p123::
do
do
registers[1] = (upvalues[6])
end

end
::p124::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p125::
do
do
a = (upvalues[5])
a[2][a[1]] = (false)
end

end
goto p117
::p128::
tick(128)
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
::p129::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p131 end
goto p144
::p131::
tick(131)
do
do
a = (upvalues[5])
a[2][a[1]] = (true)
end

end
goto p117
::p140::
do
do
(registers)[3] = environment["cvar"]
end

end
::p141::
do
do
registers[3] = (registers[3]["viewmodel_offset_y"])
end

end
::p142::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p54
::p144::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p131 end
goto p103
::p152::
do
do
(registers)[1] = upvalues[0]["viewmodel"]
end

end
::p153::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p154::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p155::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p118
end
end
