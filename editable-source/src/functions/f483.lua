
-- Function f483; 50 recovered instruction blocks.
F.f483=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f483",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f483 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p59
::p2::
tick(2)
do
do
registers[5] = (upvalues[0])
end

end
::p3::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_int"]
end

end
::p4::
do
do
(registers)[7] = registers[4]
end

end
::p5::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p153
::p7::
tick(7)
do
do
a = 3;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p8::
do
do
a = (upvalues[2])
a[2][a[1]] = (false)
end

end
goto p126
::p16::
tick(16)
do
do
registers[3] = (upvalues[0])
end

end
::p17::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["set_int"]
end

end
::p18::
do
do
registers[5] = (upvalues[0])
end

end
::p19::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
goto p34
::p21::
tick(21)
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p93
::p32::
tick(32)
do
do
registers[7] = (1)
end

end
goto p103
::p34::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p35::
do
do
registers[5] = (registers[5] == "1")
end

end
::p36::
branch_taken=false
do
do
if not registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p45 end
goto p81
::p38::
tick(38)
do
do
registers[4] = (registers[1]["type"])
end

end
::p39::
do
do
registers[4] = (registers[4] == "knife")
end

end
::p40::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p68 end
goto p2
::p42::
tick(42)
do
do
a = 5;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
goto p93
::p45::
tick(45)
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p133
::p59::
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
::p60::
do
do
registers[2] = (upvalues[0])
end

end
::p61::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p63 end
goto p67
::p63::
do
do
(registers)[2] = upvalues[1]["viewmodel_options"]
end

end
::p64::
do
do
a = (2)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p65::
do
do
registers[4] = ("Opposite Knife")
end

end
goto p99
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
do
do
registers[5] = (upvalues[0])
end

end
::p69::
do
do
a = (5)
z = registers[5]
registers[a + 1] = (z);
(registers)[a] = z["set_raw_int"]
end

end
::p70::
do
do
(registers)[7] = registers[4]
end

end
::p71::
branch_taken=false
do
do
if not registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p103 end
goto p32
::p73::
tick(73)
do
do
registers[3] = (upvalues[0])
end

end
::p74::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get_string"]
end

end
::p75::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p76::
do
do
registers[3] = (registers[3] == "1")
end

end
goto p38
::p79::
tick(79)
do
do
registers[7] = (0)
end

end
goto p21
::p81::
do
do
registers[5] = (1)
end

end
goto p45
::p93::
do
do
a = (upvalues[2])
a[2][a[1]] = (true)
end

end
goto p126
::p95::
tick(95)
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p73
::p97::
tick(97)
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p42 end
goto p129
::p99::
do
do
a = 2
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p100::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p95
::p103::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p79
::p126::
tick(126)
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
::p129::
do
do
a = (registers)
z = 7
end

end
::p130::
do
do
q = 1;
(a)[z] = (q)
end

end
goto p42
::p133::
do
do
registers[5] = (0)
end

end
goto p7
::p135::
do
do
a = (upvalues[2]);
(registers)[3] = a[2][a[1]]
end

end
::p136::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p16
::p153::
do
do
registers[7] = (0)
end

end
goto p97
end
end
