
-- Function f181; 68 recovered instruction blocks.
F.f181=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f181",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f181 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p141
::p4::
tick(4)
do
do
registers[8] = (registers[2][3])
end

end
goto p135
::p6::
tick(6)
do
do
registers[4] = (registers[3][1])
end

end
::p7::
do
do
registers[5] = (registers[4]["r"])
end

end
::p8::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
goto p186
::p10::
tick(10)
do
do
registers[8] = (registers[3][4])
end

end
::p11::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p104
::p21::
tick(21)
do
do
registers[7] = (registers[3][3])
end

end
::p22::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p130
::p24::
tick(24)
do
do
registers[8] = (registers[4][3])
end

end
::p25::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p138 end
goto p171
::p27::
tick(27)
do
do
registers[6] = (registers[2][1])
end

end
goto p155
::p64::
tick(64)
do
do
registers[6] = (registers[2][1])
end

end
goto p176
::p74::
tick(74)
do
do
registers[7] = (registers[2][2])
end

end
goto p24
::p77::
tick(77)
do
do
registers[7] = (registers[2][2])
end

end
goto p89
::p79::
tick(79)
do
do
registers[4] = new_frame(4)
end

end
::p80::
do
do
registers[5] = (registers[3][1])
end

end
::p81::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p106
::p84::
tick(84)
do
do
registers[5] = new_frame(4)
end

end
::p85::
do
do
registers[6] = (registers[4][1])
end

end
::p86::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p64
::p89::
tick(89)
do
do
registers[8] = (registers[4]["b"])
end

end
::p90::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p4
::p93::
tick(93)
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p94::
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
::p95::
tick(95)
do
do
(registers)[3] = registers[2]
end

end
::p96::
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
return registers[3]
end

end
::p98::
tick(98)
do
do
registers[6] = (registers[2][2])
end

end
goto p21
::p101::
tick(101)
do
do
registers[9] = (registers[2][4])
end

end
goto p132
::p104::
do
do
registers[8] = (registers[2][4])
end

end
goto p93
::p106::
do
do
registers[5] = (registers[2][1])
end

end
goto p159
::p109::
tick(109)
do
do
registers[3] = {
}
end

end
::p110::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p111::
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
::p112::
do
do
a = (3)
z = (0)
q = (registers[a])
for f = 1, top - a do
    q[z + f] = (registers[a + f])
end
end

end
::p113::
do
do
(registers)[4] = environment["type"]
end

end
::p114::
do
do
registers[5] = (registers[3][1])
end

end
::p115::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p116::
branch_taken=false
do
do
if registers[4] ~= "table" then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p6
::p125::
do
do
registers[5] = (registers[4][1])
end

end
::p126::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p84
::p128::
tick(128)
branch_taken=false
do
do
if registers[4] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p163 end
goto p79
::p130::
tick(130)
do
do
registers[7] = (registers[2][3])
end

end
goto p10
::p132::
tick(132)
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p133::
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
return registers[5]
end

end
::p135::
do
do
registers[9] = (registers[4]["a"])
end

end
::p136::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p132 end
goto p101
::p138::
tick(138)
do
do
registers[9] = (registers[4][4])
end

end
::p139::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p173 end
goto p165
::p141::
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
::p142::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p95
::p155::
tick(155)
do
do
registers[7] = (registers[4]["g"])
end

end
::p156::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p77
::p159::
do
do
registers[6] = (registers[3][2])
end

end
::p160::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p98
::p163::
do
do
(registers)[4] = registers[2]
end

end
::p164::
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
::p165::
do
do
registers[9] = (registers[2][4])
end

end
goto p173
::p167::
do
do
(registers)[4] = environment["type"]
end

end
::p168::
do
do
registers[5] = (registers[3][1])
end

end
::p169::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p128
::p171::
do
do
registers[8] = (registers[2][3])
end

end
goto p138
::p173::
do
do
a = (5)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p174::
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
return registers[5]
end

end
::p176::
do
do
registers[7] = (registers[4][2])
end

end
::p177::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p74
::p186::
do
do
registers[5] = new_frame(4)
end

end
::p187::
do
do
registers[6] = (registers[4]["r"])
end

end
::p188::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p155 end
goto p27
end
end
