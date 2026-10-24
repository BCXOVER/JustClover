
-- Function f383; 25 recovered instruction blocks.
F.f383=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f383",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f383 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p32
::p10::
tick(10)
do
do
(registers)[2] = upvalues[0]["output_console"]
end

end
::p11::
do
do
(registers)[3] = registers[1]
end

end
::p12::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p80
::p24::
tick(24)
do
do
a = (4)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p35
::p26::
tick(26)
do
do
registers[4] = (1)
end

end
::p27::
do
do
registers[5] = {
}
end

end
::p28::
do
do
registers[5]["segments"] = (registers[1])
end

end
goto p75
::p30::
tick(30)
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
::p32::
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
::p33::
branch_taken=false
do
do
if registers[1] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p30
::p35::
tick(35)
do
do
(registers)[2] = upvalues[0]["items"]
end

end
::p36::
do
do
registers[2] = (#registers[2])
end

end
::p37::
do
do
(registers)[3] = upvalues[0]["max_items"]
end

end
::p38::
branch_taken=false
do
do
if not (registers[3] < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p50 end
goto p70
::p50::
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
::p70::
do
do
(registers)[4] = environment["table"]
end

end
::p71::
do
do
registers[4] = (registers[4]["remove"])
end

end
::p72::
do
do
(registers)[5] = upvalues[0]["items"]
end

end
goto p24
::p75::
do
do
(registers)[6] = upvalues[1][30]
end

end
::p76::
do
do
top = 6;
(registers)[top] = registers[top]()
end

end
::p77::
do
do
registers[5]["time"] = (registers[6])
end

end
::p78::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p35
::p80::
do
do
(registers)[2] = environment["table"]
end

end
::p81::
do
do
registers[2] = (registers[2]["insert"])
end

end
::p82::
do
do
(registers)[3.0] = upvalues[0]["items"]
end

end
goto p26
end
end
