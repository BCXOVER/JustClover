
-- Function f382; 13 recovered instruction blocks.
F.f382=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f382",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f382 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p27
::p9::
tick(9)
do
do
registers[7] = ("ease_out")
end

end
::p10::
do
do
a = (2)
z = 6
top = a + z - 1
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = F
            F[3] = (registers[f])
            F[1] = (3);
            (N)[f] = nil
        end
    end
end
return registers[a](unpack_range(top, registers, a + 1))
end

end
::p19::
tick(19)
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p20::
do
do
registers[3] = "native_indicator_slide:" .. registers[3]
end

end
::p21::
do
do
registers[4] = (0)
end

end
::p22::
do
do
registers[5] = (11)
end

end
::p23::
do
do
registers[6] = (0.01)
end

end
goto p9
::p25::
tick(25)
do
do
registers[4] = ("")
end

end
goto p19
::p27::
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
::p28::
do
do
registers[2] = (upvalues[0])
end

end
::p29::
do
do
(registers)[3] = environment["tostring"]
end

end
::p33::
do
do
(registers)[4] = registers[1]
end

end
::p34::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p25
end
end
