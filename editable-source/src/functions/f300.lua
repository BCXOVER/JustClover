
-- Function f300; 50 recovered instruction blocks.
F.f300=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f300",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f300 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p66
::p2::
tick(2)
do
do
(registers)[2] = upvalues[0]["miss_counter"]
end

end
::p3::
do
do
registers[2][registers[1]] = 1
end

end
goto p117
::p6::
tick(6)
do
do
(registers)[2] = upvalues[0]["resolved"]
end

end
::p7::
do
do
registers[3] = {
}
end

end
::p8::
do
do
registers[3]["angle"] = 0
end

end
::p9::
do
do
registers[3]["yaw"] = 0
end

end
::p10::
do
do
(registers[2])[registers[1]] = registers[3]
end

end
goto p97
::p12::
tick(12)
do
do
registers[3]["stable_side"] = 1
end

end
::p13::
do
do
registers[3]["last_yaw_delta"] = 0
end

end
::p14::
do
do
(registers[2])[registers[1]] = registers[3]
end

end
::p16::
tick(16)
do
do
(registers)[2] = upvalues[0]["miss_counter"]
end

end
::p17::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p18::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p117 end
goto p2
::p52::
tick(52)
do
do
(registers)[2] = upvalues[0]["ent_store"]
end

end
::p53::
do
do
registers[3] = {
}
end

end
::p54::
do
do
(registers[2])[registers[1]] = registers[3]
end

end
goto p121
::p56::
tick(56)
do
do
registers[3]["stored_yaw_sp"] = (registers[4])
end

end
::p57::
do
do
registers[4] = {
}
end

end
::p58::
do
do
registers[3]["stored_eye_angles"] = (registers[4])
end

end
::p59::
do
do
registers[3]["last_side"] = 1
end

end
::p61::
do
do
registers[3]["last_angle"] = 0
end

end
::p62::
do
do
registers[3]["jitter_ticks"] = 0
end

end
::p63::
do
do
registers[3]["positive_votes"] = 0
end

end
::p64::
do
do
registers[3]["negative_votes"] = 0
end

end
goto p12
::p66::
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
::p67::
do
do
(registers)[2] = upvalues[0]["resolved"]
end

end
::p68::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p69::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p97 end
goto p6
::p97::
do
do
(registers)[2] = upvalues[0]["records"]
end

end
::p98::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p99::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p16 end
goto p105
::p102::
tick(102)
do
do
(registers)[4] = upvalues[0]["ent_store"]
end

end
::p103::
do
do
(registers)[4] = registers[4][registers[1]]
end

end
::p104::
do
do
if not (N) then

else
    for f, F in next, N do
        if f >= 1 then
            (F)[2] = F;
            (F)[3] = (registers[f]);
            (F)[1] = 3
            N[f] = (nil)
        end
    end
end
a = (2)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p105::
do
do
(registers)[2] = upvalues[0]["records"]
end

end
::p106::
do
do
registers[3] = {
}
end

end
::p107::
do
do
registers[3]["n_yaw"] = (registers[0])
end

end
::p108::
do
do
(registers)[4] = upvalues[1][23]
end

end
goto p127
::p117::
do
do
(registers)[2] = upvalues[0]["ent_store"]
end

end
::p118::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p119::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p121 end
goto p52
::p121::
do
do
(registers)[2] = upvalues[0]["resolved"]
end

end
::p122::
do
do
(registers)[2] = registers[2][registers[1]]
end

end
::p123::
do
do
(registers)[3] = upvalues[0]["records"]
end

end
::p124::
do
do
(registers)[3] = registers[3][registers[1]]
end

end
goto p102
::p127::
do
do
top = 4;
(registers)[top] = registers[top]()
end

end
::p128::
do
do
registers[3]["yaw_update_tick"] = (registers[4])
end

end
::p129::
do
do
registers[4] = {
}
end

end
::p130::
do
do
registers[3]["stored_yaw_angles"] = (registers[4])
end

end
::p131::
do
do
registers[4] = {
}
end

end
goto p56
end
end
