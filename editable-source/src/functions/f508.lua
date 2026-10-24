
-- Function f508; 34 recovered instruction blocks.
F.f508=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f508",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f508 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p85
::p2::
tick(2)
do
do
registers[7] = (registers[7] * 57.295779513082)
end

end
::p3::
do
do
registers[8] = (90)
end

end
::p4::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p5::
do
do
registers[5]["x"] = (registers[6])
end

end
goto p45
::p13::
tick(13)
do
do
(registers)[7] = upvalues[0][152]
end

end
::p14::
do
do
registers[8] = (registers[3]["z"])
end

end
::p15::
do
do
(registers)[9] = registers[4]
end

end
::p16::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
goto p2
::p37::
tick(37)
do
do
registers[7] = (registers[3]["y"])
end

end
::p38::
do
do
(registers)[6] = registers[6] * registers[7]
end

end
::p39::
do
do
(registers)[5] = registers[5] + registers[6]
end

end
goto p52
::p45::
do
do
registers[6] = (upvalues[1])
end

end
::p46::
do
do
(registers)[7] = upvalues[0][152]
end

end
::p47::
do
do
registers[8] = (registers[3]["y"])
end

end
::p48::
do
do
registers[9] = (registers[3]["x"])
end

end
::p49::
do
do
a = 7
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p50::
do
do
registers[7] = (registers[7] * 180)
end

end
goto p78
::p52::
do
do
a = (4);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p53::
do
do
registers[5] = {
}
end

end
::p54::
do
do
registers[6] = (upvalues[1])
end

end
goto p13
::p78::
do
do
(registers)[8] = environment["math"]
end

end
::p79::
do
do
registers[8] = (registers[8]["pi"])
end

end
::p80::
do
do
registers[7] = (registers[7] / registers[8])
end

end
::p81::
do
do
registers[8] = (180)
end

end
::p82::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p83::
do
do
registers[5]["y"] = (registers[6])
end

end
::p84::
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
::p85::
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
::p86::
do
do
registers[3] = (registers[1] - registers[2])
end

end
::p87::
do
do
(registers)[4] = upvalues[0][155]
end

end
::p89::
do
do
registers[5] = (registers[3]["x"])
end

end
::p90::
do
do
registers[6] = (registers[3]["x"])
end

end
::p91::
do
do
(registers)[5] = registers[5] * registers[6]
end

end
::p92::
do
do
registers[6] = (registers[3]["y"])
end

end
goto p37
end
end
