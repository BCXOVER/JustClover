
-- Function f141; 16 recovered instruction blocks.
F.f141=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f141",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f141 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p54
::p10::
tick(10)
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p11::
do
do
registers[1] = (registers[1]["variance"])
end

end
::p12::
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p13::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p19
::p16::
tick(16)
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p17::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p18::
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
::p19::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p20::
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p21::
do
do
registers[1] = (registers[1]["limit"])
end

end
goto p16
::p50::
tick(50)
do
do
a = (1)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["override"]
end

end
::p51::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p52::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
goto p10
::p54::
do
do
(registers)[1] = upvalues[0]["antiaim"]
end

end
::p55::
do
do
registers[1] = (registers[1]["fakelag"])
end

end
::p56::
do
do
registers[1] = (registers[1]["on"])
end

end
goto p50
end
end
