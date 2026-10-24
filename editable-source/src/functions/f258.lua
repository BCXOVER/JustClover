
-- Function f258; 72 recovered instruction blocks.
F.f258=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f258",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f258 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p63
::p4::
tick(4)
do
do
(registers)[5] = upvalues[1][86]
end

end
::p5::
do
do
registers[6] = ("play resource/warning.wav")
end

end
::p6::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p30
::p8::
tick(8)
do
do
registers[6] = (registers[6]["menu_list"])
end

end
::p9::
do
do
(registers)[7] = registers[3]
end

end
::p10::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p113
::p20::
tick(20)
do
do
(registers)[5] = upvalues[1][86]
end

end
::p21::
do
do
registers[6] = ("play resource/warning.wav")
end

end
::p22::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p67
::p30::
tick(30)
do
do
registers[5] = (registers[1]["configs_db"])
end

end
::p31::
do
do
registers[5] = (registers[5]["cfg_list"])
end

end
::p32::
do
do
registers[5] = (#registers[5])
end

end
::p33::
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
::p34::
tick(34)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p35::
do
do
registers[4] = (registers[1]["configs_db"])
end

end
::p36::
do
do
registers[4] = (registers[4]["cfg_list"])
end

end
::p37::
do
do
registers[4] = (#registers[4])
end

end
::p38::
do
do
registers[5] = (registers[1]["max_configs"])
end

end
goto p148
::p46::
tick(46)
do
do
(registers)[5] = upvalues[1][86]
end

end
::p47::
do
do
registers[6] = ("play ui\\beepclear")
end

end
::p48::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p30
::p50::
tick(50)
do
do
(registers)[5] = environment["table"]
end

end
::p51::
do
do
registers[5] = (registers[5]["insert"])
end

end
::p52::
do
do
registers[6] = (registers[1]["configs_db"])
end

end
::p53::
do
do
registers[6] = (registers[6]["cfg_list"])
end

end
::p54::
do
do
registers[7] = new_frame(2)
end

end
goto p80
::p56::
tick(56)
do
do
(registers)[8] = registers[7]
end

end
::p57::
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
::p63::
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
::p64::
do
do
registers[3] = (upvalues[0])
end

end
::p65::
do
do
(registers)[4] = registers[2]
end

end
goto p90
::p67::
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
::p68::
tick(68)
do
do
registers[4] = (registers[1]["configs_db"])
end

end
::p69::
do
do
registers[4] = (registers[4]["menu_list"])
end

end
::p70::
do
do
registers[4] = (#registers[4])
end

end
::p71::
do
do
registers[5] = (1)
end

end
::p72::
do
do
registers[6] = (-1)
end

end
::p73::
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
if branch_taken then goto p163 end
::p74::
do
do
registers[30] = operand_k
end

end
::p75::
do
do
(registers)[29] = (operand_i)
end

end
::p76::
do
do
registers[29][114] = 5
end

end
::p77::
do
do
registers[30][154] = 112
end

end
::p78::
do
do
for f = 23, 30, 1 do
    (registers)[f] = nil
end
end

end
goto p113
::p80::
do
do
(registers)[8] = registers[3]
end

end
::p81::
do
do
(registers)[9] = registers[4]
end

end
::p82::
do
do
a = (7)
z = 0
q = registers[a]
for f = 1, 2, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p83::
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p84::
do
do
(registers)[5] = environment["table"]
end

end
::p85::
do
do
registers[5] = (registers[5]["insert"])
end

end
::p86::
do
do
registers[6] = (registers[1]["configs_db"])
end

end
goto p8
::p90::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p91::
branch_taken=false
do
do
if registers[3] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p150
::p113::
tick(113)
do
do
a = (5)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["write_db"]
end

end
::p114::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p115::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p46
::p135::
tick(135)
do
do
registers[8] = (registers[1]["configs_db"])
end

end
::p136::
do
do
registers[8] = (registers[8]["menu_list"])
end

end
::p137::
do
do
(registers)[8] = registers[8][registers[7]]
end

end
::p138::
branch_taken=false
do
do
if registers[8] ~= registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p163 end
goto p56
::p148::
branch_taken=false
do
do
if not (not (registers[5] <= registers[4])) then

else
    branch_taken=true
end
end

end
if branch_taken then goto p165 end
goto p157
::p150::
do
do
(registers)[4] = upvalues[1][86]
end

end
::p151::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p152::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p153::
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
::p157::
do
do
(registers)[4] = upvalues[1][86]
end

end
::p158::
do
do
registers[5] = ("play resource/warning.wav")
end

end
::p159::
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p160::
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
::p163::
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
if branch_taken then goto p135 end
goto p34
::p165::
do
do
a = (4)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["build_encoded_payload"]
end

end
::p166::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p167::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p20
end
end
