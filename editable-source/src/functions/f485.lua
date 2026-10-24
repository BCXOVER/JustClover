
-- Function f485; 138 recovered instruction blocks.
F.f485=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f485",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f485 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p181
::p2::
tick(2)
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p49
::p4::
tick(4)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p5::
do
do
registers[3] = (registers[3] == "1")
end

end
::p6::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p158 end
goto p256
::p15::
tick(15)
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
::p16::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p17::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p234 end
goto p101
::p19::
tick(19)
do
do
registers[1] = (upvalues[8])
end

end
::p20::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p300
::p24::
tick(24)
do
do
registers[3] = (68)
end

end
goto p62
::p26::
tick(26)
do
do
(registers)[1] = environment["cvar"]
end

end
::p27::
do
do
registers[1] = (registers[1]["viewmodel_offset_y"])
end

end
::p28::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
goto p294
::p30::
tick(30)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p229 end
goto p109
::p49::
tick(49)
do
do
(registers)[1] = environment["cvar"]
end

end
::p50::
do
do
registers[1] = (registers[1]["viewmodel_offset_y"])
end

end
::p51::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p250 end
goto p26
::p53::
tick(53)
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
::p54::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p55::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
goto p187
::p58::
tick(58)
do
do
registers[1] = (upvalues[6])
end

end
::p59::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p60::
do
do
registers[3] = (upvalues[4])
end

end
goto p111
::p62::
tick(62)
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p323
::p64::
tick(64)
do
do
(registers)[1] = environment["cvar"]
end

end
::p65::
do
do
a = registers
z = (1)
q = (registers)
end

end
::p66::
do
do
m = 1
q = q[m]
end

end
::p67::
do
do
m = ("viewmodel_fov")
q = q[m]
end

end
::p68::
do
do
(a)[z] = q
end

end
::p69::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p70::
do
do
(registers)[3] = environment["tonumber"]
end

end
goto p308
::p95::
tick(95)
do
do
registers[1] = (upvalues[3])
end

end
::p96::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p97::
do
do
registers[3] = (upvalues[4])
end

end
::p98::
do
do
registers[4] = (upvalues[3])
end

end
::p99::
do
do
registers[5] = (0)
end

end
goto p272
::p101::
do
do
(registers)[3] = environment["cvar"]
end

end
::p102::
do
do
registers[3] = (registers[3]["viewmodel_offset_z"])
end

end
::p103::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
::p104::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p234
::p109::
do
do
registers[3] = (0)
end

end
goto p229
::p111::
do
do
registers[4] = (upvalues[6])
end

end
::p112::
do
do
registers[5] = (0)
end

end
::p113::
do
do
a = 3
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
::p114::
do
do
a = 1;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p236
::p116::
tick(116)
do
do
registers[1] = (upvalues[5])
end

end
::p117::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p231 end
goto p194
::p125::
tick(125)
do
do
registers[3] = (0)
end

end
goto p218
::p127::
tick(127)
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p204
::p136::
tick(136)
do
do
(registers)[1] = environment["cvar"]
end

end
::p137::
do
do
registers[1] = (registers[1]["viewmodel_fov"])
end

end
::p138::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p323 end
goto p64
::p141::
tick(141)
do
do
(registers)[1] = environment["cvar"]
end

end
::p142::
do
do
registers[1] = (registers[1]["viewmodel_offset_x"])
end

end
::p143::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p144::
do
do
(registers)[3] = environment["tonumber"]
end

end
::p145::
do
do
(registers)[4] = environment["cvar"]
end

end
::p146::
do
do
registers[4] = (registers[4]["viewmodel_offset_x"])
end

end
::p147::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p148::
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
::p149::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p150::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p192 end
goto p282
::p158::
tick(158)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p218 end
goto p125
::p161::
tick(161)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p24
::p176::
tick(176)
do
do
(registers)[3] = environment["cvar"]
end

end
::p177::
do
do
registers[3] = (registers[3]["viewmodel_offset_y"])
end

end
::p178::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
::p179::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p30
::p181::
do
do
registers[1] = (upvalues[0])
end

end
::p182::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p183::
do
do
a = (upvalues[1])
a[2][a[1]] = (0)
end

