
-- Function f282; 31 recovered instruction blocks.
F.f282=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f282",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f282 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p81
::p11::
tick(11)
do
do
registers[6] = (upvalues[0])
end

end
::p12::
do
do
(registers)[7] = registers[3]
end

end
::p13::
do
do
a = 5
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p14::
do
do
a = (registers)
end

end
::p15::
do
do
z = (6)
q = (environment)
end

end
::p16::
do
do
m = "bit"
q = (q[m])
a[z] = q
end

end
goto p102
::p32::
tick(32)
do
do
registers[7] = (true)
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
return registers[7]
end

end
::p49::
tick(49)
do
do
registers[7] = (false)
end

end
::p50::
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
::p53::
tick(53)
do
do
a = (registers)
z = 7
end

end
::p54::
do
do
q = false;
(a)[z] = (q)
end

end
::p55::
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
::p57::
tick(57)
do
do
(registers)[7] = environment["entity"]
end

end
::p58::
do
do
registers[7] = (registers[7]["get_local_player"])
end

end
::p59::
do
do
top = 7;
(registers)[top] = registers[top]()
end

end
::p60::
do
do
registers[8] = (registers[2]["entity"])
end

end
::p61::
branch_taken=false
do
do
if registers[7] == registers[8] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p53
::p64::
tick(64)
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p65::
do
do
registers[7] = (registers[2]["hint"])
end

end
::p66::
branch_taken=false
do
do
if registers[6] == registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p57 end
goto p49
::p81::
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
::p82::
do
do
registers[3] = (registers[1]["command_number"])
end

end
::p83::
do
do
registers[4] = (registers[3] * 4)
end

end
::p84::
do
do
(registers)[5] = environment["bit"]
end

end
::p85::
do
do
registers[5] = (registers[5]["bxor"])
end

end
goto p11
::p102::
do
do
registers[6] = (registers[6]["bxor"])
end

end
::p103::
do
do
(registers)[7] = registers[4]
end

end
::p104::
do
do
a = (registers)
z = 8
end

end
::p105::
do
do
q = registers
m = 5
q = (q[m])
end

end
::p106::
do
do
(a)[z] = q
end

end
goto p64
end
end
