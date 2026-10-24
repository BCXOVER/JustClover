
-- Function f29; 122 recovered instruction blocks.
F.f29=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f29",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f29 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p18
::p18::
tick(18)
do
do
registers[1] = {
}
end

end
::p19::
do
do
registers[2] = (0)
end

end
::p20::
do
do
registers[3] = (255)
end

end
::p21::
do
do
registers[4] = (1)
end

end
::p23::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 2
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p150 end
::p24::
tick(24)
do
do
registers[65] = (1747873779)
end

end
::p25::
do
do
registers[66] = (1955562222)
end

end
::p26::
do
do
registers[67] = (2024104815)
end

end
goto p200
::p29::
tick(29)
do
do
registers[73] = (3329325298)
end

end
::p30::
do
do
a = (9)
z = 0
q = registers[a]
for f = 1, 64, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p31::
do
do
registers[10] = {
}
end

end
goto p63
::p51::
tick(51)
do
do
registers[17] = (2870763221)
end

end
::p52::
do
do
a = (registers)
z = 18
end

end
::p53::
do
do
q = 3624381080;
(a)[z] = (q)
end

end
::p54::
do
do
registers[19] = (310598401)
end

end
::p55::
do
do
registers[20] = (607225278)
end

end
goto p134
::p57::
tick(57)
do
do
registers[27] = (4022224774)
end

end
::p58::
do
do
registers[28] = (264347078)
end

end
::p59::
do
do
registers[29] = (604807628)
end

end
goto p85
::p62::
tick(62)
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
return registers[12]
end

end
::p63::
do
do
registers[10]["blocksize"] = 64
end

end
::p64::
do
do
registers[11] = ("preproc")
end

end
::p65::
do
do
a = (D.f30)
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
goto p95
::p68::
tick(68)
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p219
::p80::
tick(80)
do
do
registers[33] = (1996064986)
end

end
::p81::
do
do
a = (registers)
z = 34
end

end
::p82::
do
do
q = 2554220882;
(a)[z] = (q)
end

end
::p83::
do
do
registers[35] = (2821834349)
end

end
goto p101
::p85::
do
do
registers[30] = (770255983)
end

end
::p86::
do
do
a = (registers)
z = 31
end

end
::p87::
do
do
q = 1249150122;
(a)[z] = (q)
end

end
::p88::
do
do
registers[32] = (1555081692)
end

end
goto p80
::p90::
do
do
(registers)[8] = registers[2]
end

end
::p91::
do
do
(registers)[9] = registers[7]
end

end
::p92::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p93::
do
do
(registers[3])[registers[8]] = registers[7]
end

end
goto p68
::p95::
do
do
(registers[10])[registers[11]] = registers[12]
end

end
::p96::
do
do
registers[11] = ("initH256")
end

end
::p97::
do
do
a = (D.f31)
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
::p98::
do
do
(registers[10])[registers[11]] = registers[12]
end

end
::p99::
do
do
registers[11] = ("digestblock")
end

end
goto p233
::p101::
do
do
registers[36] = (2952996808)
end

end
::p102::
do
do
registers[37] = (3210313671)
end

end
::p103::
do
do
registers[38] = (3336571891)
end

end
::p104::
do
do
registers[39] = (3584528711)
end

end
::p105::
do
do
registers[40] = (113926993)
end

end
::p106::
do
do
registers[41] = (338241895)
end

end
::p107::
do
do
registers[42] = (666307205)
end

end
::p108::
do
do
registers[43] = (773529912)
end

end
goto p225
::p116::
tick(116)
do
do
(registers)[6] = environment["string"]
end

end
::p117::
do
do
registers[6] = (registers[6]["char"])
end

end
::p118::
do
do
(registers)[7] = registers[5]
end

end
::p119::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p120::
do
do
(registers[1])[registers[5]] = registers[6]
end

end
goto p150
::p122::
tick(122)
do
do
a = (D.f32)
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
::p123::
do
do
a = (D.f34)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[7] = x
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
::p124::
do
do
a = (D.f35)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[8] = x
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
::p125::
do
do
registers[9] = new_frame(64)
end

end
::p126::
do
do
registers[10] = (1116352408)
end

