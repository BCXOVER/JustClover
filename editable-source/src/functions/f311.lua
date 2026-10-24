
-- Function f311; 59 recovered instruction blocks.
F.f311=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f311",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f311 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p88
::p2::
tick(2)
do
do
(registers)[1] = environment["cvar"]
end

end
::p3::
do
do
registers[1] = (registers[1]["cam_idealdist"])
end

end
::p4::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
goto p109
::p6::
tick(6)
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p146 end
goto p140
::p8::
tick(8)
do
do
registers[3] = (upvalues[2])
end

end
::p9::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p146
::p20::
tick(20)
do
do
(registers)[1] = environment["cvar"]
end

end
::p21::
do
do
registers[1] = (registers[1]["c_maxdistance"])
end

end
::p22::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
::p23::
do
do
registers[3] = (upvalues[3])
end

end
::p24::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p25::
tick(25)
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
::p28::
tick(28)
do
do
registers[3] = (200)
end

end
::p29::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p25
::p42::
tick(42)
do
do
(registers)[1] = environment["cvar"]
end

end
::p43::
do
do
registers[1] = (registers[1]["c_maxdistance"])
end

end
::p44::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
goto p28
::p54::
tick(54)
do
do
(registers)[1] = environment["cvar"]
end

end
::p55::
do
do
a = registers
z = (1)
q = (registers)
end

end
::p56::
do
do
m = 1
q = q[m]
end

end
::p57::
do
do
m = ("cam_idealdist")
q = q[m]
end

end
::p58::
do
do
(a)[z] = q
end

end
::p59::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
::p60::
do
do
registers[3] = (upvalues[1])
end

end
::p61::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p62::
do
do
(registers)[1] = environment["cvar"]
end

end
::p63::
do
do
registers[1] = (registers[1]["c_mindistance"])
end

end
goto p6
::p73::
tick(73)
do
do
(registers)[1] = environment["cvar"]
end

end
::p74::
do
do
a = registers
z = (1)
q = (registers)
end

end
::p75::
do
do
m = 1
q = q[m]
end

end
::p76::
do
do
m = ("c_maxdistance")
q = q[m]
end

end
::p77::
do
do
(a)[z] = q
end

end
::p78::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p42
::p88::
do
do
(registers)[1] = environment["cvar"]
end

end
::p89::
do
do
registers[1] = (registers[1]["cam_idealdist"])
end

end
::p90::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p150 end
goto p139
::p109::
do
do
(registers)[3] = upvalues[0]["thirdperson_distance"]
end

end
::p110::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p111::
do
do
a = 3
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
::p112::
do
do
a = 1;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p113::
do
do
(registers)[1] = environment["cvar"]
end

end
::p114::
do
do
registers[1] = (registers[1]["c_mindistance"])
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
if branch_taken then goto p73 end
goto p155
::p125::
tick(125)
do
do
registers[3] = (10)
end

end
::p126::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p73
::p139::
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
::p140::
do
do
(registers)[1] = environment["cvar"]
end

end
::p141::
do
do
registers[1] = (registers[1]["c_mindistance"])
end

end
::p142::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
goto p8
::p144::
tick(144)
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p54 end
goto p2
::p146::
do
do
(registers)[1] = environment["cvar"]
end

end
::p147::
do
do
registers[1] = (registers[1]["c_maxdistance"])
end

end
::p148::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p25 end
goto p20
::p150::
do
do
(registers)[1] = upvalues[0]["thirdperson"]
end

end
::p151::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p152::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p144
::p155::
do
do
(registers)[1] = environment["cvar"]
end

end
::p156::
do
do
registers[1] = (registers[1]["c_mindistance"])
end

end
::p157::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
goto p125
end
end
