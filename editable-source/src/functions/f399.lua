
-- Function f399; 42 recovered instruction blocks.
F.f399=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f399",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f399 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p18
::p2::
tick(2)
do
do
(registers)[5] = upvalues[0][registers[4]]
end

end
::p3::
do
do
(registers)[6] = upvalues[1][registers[5]]
end

end
::p4::
branch_taken=false
do
do
if registers[6] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p50
::p8::
tick(8)
do
do
registers[10] = (code_metadata)
end

end
::p9::
do
do
registers[16] = operand_k
end

end
::p10::
do
do
(registers)[17] = (41 + 370)
end

end
::p11::
do
do
(registers)[17] = (registers[17] - 275)
end

end
::p12::
do
do
registers[17] = 7042 + registers[17]
end

end
::p13::
do
do
registers[17] = registers[17] + -7171
end

end
::p14::
do
do
registers[10][19] = (registers[17])
end

end
::p15::
do
do
registers[16][42] = 17
end

end
::p16::
do
do
for f = 9, 18, 1 do
    (registers)[f] = nil
end
end

end
::p18::
tick(18)
do
do
registers[1] = (1)
end

end
::p19::
do
do
registers[2] = (upvalues[0])
end

end
::p20::
do
do
registers[2] = (#registers[2])
end

end
::p21::
do
do
a = (registers)
z = 3
end

end
::p22::
do
do
q = 1;
(a)[z] = (q)
end

end
::p23::
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
if branch_taken then goto p44 end
::p24::
do
do
registers[26] = operand_k
end

end
::p25::
do
do
registers[24] = (operand_g)
end

end
::p26::
do
do
registers[24][4] = 6
end

end
::p27::
do
do
registers[24][46] = 0
end

end
::p28::
do
do
registers[26][58] = 41
end

end
::p29::
do
do
for f = 19, 26, 1 do
    (registers)[f] = nil
end
end

end
goto p18
::p32::
tick(32)
do
do
registers[7] = (registers[6]["raw"])
end

end
::p33::
do
do
registers[7]["hide_view_model_zoomed"] = true
end

end
goto p44
::p35::
tick(35)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p36::
do
do
registers[1] = (upvalues[0])
end

end
::p37::
do
do
registers[1] = (#registers[1])
end

end
::p38::
do
do
registers[2] = (1)
end

end
::p39::
do
do
registers[3] = (-1)
end

end
::p40::
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
if branch_taken then goto p56 end
goto p8
::p44::
tick(44)
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
if branch_taken then goto p2 end
goto p35
::p46::
tick(46)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p47::
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
::p48::
tick(48)
do
do
(upvalues[0])[registers[4]] = registers[0]
end

end
goto p56
::p50::
do
do
a = registers
z = (7)
q = (registers)
end

end
::p51::
do
do
m = 6
q = q[m]
end

end
::p52::
do
do
m = ("raw")
q = q[m]
end

end
::p53::
do
do
(a)[z] = q
end

end
::p54::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p44 end
goto p32
::p56::
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
if branch_taken then goto p48 end
goto p46
end
end
