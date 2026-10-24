
-- Function f190; 57 recovered instruction blocks.
F.f190=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f190",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f190 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p47
::p2::
tick(2)
branch_taken=false
do
do
if registers[1] == registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p156 end
goto p35
::p12::
tick(12)
do
do
(registers)[5] = upvalues[1]["config"]
end

end
::p13::
do
do
registers[5] = (registers[5]["name"])
end

end
::p14::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
goto p24
::p16::
tick(16)
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["update_list"]
end

end
::p17::
do
do
a = (6)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p18::
do
do
(registers)[6] = environment["type"]
end

end
::p19::
do
do
(registers)[7] = registers[5]
end

end
::p20::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p120
::p24::
do
do
registers[7] = ("")
end

end
::p25::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p149
::p35::
do
do
registers[5] = (upvalues[3])
end

end
::p36::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["create_config"]
end

end
::p37::
do
do
(registers)[7] = registers[1]
end

end
::p38::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p39::
do
do
registers[6] = (upvalues[3])
end

end
goto p16
::p44::
tick(44)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p65 end
goto p118
::p47::
do
do
registers[1] = (upvalues[0])
end

end
::p48::
do
do
(registers)[2] = upvalues[1]["config"]
end

end
::p49::
do
do
registers[2] = (registers[2]["name"])
end

end
::p50::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p51::
do
do
a = 2
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
::p52::
do
do
a = 1
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p53::
do
do
registers[2] = (upvalues[2])
end

end
goto p158
::p65::
tick(65)
branch_taken=false
do
do
if registers[1] ~= "" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p156 end
goto p2
::p95::
tick(95)
do
do
(registers)[6] = upvalues[1]["config"]
end

end
::p96::
do
do
registers[6] = (registers[6]["list"])
end

end
::p97::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
goto p102
::p99::
tick(99)
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["update_list"]
end

end
::p100::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p101::
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
::p102::
do
do
(registers)[8] = (registers[5] - 1)
end

end
::p103::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p137
::p118::
do
do
(registers)[4] = nil
end

end
goto p65
::p120::
branch_taken=false
do
do
if registers[6] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p137 end
goto p95
::p125::
tick(125)
do
do
registers[4] = (registers[3][1])
end

end
goto p44
::p137::
do
do
(registers)[6] = upvalues[1]["config"]
end

end
::p138::
do
do
registers[6] = (registers[6]["name"])
end

end
::p139::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["set"]
end

end
::p140::
do
do
registers[8] = ("")
end

end
::p141::
do
do
a = 6;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p149
::p143::
tick(143)
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p144::
do
do
registers[4] = (registers[4] == "table")
end

end
::p145::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p125
::p149::
tick(149)
do
do
registers[5] = (upvalues[3])
end

end
::p150::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["save_config"]
end

end
::p151::
do
do
registers[7] = (upvalues[2])
end

end
::p152::
do
do
a = 7
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
::p153::
do
do
a = 5;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
::p154::
do
do
registers[5] = (upvalues[3])
end

end
goto p99
::p156::
branch_taken=false
do
do
if registers[1] ~= "" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p149 end
goto p12
::p158::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p159::
do
do
(registers)[3] = upvalues[3]["configs_db"]
end

end
::p160::
do
do
registers[3] = (registers[3]["cfg_list"])
end

end
::p161::
do
do
(registers)[3] = registers[3][registers[2]]
end

end
::p162::
do
do
(registers)[4] = environment["type"]
end

end
::p163::
do
do
(registers)[5] = registers[3]
end

end
goto p143
end
end