end
::p184::
do
do
a = (upvalues[2]);
(registers)[1] = a[2][a[1]]
end

end
::p185::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p241 end
goto p312
::p187::
do
do
(registers)[3] = environment["cvar"]
end

end
::p188::
do
do
registers[3] = (registers[3]["viewmodel_fov"])
end

end
::p189::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
::p190::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p161
::p192::
tick(192)
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p2 end
goto p254
::p194::
do
do
registers[1] = (upvalues[5])
end

end
::p195::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p196::
do
do
registers[3] = (upvalues[4])
end

end
goto p245
::p204::
tick(204)
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
::p216::
tick(216)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p192
::p218::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p219::
do
do
a = (upvalues[7])
a[2][a[1]] = (false)
end

end
goto p136
::p221::
tick(221)
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p222::
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
::p223::
do
do
a = 3
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p224::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p30 end
goto p176
::p226::
tick(226)
do
do
registers[3] = (0)
end

end
goto p127
::p229::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p250
::p231::
tick(231)
do
do
registers[1] = (upvalues[6])
end

end
::p232::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p236 end
goto p58
::p234::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p226
::p236::
do
do
a = (upvalues[2])
a[2][a[1]] = (false)
end

end
::p241::
do
do
a = (upvalues[7]);
(registers)[1] = a[2][a[1]]
end

end
::p242::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p19
::p245::
do
do
registers[4] = (upvalues[5])
end

end
::p246::
do
do
registers[5] = (0)
end

end
::p247::
do
do
a = 3
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
::p248::
do
do
a = 1;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p231
::p250::
do
do
(registers)[1] = environment["cvar"]
end

end
::p251::
do
do
registers[1] = (registers[1]["viewmodel_offset_z"])
end

end
::p252::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p204 end
goto p258
::p254::
do
do
registers[3] = (0)
end

end
goto p2
::p256::
do
do
registers[3] = (1)
end

end
goto p158
::p258::
do
do
(registers)[1] = environment["cvar"]
end

end
::p259::
do
do
registers[1] = (registers[1]["viewmodel_offset_z"])
end

end
::p260::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_float"]
end

end
::p261::
do
do
(registers)[3] = environment["tonumber"]
end

end
::p262::
do
do
(registers)[4] = environment["cvar"]
end

end
::p263::
do
do
registers[4] = (registers[4]["viewmodel_offset_z"])
end

end
::p264::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
goto p15
::p272::
do
do
a = 3
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
::p273::
do
do
a = 1;
(registers[a])(unpack_range(top, registers, a + 1))
top = a - 1
end

end
goto p116
::p282::
do
do
a = (registers)
end

end
::p283::
do
do
z = (3)
q = (environment)
end

end
::p284::
do
do
m = "cvar"
q = (q[m])
a[z] = q
end

end
::p285::
do
do
registers[3] = (registers[3]["viewmodel_offset_x"])
end

end
::p286::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_float"]
end

end
goto p216
::p294::
do
do
(registers)[3] = environment["tonumber"]
end

end
::p295::
do
do
(registers)[4] = environment["cvar"]
end

end
::p296::
do
do
registers[4] = (registers[4]["viewmodel_offset_y"])
end

end
goto p221
::p300::
do
do
a = (registers)
end

end
::p301::
do
do
z = 1
end

end
::p302::
do
do
q = (upvalues)
end

end
::p303::
do
do
m = 8
q = (q[m])
a[z] = q
end

end
::p304::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
::p305::
do
do
registers[3] = (upvalues[8])
end

end
::p306::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
goto p4
::p308::
do
do
(registers)[4] = environment["cvar"]
end

end
::p309::
do
do
registers[4] = (registers[4]["viewmodel_fov"])
end

end
::p310::
do
do
a = (4)
z = registers[4]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
goto p53
::p312::
do
do
registers[1] = (upvalues[3])
end

end
::p313::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p95
::p323::
do
do
(registers)[1] = environment["cvar"]
end

end
::p324::
do
do
registers[1] = (registers[1]["viewmodel_offset_x"])
end

end
::p325::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p49 end
goto p141
end
end
