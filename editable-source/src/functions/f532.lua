
-- Function f532; 29 recovered instruction blocks.
F.f532=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f532",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f532 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p15
::p7::
tick(7)
do
do
a = upvalues[1];
(a[2][a[1]])["manual"] = (registers[2])
end

end
::p8::
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
::p9::
tick(9)
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
::p10::
tick(10)
do
do
a = upvalues[1];
(a[2][a[1]])["manual"] = (registers[2])
end

end
::p11::
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
::p12::
tick(12)
do
do
a = 4
z = (2)
q = 3
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
::p13::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p19 end
goto p60
::p15::
tick(15)
do
do
a = {
    ...,
}
for f = 1, 3, 1 do
    registers[f] = (a[f])
end
end

end
::p16::
do
do
registers[4] = (upvalues[0])
end

end
::p17::
do
do
(registers)[5] = registers[1]
end

end
goto p12
::p19::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
::p21::
tick(21)
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p23 end
goto p9
::p23::
tick(23)
do
do
a = upvalues[1];
(registers)[6] = (a[2][a[1]]["manual"])
end

end
::p24::
branch_taken=false
do
do
if registers[6] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p85
::p47::
tick(47)
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
::p56::
tick(56)
do
do
a = upvalues[1];
(a[2][a[1]])["manual"] = (registers[2])
end

end
::p57::
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
::p58::
tick(58)
branch_taken=false
do
do
if registers[5] ~= 2 then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p78
::p60::
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
::p62::
branch_taken=false
do
do
if registers[5] ~= 1 then
    branch_taken=true
end
end

end
if branch_taken then goto p58 end
goto p96
::p64::
tick(64)
do
do
a = upvalues[1];
(a[2][a[1]])["manual"] = (registers[0])
end

end
::p65::
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
::p78::
do
do
a = upvalues[1];
(registers)[6] = (a[2][a[1]]["manual"])
end

end
::p79::
branch_taken=false
do
do
if registers[6] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p56 end
goto p64
::p81::
tick(81)
do
do
a = upvalues[1];
(a[2][a[1]])["manual"] = (registers[0])
end

end
::p82::
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
::p85::
do
do
a = upvalues[1];
(a[2][a[1]])["manual"] = (registers[0])
end

end
::p86::
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
::p96::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p81
end
end
