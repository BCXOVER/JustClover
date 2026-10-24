
-- Function f139; 57 recovered instruction blocks.
F.f139=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f139",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f139 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p44
::p26::
tick(26)
do
do
(registers)[4] = environment["string"]
end

end
::p27::
do
do
registers[4] = (registers[4]["byte"])
end

end
::p28::
do
do
(registers)[5] = registers[3]
end

end
::p29::
do
do
registers[6] = (1)
end

end
::p30::
do
do
a = 4
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p31::
do
do
registers[5] = (registers[4] ~= registers[0])
end

end
::p32::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p70
::p40::
tick(40)
do
do
(registers)[4] = environment["type"]
end

end
::p41::
do
do
(registers)[5] = registers[3]
end

end
::p42::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p48
::p44::
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
::p45::
do
do
registers[3] = (upvalues[0])
end

end
::p46::
do
do
(registers)[4] = registers[2]
end

end
goto p117
::p48::
branch_taken=false
do
do
if registers[4] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p150 end
goto p145
::p50::
tick(50)
branch_taken=false
do
do
if registers[7] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p161 end
::p59::
do
do
(registers)[7] = nil
end

end
::p60::
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
::p61::
tick(61)
do
do
(registers)[3] = nil
end

end
::p62::
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
::p63::
tick(63)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p148
::p68::
tick(68)
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p108
::p70::
do
do
registers[5] = (registers[4] >= 128)
end

end
::p71::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p143 end
goto p159
::p108::
do
do
a = (6)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p109::
do
do
registers[8] = ("antiaim")
end

end
::p110::
do
do
registers[9] = (1)
end

end
::p111::
do
do
registers[10] = (true)
end

end
::p112::
do
do
a = 6
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p113::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p137
::p117::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p118::
branch_taken=false
do
do
if registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p165 end
goto p61
::p128::
tick(128)
do
do
(registers)[6] = nil
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
return registers[6]
end

end
::p131::
tick(131)
branch_taken=false
do
do
if registers[7] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p171 end
goto p128
::p133::
tick(133)
do
do
(registers)[7] = environment["type"]
end

end
::p134::
do
do
(registers)[8] = registers[6]
end

end
::p135::
do
do
a = (7);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p50
::p137::
do
do
a = (7)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p138::
do
do
registers[9] = ("visuals")
end

end
::p139::
do
do
registers[10] = (1)
end

end
::p140::
do
do
registers[11] = (true)
end

end
::p141::
do
do
a = 7
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p131
::p143::
tick(143)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p163
::p145::
branch_taken=false
do
do
if registers[3] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p26 end
goto p150
::p148::
do
do
registers[5] = (registers[4] == 223)
end

end
goto p68
::p150::
do
do
(registers)[4] = nil
end

end
::p151::
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
::p159::
do
do
(registers)[5] = registers[4] <= 143
end

end
goto p143
::p161::
do
do
(registers)[7] = registers[6]
end

end
::p162::
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
::p163::
do
do
registers[5] = (registers[4] == 222)
end

end
goto p63
::p165::
do
do
(registers)[3] = upvalues[1]["decode"]
end

end
::p166::
do
do
(registers)[4] = registers[2]
end

end
::p167::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p40
::p171::
do
do
(registers)[6] = upvalues[2]["unpack"]
end

end
::p172::
do
do
(registers)[7] = registers[3]
end

end
::p173::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p133
end
end
