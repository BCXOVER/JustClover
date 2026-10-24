
-- Function f392; 62 recovered instruction blocks.
F.f392=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f392",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f392 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p14
::p3::
tick(3)
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p137
::p5::
tick(5)
do
do
registers[4] = (0)
end

end
::p6::
do
do
registers[5] = (153)
end

end
::p7::
do
do
registers[6] = (255)
end

end
::p8::
do
do
a = (2)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p9::
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
a = (1)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p10::
tick(10)
do
do
(registers)[1] = upvalues[2]["antiaim"]
end

end
::p11::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p12::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p176 end
goto p165
::p14::
do
do
(registers)[1] = upvalues[0]["is_quick_peek"]
end

end
::p15::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p16::
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p62 end
goto p32
::p21::
tick(21)
do
do
registers[5] = (139)
end

end
::p22::
do
do
registers[6] = (230)
end

end
::p23::
do
do
registers[7] = (255)
end

end
goto p35
::p32::
do
do
a = (upvalues[1]);
(registers)[1] = a[2][a[1]]
end

end
::p33::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p184 end
goto p156
::p35::
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
::p36::
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
::p38::
tick(38)
do
do
registers[3] = (registers[1]["freestanding"])
end

end
::p39::
do
do
a = (3)
z = registers[3]
registers[a + 1] = (z);
(registers)[a] = z["get"]
end

end
::p40::
do
do
a = (3);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p41::
branch_taken=false
do
do
if not registers[3] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p67
::p50::
tick(50)
do
do
a = upvalues[1];
(registers)[2] = (a[2][a[1]]["manual"])
end

end
::p51::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p128
::p53::
tick(53)
branch_taken=false
do
do
if registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p3 end
goto p107
::p62::
tick(62)
do
do
registers[1] = ("E-PEEK")
end

end
::p63::
do
do
registers[2] = new_frame(4)
end

end
::p64::
do
do
registers[3] = (255)
end

end
goto p5
::p67::
do
do
registers[2] = ("FREESTANDING")
end

end
::p68::
do
do
registers[3] = new_frame(4)
end

end
::p69::
do
do
registers[4] = (209)
end

end
goto p21
::p107::
do
do
(registers)[1] = nil
end

end
goto p3
::p109::
tick(109)
do
do
registers[2] = ("DYNAMIC")
end

end
::p110::
do
do
registers[3] = new_frame(4)
end

end
::p111::
do
do
registers[4] = (177)
end

end
::p112::
do
do
registers[5] = (151)
end

end
::p113::
do
do
registers[6] = (255)
end

end
::p114::
do
do
registers[7] = (255)
end

end
goto p182
::p128::
do
do
registers[1] = ("MANUAL")
end

end
::p129::
do
do
registers[2] = new_frame(4)
end

end
::p130::
do
do
registers[3] = (209)
end

end
::p132::
do
do
registers[4] = (139)
end

end
::p133::
do
do
registers[5] = (230)
end

end
::p134::
do
do
registers[6] = (255)
end

end
::p135::
do
do
a = (2)
z = 0
q = registers[a]
for f = 1, 4, 1 do
    (q)[z + f] = registers[a + f]
end
end

end
::p136::
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
a = (1)
return unpack_range(a + 3 - 2, registers, a)
end

end
::p137::
do
do
registers[2] = (registers[1]["freestanding"])
end

end
::p138::
branch_taken=false
do
do
if registers[2] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p109 end
goto p38
::p156::
do
do
a = upvalues[1];
(registers)[2] = (a[2][a[1]]["e_peek"])
end

end
::p157::
branch_taken=false
do
do
if registers[2] ~= true then
    branch_taken=true
end
end

end
if branch_taken then goto p184 end
goto p62
::p165::
do
do
(registers)[1] = upvalues[2]["antiaim"]
end

end
::p166::
do
do
registers[1] = (registers[1]["features"])
end

end
::p167::
do
do
registers[1] = (registers[1] ~= registers[0])
end

end
::p176::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
::p178::
do
do
(registers)[1] = upvalues[2]["antiaim"]
end

end
::p179::
do
do
registers[1] = (registers[1]["features"])
end

end
::p180::
do
do
registers[1] = (registers[1]["hotkeys"])
end

end
goto p53
::p182::
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
::p183::
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
::p184::
do
do
a = (upvalues[1]);
(registers)[1] = a[2][a[1]]
end

end
::p185::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p10 end
goto p50
end
end