end
::p127::
do
do
registers[11] = (1899447441)
end

end
::p128::
do
do
registers[12] = (3049323471)
end

end
::p129::
do
do
registers[13] = (3921009573)
end

end
::p130::
do
do
registers[14] = (961987163)
end

end
::p131::
do
do
registers[15] = (1508970993)
end

end
::p132::
do
do
registers[16] = (2453635748)
end

end
goto p51
::p134::
do
do
registers[21] = (1426881987)
end

end
::p135::
do
do
registers[22] = (1925078388)
end

end
::p136::
do
do
registers[23] = (2162078206)
end

end
goto p196
::p138::
tick(138)
do
do
registers[59] = (506948616)
end

end
::p139::
do
do
registers[60] = (659060556)
end

end
::p140::
do
do
registers[61] = (883997877)
end

end
goto p155
::p150::
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
    (registers)[2 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p237
::p155::
do
do
registers[62] = (958139571)
end

end
::p156::
do
do
registers[63] = (1322822218)
end

end
::p157::
do
do
registers[64] = (1537002063)
end

end
goto p24
::p173::
tick(173)
do
do
registers[47] = (1986661051)
end

end
::p174::
do
do
registers[48] = (2177026350)
end

end
::p175::
do
do
registers[49] = (2456956037)
end

end
::p176::
do
do
registers[50] = (2730485921)
end

end
::p177::
do
do
registers[51] = (2820302411)
end

end
::p178::
do
do
registers[52] = (3259730800)
end

end
::p179::
do
do
registers[53] = (3345764771)
end

end
::p180::
do
do
registers[54] = (3516065817)
end

end
::p181::
do
do
registers[55] = (3600352804)
end

end
::p183::
do
do
registers[56] = (4094571909)
end

end
::p184::
do
do
registers[57] = (275423344)
end

end
::p185::
do
do
registers[58] = (430227734)
end

end
goto p138
::p196::
do
do
registers[24] = (2614888103)
end

end
::p197::
do
do
registers[25] = (3248222580)
end

end
::p198::
do
do
registers[26] = (3835390401)
end

end
goto p57
::p200::
do
do
registers[68] = (2227730452)
end

end
::p201::
do
do
a = (registers)
z = 69
end

end
::p202::
do
do
q = 2361852424;
(a)[z] = (q)
end

end
::p203::
do
do
registers[70] = (2428436474)
end

end
::p204::
do
do
registers[71] = (2756734187)
end

end
::p205::
do
do
registers[72] = (3204031479)
end

end
goto p29
::p207::
tick(207)
do
do
registers[12] = ("sha256")
end

end
::p208::
do
do
a = (D.f36)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[13] = x
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
::p209::
do
do
(registers[10])[registers[12]] = registers[13]
end

end
::p210::
do
do
registers[12] = ("sha256_binary")
end

end
::p211::
do
do
a = (D.f37)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[13] = x
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
::p212::
do
do
(registers[10])[registers[12]] = registers[13]
end

end
::p213::
do
do
registers[12] = ("hmac_sha256")
end

end
::p214::
do
do
a = (D.f38)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[13] = x
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
::p215::
do
do
(registers[10])[registers[12]] = registers[13]
end

end
::p216::
do
do
(registers)[12] = registers[10]
end

end
goto p62
::p219::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p220::
do
do
a = (D.f39)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
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
::p221::
do
do
a = (D.f40)
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
goto p122
::p225::
do
do
registers[44] = (1294757372)
end

end
::p226::
do
do
registers[45] = (1396182291)
end

end
::p227::
do
do
registers[46] = (1695183700)
end

end
goto p173
::p231::
tick(231)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p68 end
goto p18
::p233::
do
do
a = (D.f41)
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
::p234::
do
do
(registers[10])[registers[11]] = registers[12]
end

end
::p235::
do
do
a = (D.f42)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[11] = x
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
goto p207
::p237::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p238::
do
do
a = (D.f44)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[2] = x
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
::p239::
do
do
registers[3] = {
}
end

end
::p240::
do
do
registers[4] = (0)
end

end
::p241::
do
do
registers[5] = (255)
end

end
::p242::
do
do
registers[6] = (1)
end

end
goto p231
end
end
