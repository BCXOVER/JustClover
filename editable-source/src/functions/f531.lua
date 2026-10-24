
-- Function f531; 46 recovered instruction blocks.
F.f531=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f531",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f531 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p103
::p10::
tick(10)
do
do
(registers)[5] = upvalues[0]["textures"]
end

end
::p11::
do
do
registers[5][registers[3]] = false
end

end
::p12::
do
do
(registers)[5] = nil
end

end
::p13::
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
::p14::
tick(14)
do
do
(registers[7])[registers[3]] = registers[8]
end

end
::p15::
do
do
(registers)[7] = registers[6]
end

end
::p16::
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
::p27::
tick(27)
branch_taken=false
do
do
if registers[5] ~= "" then
    branch_taken=true
end
end

end
if branch_taken then goto p125 end
goto p66
::p42::
tick(42)
do
do
(registers)[4] = upvalues[0]["icon_paths"]
end

end
::p43::
do
do
(registers)[4] = registers[4][registers[1]]
end

end
::p44::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p10
::p55::
tick(55)
do
do
(registers)[4] = upvalues[0]["textures"]
end

end
::p56::
do
do
(registers)[4] = registers[4][registers[3]]
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
return registers[4]
end

end
::p58::
tick(58)
do
do
(registers)[3] = environment["tostring"]
end

end
::p59::
do
do
(registers)[4] = registers[2]
end

end
::p60::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p61::
do
do
registers[3] = ":" .. registers[3]
end

end
::p62::
do
do
registers[3] = (registers[1] .. registers[3])
end

end
goto p115
::p66::
tick(66)
do
do
(registers)[6] = upvalues[0]["textures"]
end

end
::p67::
do
do
registers[6][registers[3]] = false
end

end
::p68::
do
do
(registers)[6] = nil
end

end
goto p123
::p80::
tick(80)
do
do
registers[8] = (false)
end

end
goto p14
::p89::
do
do
(registers)[5] = upvalues[0]["read_icon"]
end

end
::p90::
do
do
(registers)[6] = registers[4]
end

end
::p91::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p92::
do
do
(registers)[6] = environment["type"]
end

end
::p93::
do
do
(registers)[7] = registers[5]
end

end
::p94::
do
do
a = (6);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p95::
branch_taken=false
do
do
if registers[6] ~= "string" then
    branch_taken=true
end
end

end
if branch_taken then goto p66 end
goto p27
::p97::
tick(97)
do
do
(registers)[9] = registers[2]
end

end
::p98::
do
do
a = 6
top = a + 4 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p99::
do
do
(registers)[7] = upvalues[0]["textures"]
end

end
::p100::
do
do
(registers)[8] = registers[6]
end

end
::p101::
branch_taken=false
do
do
if registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p14 end
goto p80
::p103::
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
::p104::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p121
::p115::
do
do
(registers)[4] = upvalues[0]["textures"]
end

end
::p116::
do
do
(registers)[4] = registers[4][registers[3]]
end

end
::p117::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p55
::p121::
do
do
(registers)[3] = nil
end

end
::p122::
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
::p123::
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
::p125::
do
do
(registers)[6] = upvalues[1][125]
end

end
::p126::
do
do
(registers)[7] = registers[5]
end

end
::p127::
do
do
(registers)[8] = registers[2]
end

end
goto p97
end
end
