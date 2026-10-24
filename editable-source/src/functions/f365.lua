
-- Function f365; 106 recovered instruction blocks.
F.f365=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f365",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f365 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p275
::p3::
tick(3)
do
do
(registers)[8] = registers[5]
end

end
::p4::
do
do
a = 8
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
::p5::
do
do
(registers)[11] = registers[4]
end

end
::p6::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p239
::p8::
tick(8)
do
do
(registers)[15] = registers[10]
end

end
::p9::
do
do
a = 13
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
::p10::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p11::
do
do
registers[13] = (upvalues[5])
end

end
::p12::
do
do
registers[14] = -registers[12]
end

end
::p13::
do
do
(registers)[15] = registers[12]
end

end
::p14::
do
do
a = upvalues[3];
(registers)[16] = (a[2][a[1]]["current"])
end

end
goto p183
::p16::
tick(16)
branch_taken=false
do
do
if registers[7] ~= "Spin" then
    branch_taken=true
end
end

end
if branch_taken then goto p39 end
goto p3
::p30::
tick(30)
do
do
(registers)[11] = registers[8]
end

end
goto p62
::p39::
branch_taken=false
do
do
if registers[7] ~= "Meta" then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p118
::p41::
tick(41)
do
do
(registers)[8] = registers[5]
end

end
::p42::
do
do
a = 8
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
::p43::
do
do
(registers)[11] = registers[4]
end

end
goto p174
::p47::
tick(47)
do
do
a = (D.f366)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[6] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p48::
do
do
registers[7] = (registers[2]["type"])
end

end
::p49::
do
do
a = (7)
z = registers[7]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p91
::p52::
tick(52)
do
do
a = (14)
z = 4
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p60::
tick(60)
do
do
(registers)[13] = registers[12]
end

end
goto p266
::p62::
tick(62)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p95
::p64::
tick(64)
branch_taken=false
do
do
if registers[7] ~= "Skitter" then
    branch_taken=true
end
end

end
if branch_taken then goto p237 end
goto p104
::p66::
do
do
registers[8] = (0)
end

end
::p67::
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
::p68::
tick(68)
do
do
registers[4] = (0)
end

end
::p69::
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
::p76::
tick(76)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p229 end
goto p270
::p78::
tick(78)
do
do
a = (4)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p79::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p80::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p68
::p82::
tick(82)
do
do
registers[13] = -registers[12]
end

end
goto p272
::p85::
tick(85)
do
do
(registers)[12] = upvalues[0][161]
end

end
::p86::
do
do
(registers)[13] = registers[11]
end

end
::p87::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p88::
do
do
(registers)[13] = registers[4]
end

end
goto p227
::p91::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p92::
branch_taken=false
do
do
if registers[7] ~= "Off" then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p132
::p95::
do
do
(registers)[11] = registers[9]
end

end
goto p85
::p97::
tick(97)
branch_taken=false
do
do
if registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p129
::p104::
do
do
registers[8] = (registers[1]["inverts"])
end

end
::p105::
do
do
registers[8] = registers[8] % 3
end

end
::p106::
do
do
registers[9] = (registers[2]["global"])
end

end
::p107::
do
do
a = (9)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p108::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p171
::p110::
tick(110)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p121 end
goto p241
::p112::
tick(112)
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p139 end
goto p187
::p114::
tick(114)
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p78
::p116::
tick(116)
do
do
(registers)[11] = registers[8]
end

end
goto p112
::p118::
do
do
a = (8)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_hidden_meta_modifier_add"]
end

end
::p119::
do
do
(registers)[10] = registers[2]
end

end
::p120::
do
do
a = (8)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p121::
tick(121)
do
do
(registers)[12] = upvalues[0][161]
end

end
::p122::
do
do
(registers)[13] = registers[6]
end

end
::p123::
do
do
(registers)[14] = registers[11]
end

end
goto p212
::p127::
tick(127)
do
do
registers[10] = (0)
end

end
goto p76
::p129::
do
do
registers[10] = (registers[8] == 1)
end

end
::p130::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p76 end
goto p127
::p132::
do
do
registers[8] = (0)
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
return registers[8]
end

end
::p134::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["is_left_side"]
end

end
::p135::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p136::
do
do
a = (D.f367)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[5] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
goto p47
::p139::
tick(139)
do
do
(registers)[12] = upvalues[0][161]
end

end
::p140::
do
do
(registers)[13] = registers[6]
end

end
::p141::
do
do
(registers)[14] = registers[11]
end

end
goto p8
::p171::
do
do
registers[10] = (registers[8] == 0)
end

end
::p172::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p243
::p174::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p30
::p183::
do
do
(registers)[16] = upvalues[2][registers[16]]
end

end
::p184::
do
do
(registers)[17] = registers[4]
end

end
::p185::
do
do
registers[18] = 41 + registers[10]
end

end
::p186::
do
do
a = (13)
z = 6
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p187::
do
do
(registers)[11] = registers[9]
end

end
goto p139
::p210::
tick(210)
do
do
a = (14)
z = 3
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p212::
do
do
(registers)[15] = registers[10]
end

end
::p213::
do
do
a = 13
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
::p214::
do
do
a = 12
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p215::
do
do
(registers)[13] = upvalues[0][26]
end

end
::p216::
do
do
top = 13;
(registers)[top] = registers[top]()
end

end
::p217::
do
do
registers[13] = (registers[13] * 3)
end

end
::p218::
do
do
registers[13] = registers[13] % 1
end

end
goto p222
::p220::
tick(220)
branch_taken=false
do
do
if registers[7] ~= "Random" then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p260
::p222::
do
do
(registers)[14] = upvalues[4]["lerp"]
end

end
::p223::
do
do
registers[15] = -registers[12]
end

end
::p224::
do
do
(registers)[16] = registers[12]
end

end
::p225::
do
do
(registers)[17] = registers[13]
end

end
goto p52
::p227::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p272 end
goto p82
::p229::
tick(229)
do
do
(registers)[11] = registers[10]
end

end
::p230::
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
return registers[11]
end

end
::p237::
branch_taken=false
do
do
if registers[7] ~= "Center" then
    branch_taken=true
end
end

end
if branch_taken then goto p220 end
goto p41
::p239::
do
do
(registers)[11] = registers[8]
end

end
goto p110
::p241::
do
do
(registers)[11] = registers[9]
end

end
goto p121
::p243::
do
do
registers[10] = -registers[9]
end

end
goto p97
::p260::
do
do
(registers)[8] = registers[5]
end

end
::p261::
do
do
a = 8
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
::p262::
do
do
(registers)[11] = registers[4]
end

end
::p263::
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p112 end
goto p116
::p266::
tick(266)
do
do
(registers)[14] = registers[6]
end

end
::p267::
do
do
(registers)[15] = registers[13]
end

end
::p268::
do
do
(registers)[16] = registers[10]
end

end
goto p210
::p270::
do
do
(registers)[10] = registers[9]
end

end
goto p229
::p272::
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p266 end
goto p60
::p275::
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p276::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p114
end
end
