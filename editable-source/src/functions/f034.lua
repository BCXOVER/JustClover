
-- Function f34; 26 recovered instruction blocks.
F.f34=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f34",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f34 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p1
::p1::
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
::p2::
do
do
registers[3] = ("")
end

end
::p3::
do
do
registers[4] = (1)
end

end
goto p53
::p7::
tick(7)
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
    (registers)[4 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p48 end
goto p80
::p18::
tick(18)
do
do
(registers)[20] = constant_cache[7]
end

end
::p19::
do
do
registers[21] = ("\182L")
end

end
::p20::
do
do
a = (20);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p21::
do
do
(registers)[19] = registers[19] + registers[20]
end

end
::p22::
do
do
registers[19] = 31665 + registers[19]
end

end
::p23::
do
do
registers[19] = registers[19] + -31666
end

end
::p24::
do
do
registers[17][50] = (registers[19])
end

end
::p25::
do
do
registers[18][52] = 47
end

end
::p26::
do
do
for f = 11, 21, 1 do
    (registers)[f] = nil
end
end

end
goto p48
::p29::
tick(29)
do
do
registers[19] = (150)
end

end
goto p18
::p31::
tick(31)
do
do
registers[9] = (registers[1] - registers[8])
end

end
::p32::
do
do
registers[1] = registers[9] / 256
end

end
goto p7
::p48::
do
do
registers[8] = registers[1] % 256
end

end
::p49::
do
do
(registers)[9] = upvalues[0][registers[8]]
end

end
::p50::
do
do
registers[3] = (registers[9] .. registers[3])
end

end
goto p31
::p53::
do
do
(registers)[5] = registers[2]
end

end
::p54::
do
do
registers[6] = (1)
end

end
::p55::
branch_taken=false
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 4
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p7 end
::p58::
branch_taken=false
do
do
if registers[19] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p29
::p80::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p81::
do
do
(registers)[4] = registers[3]
end

end
::p82::
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
return registers[4]
end

end
end
end
