
-- Function f284; 10 recovered instruction blocks.
F.f284=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f284",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f284 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p42
::p20::
tick(20)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p21::
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
::p25::
tick(25)
branch_taken=false
do
do
a = false
v = v + U
if U <= 0 then
    a = (v >= n)
else
    a = (v <= n)
end
if a then
    (registers)[1 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p20
::p28::
do
do
registers[5] = (upvalues[0])
end

end
::p29::
do
do
(registers)[6] = registers[4]
end

end
::p30::
do
do
a = (5)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p25
::p42::
do
do
registers[1] = (1)
end

end
::p43::
do
do
registers[2] = (64)
end

end
::p44::
do
do
registers[3] = (1)
end

end
::p45::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 1
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p25 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f284 pc=45",0)
end
end
