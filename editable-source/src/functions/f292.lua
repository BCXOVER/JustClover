
-- Function f292; 135 recovered instruction blocks.
F.f292=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f292",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f292 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p113
::p10::
tick(10)
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p11::
branch_taken=false
do
do
if registers[8] ~= "number" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p220 end
goto p173
::p13::
tick(13)
do
do
(registers)[25] = environment["type"]
end

end
::p14::
do
do
(registers)[26] = registers[23]
end

end
::p15::
do
do
a = (25);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p16::
do
do
registers[25] = (registers[25] == "number")
end

end
::p17::
branch_taken=false
do
do
if not registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p273
::p19::
tick(19)
do
do
(registers)[14] = upvalues[1]["freestand_cache"]
end

end
::p20::
do
do
registers[15] = {
}
end

end
::p21::
do
do
registers[15]["tick"] = (registers[2])
end

end
::p22::
do
do
registers[15]["side"] = (registers[13])
end

end
::p23::
do
do
(registers[14])[registers[1]] = registers[15]
end

end
::p24::
do
do
(registers)[14] = registers[13]
end

end
::p25::
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
return registers[14]
end

end
::p26::
tick(26)
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p212 end
goto p47
::p35::
tick(35)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p124 end
goto p80
::p38::
tick(38)
branch_taken=false
do
do
if registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p285 end
goto p256
::p42::
tick(42)
do
do
(registers)[30] = registers[22]
end

end
::p43::
do
do
(registers)[31] = registers[7]
end

end
::p44::
do
do
a = 24
top = a + 8 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p13
::p47::
do
do
registers[4] = (registers[3]["tick"])
end

end
::p48::
branch_taken=false
do
do
if registers[4] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p212 end
goto p176
::p52::
tick(52)
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
return registers[9]
end

end
::p61::
tick(61)
do
do
(registers)[22] = registers[6] + registers[22]
end

end
::p62::
do
do
(registers)[23] = upvalues[0][78]
end

end
::p63::
do
do
(registers)[24] = registers[4]
end

end
::p64::
do
do
(registers)[25] = registers[5]
end

end
goto p235
::p67::
tick(67)
do
do
registers[11] = (0)
end

end
::p68::
do
do
registers[12] = (0)
end

end
::p69::
do
do
registers[13] = (30)
end

end
::p70::
do
do
registers[14] = (120)
end

end
goto p122
::p72::
tick(72)
do
do
(registers)[19] = upvalues[0][148]
end

end
::p73::
do
do
(registers)[20] = registers[17]
end

end
::p74::
do
do
a = (19);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p75::
do
do
(registers)[19] = 256 * registers[19]
end

end
::p76::
do
do
(registers)[19] = registers[5] + registers[19]
end

end
::p77::
do
do
(registers)[20] = upvalues[0][163]
end

end
::p78::
do
do
(registers)[21] = registers[17]
end

end
goto p230
::p80::
do
do
registers[5] = (1)
end

