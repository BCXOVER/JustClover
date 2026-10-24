
-- Function f297; 136 recovered instruction blocks.
F.f297=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f297",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f297 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p146
::p2::
tick(2)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p3::
branch_taken=false
do
do
if registers[5] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p230 end
goto p226
::p5::
tick(5)
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p6::
do
do
registers[11] = ("%.delay%.hidden%.type$")
end

end
::p7::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p179
::p9::
tick(9)
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p162 end
goto p372
::p11::
tick(11)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p280 end
goto p311
::p13::
tick(13)
branch_taken=false
do
do
if registers[2] ~= "Single" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p291
::p15::
tick(15)
branch_taken=false
do
do
if registers[7] ~= "number" then
    branch_taken=true
end
end

end
if branch_taken then goto p246 end
goto p326
::p24::
tick(24)
do
do
(registers)[4] = registers[2]
end

end
goto p142
::p26::
tick(26)
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p27::
do
do
registers[11] = ("%.yaw_modifiers%.type$")
end

end
::p28::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p29::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p332 end
::p30::
branch_taken=false
do
do
if registers[2] ~= "Offset" then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p219
::p35::
tick(35)
branch_taken=false
do
do
if registers[2] ~= "Duo" then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p101
::p37::
tick(37)
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
::p38::
tick(38)
do
do
registers[8] = ("Default")
end

end
goto p221
::p50::
tick(50)
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p51::
do
do
registers[11] = ("%.yaw_modifiers%.values$")
end

end
::p52::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p53::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p151 end
goto p114
::p55::
tick(55)
do
do
registers[8] = ("Solo")
end

end
goto p221
::p57::
tick(57)
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p58::
do
do
registers[11] = ("defensive_pitch_mode")
end

end
::p59::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p11
::p61::
tick(61)
branch_taken=false
do
do
if registers[2] ~= "General" then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p88
::p63::
tick(63)
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p318 end
goto p50
::p67::
tick(67)
do
do
(registers)[4] = environment["type"]
end

end
::p68::
do
do
(registers)[5] = registers[2]
end

end
::p69::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p258
::p72::
tick(72)
branch_taken=false
do
do
if registers[2] ~= "Side based" then
    branch_taken=true
end
end

end
if branch_taken then goto p236 end
::p82::
tick(82)
do
do
registers[8] = ("Fluctuate")
end

end
goto p221
::p85::
tick(85)
do
do
(registers)[9] = nil
end

end
::p86::
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
::p88::
do
do
(registers)[8] = upvalues[1][1]
end

end
goto p221
::p90::
tick(90)
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p318 end
goto p151
::p92::
tick(92)
do
do
(registers)[9] = registers[2]
end

end
::p93::
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
::p101::
do
do
registers[8] = ("Double")
end

end
goto p221
::p103::
tick(103)
do
do
registers[8] = ("Solo")
end

end
goto p221
::p105::
tick(105)
do
do
registers[8] = ("Double")
end

end
goto p221
::p107::
tick(107)
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p293 end
goto p157
::p110::
tick(110)
branch_taken=false
do
do
if registers[2] ~= "Solo" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p13
::p113::
tick(113)
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
::p114::
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p115::
do
do
registers[11] = ("%.yaw_modifiers%.switch$")
end

end
::p116::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p90
::p118::
tick(118)
do
do
(registers)[7] = nil
end

end
::p119::
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
return registers[7]
end

end
::p140::
tick(140)
do
do
registers[8] = ("Default")
end

end
goto p221
::p142::
tick(142)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p352
::p146::
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
::p147::
do
do
registers[4] = (registers[1]["get_list"])
end

end
::p148::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p347 end
goto p67
::p151::
branch_taken=false
do
do
if registers[2] ~= "Single" then
    branch_taken=true
end
end

end
if branch_taken then goto p35 end
goto p103
::p153::
tick(153)
branch_taken=false
do
do
if registers[2] ~= "Specific" then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p140
::p157::
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p158::
do
do
registers[11] = ("%.delay%.type$")
end

end
::p159::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p160::
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p110 end
goto p5
::p162::
do
do
(registers)[8] = registers[2]
end

end
::p163::
branch_taken=false
do
do
if registers[3] ~= "antiaim.conditions" then
    branch_taken=true
end
end

end
if branch_taken then goto p107 end
goto p61
::p174::
tick(174)
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p175::
do
do
registers[11] = ("%.yaw%.type$")
end

