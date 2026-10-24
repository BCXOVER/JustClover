
-- Function f64; 28 recovered instruction blocks.
F.f64=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f64",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f64 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p73
::p2::
tick(2)
do
do
registers[4] = (0)
end

end
::p3::
do
do
registers[5] = (9)
end

end
::p4::
do
do
registers[6] = (1)
end

end
::p5::
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
if branch_taken then goto p77 end
goto p43
::p18::
tick(18)
do
do
registers[8] = (upvalues[0])
end

end
::p19::
do
do
top = 8;
(registers)[top] = registers[top]()
end

end
::p20::
do
do
(registers)[3] = registers[3] + registers[8]
end

end
goto p54
::p29::
tick(29)
do
do
registers[4] = (upvalues[1])
end

end
::p30::
do
do
registers[5] = {
}
end

end
::p31::
do
do
(registers)[6] = upvalues[2]["MAGIC_SUM_CHECK_FAILED"]
end

end
goto p47
::p43::
tick(43)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p44::
branch_taken=false
do
do
if not (3 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p94 end
goto p29
::p47::
do
do
registers[5]["ban_num"] = (registers[6])
end

end
::p48::
do
do
registers[6] = ("%d [MGC][0x02]")
end

end
::p49::
do
do
a = (6)
z = registers[6]
registers[a + 1] = (z);
(registers)[a] = z["format"]
end

end
::p50::
do
do
(registers)[8] = registers[2]
end

end
::p51::
do
do
a = 6
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p52::
do
do
registers[5]["ban_info"] = (registers[6])
end

end
::p53::
do
do
if not (N) then

else
    for f, F in next, N do
        if not (f >= 1) then

        else
            F[2] = (F)
            F[3] = (registers[f]);
            (F)[1] = (3)
            N[f] = (nil)
        end
    end
end
a = (4)
return registers[a](registers[a + 1])
end

end
::p54::
do
do
(registers)[9] = registers[1][registers[8]]
end

end
::p55::
branch_taken=false
do
do
if not registers[9] then
    branch_taken=true
end
end

end
if branch_taken then goto p79 end
goto p104
::p73::
do
do
registers[1] = {
}
end

end
::p74::
do
do
registers[2] = (0)
end

end
::p75::
do
do
registers[3] = (1)
end

end
goto p2
::p77::
tick(77)
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
if branch_taken then goto p18 end
goto p43
::p79::
do
do
registers[1][registers[8]] = true
end

end
goto p77
::p94::
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
::p104::
do
do
registers[2] = registers[2] + 1
end

end
goto p77
end
end