end
goto p124
::p85::
tick(85)
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p259 end
goto p161
::p87::
tick(87)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[13 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p251
::p89::
tick(89)
do
do
registers[9] = (registers[3] ~= registers[0])
end

end
::p90::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p166 end
goto p270
::p92::
tick(92)
do
do
registers[13] = (-1)
end

end
goto p19
::p94::
tick(94)
do
do
(registers)[5] = upvalues[0][50]
end

end
::p95::
do
do
(registers)[6] = registers[4]
end

end
::p96::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p97::
branch_taken=false
do
do
if registers[5] ~= true then

else
    branch_taken=true
end
end

end
if branch_taken then goto p225 end
goto p186
::p99::
tick(99)
do
do
(registers)[22] = registers[18]
end

end
::p100::
do
do
a = (21);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p101::
do
do
(registers)[21] = 256 * registers[21]
end

end
::p102::
do
do
(registers)[21] = registers[5] + registers[21]
end

end
::p103::
do
do
(registers)[22] = upvalues[0][163]
end

end
goto p266
::p113::
do
do
a = {
    ...,
}
for f = 1, 1, 1 do
    registers[f] = (a[f])
end
end

end
::p114::
do
do
(registers)[2] = upvalues[0][23]
end

end
::p115::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
::p116::
do
do
(registers)[3] = upvalues[1]["freestand_cache"]
end

end
::p117::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
goto p26
::p120::
tick(120)
do
do
registers[25] = (0)
end

end
goto p125
::p122::
do
do
registers[15] = (30)
end

end
::p123::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 13
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p87 end
::p124::
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
::p125::
tick(125)
do
do
(registers)[12] = registers[12] + registers[25]
end

end
goto p87
::p128::
do
do
(registers)[17] = upvalues[0][171]
end

end
::p129::
do
do
registers[18] = (registers[10] - registers[16])
end

end
::p130::
do
do
a = (17);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p275
::p161::
do
do
registers[8] = (1)
end

end
goto p259
::p163::
tick(163)
do
do
(registers)[25] = registers[24]
end

end
goto p168
::p166::
tick(166)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p52 end
goto p294
::p168::
tick(168)
branch_taken=false
do
do
if registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
goto p120
::p171::
tick(171)
do
do
registers[13] = (1)
end

end
goto p178
::p173::
do
do
registers[8] = (registers[3] ~= registers[0])
end

end
::p174::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p292
::p176::
do
do
registers[4] = (registers[3]["side"])
end

end
::p177::
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
::p178::
tick(178)
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p92
::p180::
tick(180)
do
do
(registers)[30] = registers[7]
end

end
::p181::
do
do
a = 23
top = a + 8 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p182::
do
do
(registers)[24] = upvalues[0][78]
end

end
::p183::
do
do
(registers)[25] = registers[4]
end

end
::p184::
do
do
(registers)[26] = registers[5]
end

end
goto p216
::p186::
tick(186)
do
do
registers[5] = (registers[3] ~= registers[0])
end

end
::p187::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p240
::p212::
do
do
(registers)[4] = upvalues[0][32]
end

end
::p213::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p214::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p186 end
goto p94
::p216::
do
do
(registers)[27] = registers[6]
end

end
::p217::
do
do
(registers)[28] = registers[7]
end

end
::p218::
do
do
(registers)[29] = registers[21]
end

end
goto p42
::p220::
do
do
registers[8] = (upvalues[2])
end

end
::p221::
do
do
(registers)[9] = registers[1]
end

end
::p222::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p223::
branch_taken=false
do
do
if registers[8] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p242 end
goto p89
::p225::
do
do
(registers)[5] = upvalues[0][91]
end

end
::p226::
do
do
a = 5
z = (1)
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
::p227::
do
do
(registers)[8] = environment["type"]
end

end
::p228::
do
do
(registers)[9] = registers[5]
end

end
goto p10
::p230::
do
do
a = (20);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p231::
do
do
(registers)[20] = 256 * registers[20]
end

end
::p232::
do
do
(registers)[20] = registers[6] + registers[20]
end

end
::p233::
do
do
(registers)[21] = upvalues[0][148]
end

end
goto p99
::p235::
do
do
(registers)[26] = registers[6]
end

end
::p236::
do
do
(registers)[27] = registers[7]
end

end
::p237::
do
do
(registers)[28] = registers[19]
end

end
::p238::
do
do
(registers)[29] = registers[20]
end

end
goto p180
::p240::
do
do
registers[5] = (registers[3]["side"])
end

end
goto p35
::p242::
do
do
registers[9] = (upvalues[3])
end

end
::p243::
do
do
(registers)[10] = registers[5]
end

end
::p244::
do
do
(registers)[11] = registers[6]
end

end
::p245::
do
do
(registers)[12] = registers[7]
end

end
::p246::
do
do
a = 9
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p247::
do
do
registers[9] = (registers[8] - registers[9])
end

end
::p248::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["angles"]
end

end
::p249::
do
do
a = 9
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
goto p67
::p251::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p252::
do
do
(registers)[13] = registers[11] < registers[12]
end

end
::p253::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p178 end
goto p171
::p256::
do
do
registers[25] = (0)
end

end
goto p285
::p259::
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
return registers[8]
end

end
::p266::
do
do
(registers)[23] = registers[18]
end

end
::p267::
do
do
a = (22);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p268::
do
do
(registers)[22] = 256 * registers[22]
end

end
goto p61
::p270::
do
do
registers[9] = (registers[3]["side"])
end

end
goto p166
::p273::
do
do
(registers)[25] = registers[23]
end

end
goto p38
::p275::
do
do
(registers)[18] = upvalues[0][171]
end

end
::p276::
do
do
(registers)[19] = registers[10] + registers[16]
end

end
::p277::
do
do
a = (18);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p72
::p285::
do
do
(registers)[11] = registers[11] + registers[25]
end

end
::p286::
do
do
(registers)[25] = environment["type"]
end

end
::p287::
do
do
(registers)[26] = registers[24]
end

end
::p288::
do
do
a = (25);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p289::
do
do
registers[25] = (registers[25] == "number")
end

end
::p290::
branch_taken=false
do
do
if not registers[25] then
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p163
::p292::
do
do
registers[8] = (registers[3]["side"])
end

end
goto p85
::p294::
do
do
registers[9] = (1)
end

end
goto p52
end
end
