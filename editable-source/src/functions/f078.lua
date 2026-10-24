
-- Function f78; 101 recovered instruction blocks.
F.f78=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f78",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f78 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p62
::p3::
tick(3)
do
do
(registers)[14] = registers[2][registers[6]]
end

end
::p4::
do
do
registers[14] = (registers[14]["str"])
end

end
::p5::
do
do
a = (13)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p87
::p8::
tick(8)
do
do
(registers)[13] = registers[2][registers[6]]
end

end
::p9::
do
do
registers[13] = (registers[13]["threshold"])
end

end
::p10::
branch_taken=false
do
do
if not (registers[13] < registers[12]) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p38
::p25::
tick(25)
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
    (registers)[3 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p99 end
goto p165
::p34::
tick(34)
do
do
registers[3]["threshold"] = 0.01
end

end
::p35::
do
do
registers[3]["char"] = "T"
end

end
::p36::
do
do
registers[4] = {
}
end

end
goto p139
::p38::
branch_taken=false
do
do
if not (not (registers[12] < 0)) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p214 end
goto p56
::p41::
tick(41)
do
do
registers[9] = " - " .. registers[9]
end

end
::p42::
do
do
registers[8] = (registers[8] .. registers[9])
end

end
::p43::
do
do
registers[3] = (registers[3] .. registers[8])
end

end
goto p235
::p46::
tick(46)
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 3
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p25 end
goto p62
::p56::
tick(56)
do
do
(registers)[13] = registers[2][registers[6]]
end

end
::p57::
do
do
(registers)[14] = registers[2][registers[6]]
end

end
::p58::
do
do
registers[14] = (registers[14]["count"])
end

end
::p59::
do
do
registers[14] = registers[14] + 1
end

end
::p60::
do
do
registers[13]["count"] = (registers[14])
end

end
goto p214
::p62::
do
do
(registers)[1] = environment["load"]
end

end
::p63::
do
do
registers[2] = new_frame(2)
end

end
::p64::
do
do
registers[3] = {
}
end

end
::p65::
do
do
(registers)[4] = environment["tostring"]
end

end
::p66::
do
do
registers[3]["func"] = (registers[4])
end

end
::p67::
do
do
registers[3]["str"] = ""
end

end
::p68::
do
do
registers[3]["count"] = 0
end

end
goto p34
::p70::
tick(70)
do
do
registers[12] = ("restart")
end

end
::p71::
do
do
a = (11)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p72::
do
do
a = (D.f79)
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
::p73::
do
do
top = 11;
(registers)[top] = registers[top]()
end

end
::p74::
do
do
(registers)[12] = environment["collectgarbage"]
end

end
::p75::
do
do
registers[13] = ("count")
end

end
::p76::
do
do
a = (12);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p77::
do
do
(registers)[13] = registers[2][registers[6]]
end

end
::p78::
do
do
registers[13] = (registers[13]["func"])
end

end
goto p3
::p80::
tick(80)
do
do
(registers)[11] = registers[2][registers[6]]
end

end
::p81::
do
do
(registers)[12] = registers[2][registers[6]]
end

end
::p82::
do
do
registers[12] = (registers[12]["str"])
end

end
goto p155
::p85::
tick(85)
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
if branch_taken then goto p196 end
goto p149
::p87::
do
do
(registers)[13] = environment["collectgarbage"]
end

end
::p88::
do
do
registers[14] = ("count")
end

end
::p89::
do
do
a = (13);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p90::
do
do
registers[12] = (registers[13] - registers[12])
end

end
::p91::
branch_taken=false
do
do
if registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p8
::p99::
do
do
(registers)[7] = environment["pcall"]
end

end
::p100::
do
do
(registers)[8] = environment["jit"]
end

end
::p101::
do
do
registers[8] = (registers[8]["on"])
end

end
::p102::
do
do
(registers)[9] = registers[2][registers[6]]
end

end
::p103::
do
do
registers[9] = (registers[9]["func"])
end

end
::p104::
do
do
a = 7;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p105::
do
do
registers[7] = (1)
end

end
::p106::
do
do
registers[8] = (111)
end

end
goto p212
::p132::
tick(132)
do
do
registers[4]["threshold"] = 0.15
end

end
::p133::
do
do
registers[4]["char"] = "L"
end

end
::p134::
do
do
a = (2)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p135::
do
do
registers[3] = (1)
end

end
::p136::
do
do
registers[4] = (#registers[2])
end

end
::p137::
do
do
registers[5] = (1)
end

end
goto p46
::p139::
do
do
registers[4]["func"] = (registers[1])
end

end
::p140::
do
do
registers[4]["str"] = ""
end

end
::p141::
do
do
registers[4]["count"] = 0
end

end
goto p132
::p149::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p150::
do
do
registers[4] = (upvalues[0])
end

end
::p151::
do
do
registers[5] = {
}
end

end
::p152::
do
do
(registers)[6] = upvalues[1]["CHECK_13_FAILED"]
end

end
::p153::
do
do
registers[5]["ban_num"] = (registers[6])
end

end
goto p200
::p155::
do
do
registers[12] = registers[12] .. "\000"
end

end
::p156::
do
do
registers[11]["str"] = (registers[12])
end

end
::p157::
do
do
(registers)[11] = environment["collectgarbage"]
end

end
goto p70
::p165::
tick(165)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p166::
do
do
registers[3] = (registers[2][1])
end

end
::p167::
do
do
registers[3] = (registers[3]["count"])
end

end
::p168::
branch_taken=false
do
do
if 32 <= registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p188 end
::p177::
do
do
registers[4] = (registers[2][2])
end

end
::p178::
do
do
registers[4] = (registers[4]["count"])
end

end
::p179::
branch_taken=false
do
do
if not (not (32 <= registers[4])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p195 end
::p188::
do
do
registers[3] = ("")
end

end
::p189::
do
do
registers[4] = (1)
end

end
::p190::
do
do
registers[5] = (#registers[2])
end

end
::p191::
do
do
registers[6] = (1)
end

end
::p192::
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
if branch_taken then goto p85 end
goto p165
::p195::
tick(195)
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
::p196::
do
do
(registers)[8] = registers[2][registers[7]]
end

end
::p197::
do
do
registers[8] = (registers[8]["char"])
end

end
::p198::
do
do
(registers)[9] = environment["tostring"]
end

end
goto p229
::p200::
do
do
registers[6] = registers[3] .. "][0x01]"
end

end
::p201::
do
do
registers[6] = " [" .. registers[6]
end

end
::p202::
do
do
registers[6] = "[module] invalid" .. registers[6]
end

end
::p203::
do
do
registers[5]["ban_info"] = (registers[6])
end

end
::p204::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p195
::p212::
do
do
registers[9] = (1)
end

end
::p213::
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
if branch_taken then goto p214 end
::p214::
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
if branch_taken then goto p80 end
::p216::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
goto p25
::p226::
tick(226)
do
do
registers[3] = registers[3] .. ", "
end

end
goto p85
::p229::
do
do
(registers)[10] = registers[2][registers[7]]
end

end
::p230::
do
do
registers[10] = (registers[10]["count"])
end

end
::p231::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p41
::p235::
do
do
registers[8] = (#registers[2])
end

end
::p236::
branch_taken=false
do
do
if not (registers[7] < registers[8]) then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p226
end
end
