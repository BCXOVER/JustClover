
-- Function f180; 17 recovered instruction blocks.
F.f180=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f180",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f180 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p15
::p2::
tick(2)
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
::p15::
do
do
registers[1] = {
}
end

end
::p16::
do
do
upvalues[0]["delay_states"] = (registers[1])
end

end
::p17::
do
do
upvalues[0]["delay_next_switch_packet"] = 1
end

end
::p18::
do
do
upvalues[0]["delay_switch_count"] = 0
end

end
::p19::
do
do
upvalues[0]["delay_signature"] = (registers[0])
end

end
::p21::
do
do
registers[1] = {
}
end

end
::p22::
do
do
upvalues[0]["defensive_yaw_double_states"] = (registers[1])
end

end
::p23::
do
do
registers[1] = {
}
end

end
goto p47
::p26::
tick(26)
do
do
upvalues[0]["last_exploit_charged"] = (registers[0])
end

end
::p27::
do
do
upvalues[0]["defensive_pitch_delay_side"] = false
end

end
::p28::
do
do
registers[1] = (upvalues[2])
end

end
::p29::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
goto p2
::p47::
do
do
upvalues[0]["hidden_modifier_meta_states"] = (registers[1])
end

end
::p48::
do
do
registers[1] = (upvalues[1])
end

end
::p49::
do
do
top = (1)
registers[top]()
top = top - 1
end

end
::p50::
do
do
upvalues[0]["last_exploit_key_active"] = (registers[0])
end

end
goto p26
end
end
