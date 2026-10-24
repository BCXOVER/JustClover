
-- Function f151; 34 recovered instruction blocks.
F.f151=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f151",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f151 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p31
::p10::
tick(10)
do
do
registers[5]["type"] = "180"
end

end
::p11::
do
do
(registers)[5] = upvalues[0]["yaw"]
end

end
::p12::
do
do
registers[5]["body"] = 0
end

end
goto p40
::p21::
tick(21)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p104 end
goto p70
::p31::
do
do
a = {
    ...,
}
for f = 1, 4, 1 do
    registers[f] = (a[f])
end
end

end
::p32::
do
do
(registers)[5] = upvalues[0]["pitch"]
end

end
::p33::
do
do
registers[5]["type"] = "Custom"
end

end
::p34::
do
do
(registers)[5] = upvalues[0]["pitch"]
end

end
goto p108
::p36::
tick(36)
do
do
upvalues[0]["freestanding"] = false
end

end
::p37::
do
do
upvalues[0]["edge_yaw"] = false
end

end
::p38::
do
do
upvalues[0]["safehead_active"] = true
end

end
::p39::
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
::p40::
do
do
(registers)[5] = upvalues[0]["yaw"]
end

end
::p41::
do
do
(registers)[6] = registers[2]
end

end
::p42::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
::p44::
do
do
registers[6] = (0)
end

end
goto p56
::p48::
tick(48)
do
do
registers[5]["value"] = (registers[6])
end

end
::p49::
do
do
(registers)[5] = upvalues[0]["body_yaw"]
end

end
::p50::
do
do
registers[5]["freestanding"] = false
end

end
::p52::
do
do
(registers)[5] = upvalues[0]["yaw"]
end

end
::p53::
do
do
registers[5]["base"] = "At targets"
end

end
::p54::
do
do
(registers)[5] = upvalues[0]["yaw"]
end

end
goto p10
::p56::
do
do
registers[5]["add"] = (registers[6])
end

end
::p57::
do
do
(registers)[5] = upvalues[0]["yaw"]
end

end
::p58::
do
do
registers[5]["value"] = 0
end

end
goto p36
::p70::
do
do
registers[6] = ("Opposite")
end

end
goto p104
::p73::
tick(73)
do
do
registers[6] = (0)
end

end
goto p48
::p102::
tick(102)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p73
::p104::
do
do
registers[5]["type"] = (registers[6])
end

end
::p105::
do
do
(registers)[5] = upvalues[0]["body_yaw"]
end

end
::p106::
do
do
(registers)[6] = registers[4]
end

end
goto p102
::p108::
do
do
registers[5]["value"] = 89
end

end
::p109::
do
do
(registers)[5] = upvalues[0]["body_yaw"]
end

end
::p110::
do
do
(registers)[6] = registers[3]
end

end
goto p21
end
end
