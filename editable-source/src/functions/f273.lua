
-- Function f273; 7 recovered instruction blocks.
F.f273=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f273",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f273 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p2
::p2::
do
do
(registers)[1] = upvalues[0][86]
end

end
::p3::
do
do
registers[2] = ("play ui/armsrace_level_up.wav")
end

end
::p4::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p7::
do
do
(registers)[1] = upvalues[0][86]
end

end
::p8::
do
do
registers[2] = ("sv_cheats 1;mp_roundtime_defuse 99999;mp_warmup_end;mp_buytime 99999999;mp_buy_anywhere 1;sv_infinite_ammo 1;impulse 101;sv_airaccelerate 100;sv_regeneration_force_on 1;mp_respawn_on_death_ct 1;mp_respawn_on_death_t 1;bot_stop 1;mp_roundtime_hostage 10000")
end

end
::p9::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p29::
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
end
end
