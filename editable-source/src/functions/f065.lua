
-- Function f65; 127 recovered instruction blocks.
F.f65=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f65",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f65 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p50
::p2::
tick(2)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p3::
do
do
registers[7] = {
}
end

end
::p4::
do
do
(registers)[8] = environment["tostring"]
end

end
::p5::
do
do
(registers)[9] = environment["_G"]
end

end
::p6::
do
do
registers[9] = (registers[9]["tostring"])
end

end
::p7::
do
do
(registers)[10] = registers[7]
end

end
::p8::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p91
::p34::
tick(34)
do
do
registers[8] = (upvalues[1])
end

end
::p35::
do
do
registers[9] = {
}
end

end
::p36::
do
do
(registers)[10] = upvalues[2]["CHECK_12_FAILED"]
end

end
goto p240
::p38::
tick(38)
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
    (registers)[7 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p313 end
goto p2
::p50::
do
do
a = (D.f66)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[1] = x
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
::p51::
do
do
registers[2] = ("\181\155?M\230\022R5\219-\197\223\216<\221I\2395n\141,\2191\226")
end

end
::p52::
do
do
a = (1);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p53::
do
do
(registers)[2] = environment["tostring"]
end

end
::p54::
do
do
(registers)[3] = environment["jit"]
end

end
::p55::
do
do
registers[3] = (registers[3]["flush"])
end

end
::p56::
do
do
(registers)[4] = environment["setfenv"]
end

end
goto p211
::p58::
tick(58)
do
do
registers[11] = (upvalues[1])
end

end
::p59::
do
do
registers[12] = {
}
end

end
::p60::
do
do
(registers)[13] = upvalues[2]["CHECK_12_FAILED"]
end

end
goto p222
::p68::
tick(68)
branch_taken=false
do
do
if registers[11] ~= "function" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p58
::p73::
tick(73)
do
do
(registers)[8] = environment["tostring"]
end

end
::p74::
do
do
(registers)[9] = environment["_G"]
end

end
::p75::
do
do
registers[9] = (registers[9]["tostring"])
end

end
::p76::
do
do
registers[10] = {
}
end

end
::p77::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p78::
branch_taken=false
do
do
if registers[8] ~= "function: NULL" then
    branch_taken=true
end
end

end
if branch_taken then goto p159 end
goto p239
::p84::
tick(84)
do
do
local f = (7)
if not (N) then

else
    for F, u, c in next, N do
        if F >= f then
            u[2] = u
            u[3] = registers[F]
            u[1] = (3)
            N[F] = nil
        end
    end
end
end

end
goto p288
::p86::
tick(86)
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p330
::p91::
branch_taken=false
do
do
if registers[8] == registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p73 end
goto p34
::p112::
tick(112)
do
do
registers[8] = (#registers[8])
end

end
::p113::
do
do
registers[9] = (1)
end

end
::p114::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 7
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p126 end
goto p153
::p117::
tick(117)
do
do
registers[8] = (upvalues[1])
end

end
::p118::
do
do
registers[9] = {
}
end

end
::p119::
do
do
(registers)[10] = upvalues[2]["CHECK_12_FAILED"]
end

end
::p120::
do
do
registers[9]["ban_num"] = (registers[10])
end

end
::p121::
do
do
registers[9]["ban_info"] = "tostring [S-TS][0x01]"
end

end
::p122::
do
do
a = (8)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p244
::p126::
tick(126)
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
    (registers)[7 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p318 end
goto p153
::p142::
do
do
registers[17] = (upvalues[1])
end

end
::p143::
do
do
registers[18] = {
}
end

end
::p144::
do
do
(registers)[19] = upvalues[2]["CHECK_12_FAILED"]
end

end
::p145::
do
do
registers[18]["ban_num"] = (registers[19])
end

end
goto p206
::p147::
tick(147)
branch_taken=false
do
do
if registers[8] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p183 end
goto p226
::p149::
tick(149)
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p150::
branch_taken=false
do
do
if registers[8] ~= "function: NULL" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p244 end
goto p117
::p153::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p154::
do
do
registers[7] = (1)
end

end
::p155::
do
do
(registers)[8] = upvalues[0]["all"]
end

end
::p156::
do
do
registers[8] = (#registers[8])
end

end
goto p220
::p159::
do
do
(registers)[8] = environment["_G"]
end

end
::p160::
do
do
registers[9] = ("tostring")
end

end
::p161::
do
do
a = (D.f72)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[10] = x
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
::p162::
do
do
(registers[8])[registers[9]] = registers[10]
end

end
::p163::
do
do
(registers)[8] = registers[2]
end

end
::p164::
do
do
(registers)[9] = environment["_G"]
end

end
::p165::
do
do
registers[9] = (registers[9]["tostring"])
end

end
::p166::
do
do
registers[10] = {
}
end

end
goto p149
::p168::
tick(168)
do
do
(registers)[11] = registers[6]
end

end
::p169::
do
do
a = (D.f73)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[12] = x
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
::p170::
do
do
a = 11
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
goto p299
::p183::
do
do
(registers)[8] = environment["_G"]
end

end
::p184::
do
do
registers[8]["tostring"] = (registers[2])
end

end
::p185::
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
::p193::
tick(193)
do
do
a = (17)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p84
::p196::
tick(196)
do
do
(registers)[15] = registers[14]
end

end
goto p296
::p206::
do
do
(registers)[19] = upvalues[0]["all_str"]
end

end
::p207::
do
do
(registers)[19] = registers[19][registers[10]]
end

end
::p208::
do
do
registers[19] = registers[19] .. " [JS][0x01]"
end

end
::p209::
do
do
registers[18]["ban_info"] = (registers[19])
end

end
goto p193
::p211::
do
do
(registers)[5] = environment["type"]
end

end
::p212::
do
do
a = (D.f74)
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
::p213::
do
do
registers[7] = (1)
end

end
::p214::
do
do
(registers)[8] = upvalues[0]["all"]
end

end
goto p112
::p216::
tick(216)
do
do
registers[13] = registers[13] .. " [TY][0x01]"
end

end
::p217::
do
do
registers[12]["ban_info"] = (registers[13])
end

end
::p218::
do
do
a = (11)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p126
::p220::
do
do
registers[9] = (1)
end

end
::p221::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 7
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p288 end
::p222::
do
do
registers[12]["ban_num"] = (registers[13])
end

end
::p223::
do
do
(registers)[13] = upvalues[0]["all_str"]
end

end
::p224::
do
do
(registers)[13] = registers[13][registers[10]]
end

end
goto p216
::p226::
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
::p227::
tick(227)
do
do
registers[19] = registers[19] .. " [JS][0x01]"
end

end
::p228::
do
do
registers[18]["ban_info"] = (registers[19])
end

end
::p229::
do
do
a = (17)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p84
::p239::
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
::p240::
do
do
registers[9]["ban_num"] = (registers[10])
end

end
::p241::
do
do
registers[9]["ban_info"] = "tostring [TS][0x01]"
end

end
::p242::
do
do
a = (8)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p73
::p244::
do
do
(registers)[8] = registers[2]
end

end
::p245::
do
do
(registers)[9] = environment["_G"]
end

end
::p246::
do
do
registers[9] = (registers[9]["tostring"])
end

end
::p247::
do
do
registers[10] = {
}
end

end
::p248::
do
do
a = 8
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p147
::p256::
tick(256)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p257::
do
do
registers[7] = (1)
end

end
::p258::
do
do
(registers)[8] = upvalues[0]["lua"]
end

end
::p259::
do
do
registers[8] = (#registers[8])
end

end
::p260::
do
do
registers[9] = (1)
end

end
::p261::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 7
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p38 end
goto p288
::p281::
tick(281)
do
do
registers[17] = (upvalues[1])
end

end
::p282::
do
do
registers[18] = {
}
end

end
::p283::
do
do
(registers)[19] = upvalues[2]["CHECK_12_FAILED"]
end

end
::p284::
do
do
registers[18]["ban_num"] = (registers[19])
end

end
::p285::
do
do
(registers)[19] = upvalues[0]["all_str"]
end

end
::p286::
do
do
(registers)[19] = registers[19][registers[10]]
end

end
goto p227
::p288::
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
    (registers)[7 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p256
::p296::
tick(296)
do
do
(registers)[16] = not registers[11]
end

end
::p297::
branch_taken=false
do
do
if registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p86 end
goto p311
::p299::
do
do
(registers)[13] = registers[6]
end

end
::p300::
do
do
a = (D.f75)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[14] = x
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
::p301::
do
do
a = 13
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
::p302::
do
do
(registers)[15] = registers[12]
end

end
::p303::
branch_taken=false
do
do
if registers[15] then
    branch_taken=true
end
end

end
if branch_taken then goto p296 end
goto p196
::p311::
do
do
(registers)[16] = not registers[13]
end

end
goto p86
::p313::
do
do
(registers)[11] = environment["pcall"]
end

end
::p314::
do
do
a = (D.f76)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[12] = x
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
::p315::
do
do
a = (11)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p316::
do
do
local f = (7)
if not (N) then

else
    for F, u, c in next, N do
        if F >= f then
            u[2] = u
            u[3] = registers[F]
            u[1] = (3)
            N[F] = nil
        end
    end
end
end

end
goto p38
::p318::
do
do
(registers)[11] = registers[5]
end

end
::p319::
do
do
(registers)[12] = upvalues[0]["all"]
end

end
::p320::
do
do
(registers)[12] = registers[12][registers[10]]
end

end
::p321::
do
do
a = (11);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p68
::p330::
branch_taken=false
do
do
if not registers[16] then
    branch_taken=true
end
end

end
if branch_taken then goto p84 end
goto p281
end
end
