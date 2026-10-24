
-- Function f266; 12 recovered instruction blocks.
F.f266=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f266",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f266 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p20
::p2::
tick(2)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p45
::p4::
tick(4)
do
do
registers[2] = (registers[1]["chokedcommands"])
end

end
::p5::
do
do
upvalues[0]["choked_commands"] = (registers[2])
end

end
goto p19
::p7::
do
do
registers[2] = (registers[1]["chokedcommands"])
end

end
::p8::
branch_taken=false
do
do
if not (16 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p27 end
goto p4
::p19::
tick(19)
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
::p20::
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
::p21::
do
do
(registers)[2] = upvalues[0]["is_enabled"]
end

end
::p22::
do
do
top = 2;
(registers)[top] = registers[top]()
end

end
goto p2
::p27::
do
do
upvalues[0]["choked_commands"] = 0
end

end
goto p19
::p45::
do
do
upvalues[0]["choked_commands"] = 0
end

end
::p46::
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
