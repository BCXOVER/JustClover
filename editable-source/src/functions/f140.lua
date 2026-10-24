
-- Function f140; 18 recovered instruction blocks.
F.f140=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f140",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f140 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p78
::p16::
tick(16)
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p66
::p19::
tick(19)
do
do
(upvalues[0])[registers[1]] = registers[3]
end

end
::p20::
do
do
(registers)[6] = registers[3]
end

end
::p21::
do
do
(registers)[7] = registers[4]
end

end
::p22::
do
do
(registers)[8] = registers[5]
end

end
::p23::
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
a = (6)
return unpack_range(a + 4 - 2, registers, a)
end

end
::p24::
tick(24)
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
::p28::
tick(28)
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
::p29::
tick(29)
branch_taken=false
do
do
if registers[2] == registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p28 end
goto p19
::p46::
tick(46)
branch_taken=false
do
do
if registers[4] ~= 3 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p76
::p64::
branch_taken=false
do
do
if registers[4] ~= 0 then

else
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p46
::p66::
do
do
(upvalues[0])[registers[1]] = registers[3]
end

end
::p67::
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
::p76::
branch_taken=false
do
do
if registers[5] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p29 end
goto p24
::p78::
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
::p79::
do
do
(registers)[2] = upvalues[0][registers[1]]
end

end
::p80::
do
do
a = (3)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p81::
do
do
a = 3
z = (2)
q = 4
if z == 0 then

else
    top = (a + z - 1)
end
m, x = nil
if z ~= 1 then
    m, x = pack_returns(registers[a](unpack_range(top, registers, a + 1)))
else
    m, x = pack_returns(registers[a]())
end
if q ~= 1 then
    if q ~= 0 then
        m = a + q - 2
        top = (m + 1)
    else
        m = m + a - 1
        top = m
    end
    z = 0
    for f = a, m do
        z = (z + 1);
        (registers)[f] = x[z]
    end
else
    top = a - 1
end
end

end
goto p16
end
end
