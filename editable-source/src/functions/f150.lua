
-- Function f150; 80 recovered instruction blocks.
F.f150=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f150",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f150 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p4
::p2::
tick(2)
branch_taken=false
do
do
if not registers[11] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p183
::p4::
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
::p5::
do
do
registers[1]["safehead_active"] = false
end

end
::p6::
do
do
a = (D.f151)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
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
goto p141
::p8::
tick(8)
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p2
::p30::
tick(30)
do
do
registers[13] = (upvalues[2])
end

end
::p31::
do
do
top = 13;
(registers)[top] = registers[top]()
end

end
::p32::
branch_taken=false
do
do
if registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p179
::p36::
tick(36)
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p196
::p38::
tick(38)
do
do
(registers)[6] = upvalues[0][45]
end

end
::p39::
do
do
(registers)[7] = registers[5]
end

end
::p40::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
::p55::
do
do
registers[6] = ("")
end

end
goto p117
::p57::
tick(57)
do
do
(registers)[14] = registers[3]
end

end
::p58::
do
do
registers[15] = (false)
end

end
::p59::
do
do
a = (14)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p60::
do
do
registers[14] = (true)
end

end
::p61::
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
::p62::
tick(62)
do
do
registers[13] = (false)
end

end
::p63::
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
return registers[13]
end

end
::p67::
tick(67)
do
do
registers[12] = ("Knife")
end

end
::p68::
do
do
a = 10
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p69::
do
do
a = (11)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p70::
do
do
registers[13] = ("Zeus")
end

end
::p71::
do
do
a = 11
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p81::
do
do
registers[12] = (registers[2] == "Move")
end

end
::p82::
branch_taken=false
do
do
if registers[12] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p30
::p92::
tick(92)
do
do
registers[13] = (registers[2] == "Air-crouch")
end

end
::p93::
branch_taken=false
do
do
if not registers[13] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p115
::p95::
tick(95)
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get"]
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
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p130 end
goto p128
::p109::
tick(109)
do
do
registers[18] = (0)
end

end
::p110::
do
do
a = (14)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p111::
do
do
registers[14] = (true)
end

end
::p112::
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
::p113::
tick(113)
do
do
registers[14] = (false)
end

end
::p114::
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
::p115::
branch_taken=false
do
do
if not registers[10] then
    branch_taken=true
end
end

end
if branch_taken then goto p8 end
goto p36
::p117::
do
do
(registers)[7] = environment["string"]
end

end
::p118::
do
do
registers[7] = (registers[7]["find"])
end

end
::p119::
do
do
(registers)[8] = registers[6]
end

end
::p120::
do
do
registers[9] = ("Knife")
end

end
::p121::
do
do
registers[10] = (1)
end

end
::p122::
do
do
registers[11] = (true)
end

end
::p123::
do
do
a = 7
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p124::
do
do
registers[7] = (registers[7] ~= registers[0])
end

end
::p125::
do
do
registers[8] = (registers[6] == "CWeaponTaser")
end

end
goto p202
::p128::
tick(128)
do
do
registers[5] = (false)
end

end
::p129::
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
::p130::
do
do
(registers)[5] = upvalues[0][37]
end

end
::p131::
do
do
(registers)[6] = registers[4]
end

end
::p132::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p133::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p185
::p136::
tick(136)
do
do
(registers)[5] = upvalues[1]["antiaim"]
end

end
::p137::
do
do
registers[5] = (registers[5]["features"])
end

end
::p138::
do
do
registers[5] = (registers[5]["safe_head"])
end

end
::p139::
do
do
registers[5] = (registers[5]["enabled"])
end

end
goto p95
::p141::
do
do
(registers)[4] = upvalues[0][32]
end

end
::p142::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p143::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p190
::p179::
do
do
a = upvalues[3];
(registers)[13] = (a[2][a[1]]["manual"])
end

end
::p180::
branch_taken=false
do
do
if registers[13] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p62
::p183::
branch_taken=false
do
do
if not registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p57
::p185::
do
do
registers[6] = (false)
end

end
::p186::
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
return registers[6]
end

end
::p187::
tick(187)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p136
::p190::
do
do
(registers)[5] = upvalues[0][50]
end

end
::p191::
do
do
(registers)[6] = registers[4]
end

end
::p192::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p187
::p196::
do
do
(registers)[14] = registers[3]
end

end
::p197::
do
do
registers[15] = (false)
end

end
::p198::
do
do
registers[16] = (0)
end

end
::p199::
do
do
registers[17] = ("Static")
end

end
goto p109
::p202::
do
do
(registers)[9] = upvalues[1]["antiaim"]
end

end
::p203::
do
do
registers[9] = (registers[9]["features"])
end

end
::p204::
do
do
registers[9] = (registers[9]["safe_head"])
end

end
::p205::
do
do
registers[9] = (registers[9]["states"])
end

end
::p206::
do
do
a = (10)
z = registers[9]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
goto p67
end
end
