
-- Function f326; 30 recovered instruction blocks.
F.f326=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f326",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f326 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p30
::p4::
tick(4)
do
do
registers[2] = (registers[1]["write_revision"])
end

end
::p5::
do
do
registers[2] = registers[2] + 1
end

end
::p6::
do
do
registers[1]["write_revision"] = (registers[2])
end

end
goto p66
::p27::
tick(27)
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p28::
branch_taken=false
do
do
if registers[2] ~= "table" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p4 end
goto p39
::p30::
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
::p31::
do
do
(registers)[2] = environment["type"]
end

end
::p32::
do
do
registers[3] = (registers[1]["configs_db"])
end

end
goto p27
::p35::
tick(35)
do
do
registers[4] = (registers[1]["configs_db"])
end

end
::p36::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p37::
do
do
registers[2] = (true)
end

end
::p38::
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
::p39::
do
do
registers[2] = (false)
end

end
::p40::
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
::p41::
tick(41)
do
do
registers[3] = (registers[1]["write_revision"])
end

end
::p42::
do
do
registers[2]["revision"] = (registers[3])
end

end
::p43::
do
do
registers[2] = (registers[1]["configs_db"])
end

end
::p44::
do
do
(registers)[3] = upvalues[0][30]
end

end
::p60::
do
do
top = 3;
(registers)[top] = registers[top]()
end

end
::p61::
do
do
registers[2]["saved_at"] = (registers[3])
end

end
::p62::
do
do
(registers)[2] = upvalues[0][122]
end

end
::p63::
do
do
registers[3] = (registers[1]["db"])
end

end
goto p99
::p66::
do
do
registers[2] = (registers[1]["configs_db"])
end

end
::p67::
do
do
registers[3] = (registers[1]["version"])
end

end
::p68::
do
do
registers[2]["version"] = (registers[3])
end

end
::p69::
do
do
registers[2] = (registers[1]["configs_db"])
end

end
goto p41
::p99::
do
do
registers[4] = (registers[1]["configs_db"])
end

end
::p100::
do
do
a = 2;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p101::
do
do
(registers)[2] = upvalues[0][122]
end

end
::p102::
do
do
registers[3] = (registers[1]["backup_db"])
end

end
goto p35
end
end