end
::p176::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p177::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p212
::p179::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p293 end
goto p110
::p181::
tick(181)
branch_taken=false
do
do
if registers[2] ~= "L / R" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p210 end
goto p324
::p183::
tick(183)
do
do
(registers)[9] = registers[5]
end

end
::p184::
do
do
(registers)[10] = registers[2]
end

end
::p185::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p269
::p187::
tick(187)
branch_taken=false
do
do
if registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p200 end
goto p345
::p200::
tick(200)
do
do
(registers)[8] = registers[9]
end

end
goto p221
::p210::
tick(210)
do
do
registers[8] = ("Double")
end

end
goto p221
::p212::
branch_taken=false
do
do
if registers[2] ~= "180" then
    branch_taken=true
end
end

end
if branch_taken then goto p181 end
goto p55
::p214::
tick(214)
branch_taken=false
do
do
if registers[2] ~= "Double" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p82 end
goto p72
::p219::
do
do
registers[8] = ("Off")
end

end
::p221::
tick(221)
do
do
(registers)[9] = registers[5]
end

end
::p222::
do
do
(registers)[10] = registers[8]
end

end
::p223::
do
do
a = (9);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p224::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p183 end
goto p343
::p226::
do
do
(registers)[5] = environment["type"]
end

end
::p227::
do
do
(registers)[6] = registers[2]
end

end
::p228::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p375
::p230::
do
do
a = (D.f298)
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
::p231::
do
do
a = (D.f299)
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
::p232::
do
do
(registers)[7] = environment["type"]
end

end
::p233::
do
do
(registers)[8] = registers[2]
end

end
::p234::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p15
::p236::
branch_taken=false
do
do
if registers[2] ~= "Custom" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p153
::p246::
do
do
(registers)[7] = environment["type"]
end

end
::p247::
do
do
(registers)[8] = registers[2]
end

end
::p248::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p283
::p258::
do
do
registers[4] = (registers[4] == "string")
end

end
::p259::
branch_taken=false
do
do
if not registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p142 end
goto p24
::p266::
tick(266)
do
do
(registers)[5] = registers[2]
end

end
goto p354
::p269::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p92
::p280::
tick(280)
branch_taken=false
do
do
if registers[2] ~= "Left ~ Right" then
    branch_taken=true
end
end

end
if branch_taken then goto p330 end
goto p105
::p283::
branch_taken=false
do
do
if registers[7] ~= "string" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p297 end
goto p118
::p286::
tick(286)
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p287::
do
do
registers[11] = ("defensive_yaw_mode")
end

end
::p288::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p289::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p187 end
goto p335
::p291::
branch_taken=false
do
do
if registers[2] ~= "Static" then
    branch_taken=true
end
end

end
if branch_taken then goto p214 end
goto p38
::p293::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p174
::p297::
do
do
(registers)[7] = environment["tonumber"]
end

end
::p298::
do
do
(registers)[8] = registers[2]
end

end
::p299::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p9
::p311::
do
do
a = (9)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p312::
do
do
registers[11] = ("defensive_yaw_mode")
end

end
::p313::
do
do
a = 9
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p314::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p280
::p316::
tick(316)
do
do
(registers)[5] = nil
end

end
goto p37
::p318::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p332 end
goto p26
::p324::
branch_taken=false
do
do
if registers[2] ~= "Specific" then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p210
::p326::
do
do
(registers)[7] = registers[6]
end

end
::p327::
do
do
(registers)[8] = registers[2]
end

end
::p328::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (7)
return registers[a](registers[a + 1])
end

end
::p330::
branch_taken=false
do
do
if registers[2] ~= "Delay" then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p286
::p332::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p221 end
goto p57
::p335::
do
do
registers[9] = ("Delayed")
end

end
goto p187
::p343::
do
do
(registers)[9] = registers[8]
end

end
::p344::
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
::p345::
do
do
registers[9] = ("Double")
end

end
goto p200
::p347::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get_list"]
end

end
::p348::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p349::
do
do
(registers)[5] = environment["type"]
end

end
::p350::
do
do
(registers)[6] = registers[4]
end

end
goto p2
::p352::
do
do
(registers)[4] = nil
end

end
goto p113
::p354::
tick(354)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p37 end
goto p316
::p372::
do
do
(registers)[8] = registers[6]
end

end
::p373::
do
do
(registers)[9] = registers[7]
end

end
::p374::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (8)
return registers[a](registers[a + 1])
end

end
::p375::
do
do
registers[5] = (registers[5] == "string")
end

end
::p376::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p354 end
goto p266
end
end
