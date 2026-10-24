
-- Function f106; 53 recovered instruction blocks.
F.f106=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f106",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f106 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p36
::p9::
tick(9)
do
do
(registers)[3] = environment["writefile"]
end

end
::p10::
do
do
(registers)[4] = registers[1]
end

end
::p11::
do
do
(registers)[5] = registers[2]
end

end
::p12::
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p13::
do
do
(registers)[3] = registers[2]
end

end
goto p103
::p15::
tick(15)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p16::
do
do
(registers)[2] = upvalues[0]["icon_assets"]
end

end
::p17::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
goto p119
::p21::
tick(21)
branch_taken=false
do
do
if registers[7] ~= "" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p78
::p23::
tick(23)
do
do
(registers)[9] = registers[7]
end

end
::p24::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p25::
branch_taken=false
do
do
if registers[8] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p68
::p36::
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
::p37::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p113 end
goto p88
::p58::
tick(58)
branch_taken=false
do
do
if registers[2] ~= "" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p9
::p68::
branch_taken=false
do
do
if registers[7] ~= "" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p129
::p70::
tick(70)
do
do
(registers)[3] = nil
end

end
::p71::
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
::p78::
tick(78)
do
do
(registers)[8] = registers[7]
end

end
::p79::
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
::p81::
tick(81)
do
do
(registers)[6] = upvalues[0]["icon_path_prefixes"]
end

end
::p82::
do
do
(registers)[6] = registers[6][registers[5]]
end

end
::p83::
do
do
(registers)[7] = environment["readfile"]
end

end
::p84::
do
do
registers[8] = (registers[6] .. registers[1])
end

end
::p85::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p86::
do
do
(registers)[8] = environment["type"]
end

end
goto p23
::p88::
do
do
(registers)[2] = nil
end

end
::p89::
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
return registers[2]
end

end
::p92::
do
do
(registers)[8] = environment["readfile"]
end

end
::p93::
do
do
a = (9)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["gsub"]
end

end
::p94::
do
do
registers[11] = ("/")
end

end
goto p133
::p96::
tick(96)
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
if branch_taken then goto p81 end
goto p15
::p103::
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
::p113::
do
do
registers[2] = (1)
end

end
::p114::
do
do
(registers)[3] = upvalues[0]["icon_path_prefixes"]
end

end
::p115::
do
do
registers[3] = (#registers[3])
end

end
::p116::
do
do
registers[4] = (1)
end

end
::p117::
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
if branch_taken then goto p96 end
goto p78
::p119::
do
do
(registers)[3] = environment["type"]
end

end
::p120::
do
do
(registers)[4] = registers[2]
end

end
::p121::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p122::
branch_taken=false
do
do
if registers[3] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p70 end
goto p58
::p129::
do
do
(registers)[8] = registers[7]
end

end
::p130::
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
::p133::
do
do
registers[12] = ("\\")
end

end
::p134::
do
do
a = 9
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p135::
do
do
registers[9] = (registers[6] .. registers[9])
end

end
::p136::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p137::
do
do
(registers)[7] = registers[8]
end

end
::p138::
do
do
(registers)[8] = environment["type"]
end

end
::p139::
do
do
(registers)[9] = registers[7]
end

end
::p140::
do
do
a = (8);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p141::
branch_taken=false
do
do
if registers[8] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p96 end
goto p21
end
end
