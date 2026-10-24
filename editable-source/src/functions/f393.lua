
-- Function f393; 45 recovered instruction blocks.
F.f393=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f393",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f393 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p95
::p3::
tick(3)
do
do
registers[3] = ("dt+")
end

end
::p4::
do
do
registers[4] = new_frame(4)
end

end
::p5::
do
do
registers[5] = (0)
end

end
::p6::
do
do
registers[6] = (255)
end

end
goto p40
::p8::
tick(8)
do
do
a = upvalues[1];
(registers)[2] = (a[2][a[1]]["exploits"])
end

end
::p9::
do
do
registers[2] = (registers[2]["defensive"])
end

end
::p10::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
goto p118
::p21::
tick(21)
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
a = (2)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p22::
tick(22)
branch_taken=false
do
do
if not (0 < registers[2]) then
    branch_taken=true
end
end

end
if branch_taken then goto p140 end
goto p3
::p32::
tick(32)
do
do
a = (upvalues[1]);
(registers)[2] = a[2][a[1]]
end

end
::p33::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
::p34::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p116 end
goto p82
::p36::
tick(36)
do
do
a = upvalues[1];
(registers)[2] = (a[2][a[1]]["exploits"])
end

end
::p37::
do
do
registers[2] = (registers[2]["defensive"])
end

end
::p38::
do
do
registers[2] = (registers[2]["left"])
end

end
goto p85
::p40::
do
do
registers[7] = (0)
end

end
::p41::
do
do
registers[8] = (255)
end

end
::p42::
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p43::
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
a = (3)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p57::
tick(57)
do
do
a = (4)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p58::
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
a = (3)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p61::
tick(61)
do
do
registers[6] = (255)
end

end
::p62::
do
do
registers[7] = (0)
end

end
::p63::
do
do
registers[8] = (255)
end

end
goto p57
::p67::
tick(67)
do
do
registers[2] = (0)
end

end
goto p22
::p82::
do
do
a = upvalues[1];
(registers)[2] = (a[2][a[1]]["exploits"])
end

end
::p83::
do
do
registers[2] = (registers[2] ~= registers[0])
end

end
goto p116
::p85::
tick(85)
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p22 end
goto p67
::p87::
tick(87)
do
do
registers[2] = ("dt")
end

end
::p88::
do
do
registers[3] = new_frame(4)
end

end
::p89::
do
do
registers[4] = (255)
end

end
::p90::
do
do
registers[5] = (64)
end

end
::p91::
do
do
registers[6] = (64)
end

end
::p92::
do
do
registers[7] = (255)
end

end
::p93::
do
do
a = (3)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
goto p21
::p95::
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
::p96::
do
do
registers[2] = (upvalues[0])
end

end
::p97::
do
do
(registers)[3] = registers[1]
end

end
::p98::
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p99::
branch_taken=false
do
do
if registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p32 end
goto p87
::p116::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p118 end
goto p8
::p118::
branch_taken=false
do
do
if not registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p36
::p140::
do
do
registers[3] = ("dt")
end

end
::p141::
do
do
registers[4] = new_frame(4)
end

end
::p142::
do
do
registers[5] = (0)
end

end
goto p61
end
end
