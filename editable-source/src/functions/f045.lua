
-- Function f45; 34 recovered instruction blocks.
F.f45=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f45",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f45 pc="..pc,0) end
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
branch_taken=false
if type(code_metadata[1])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=1",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p41 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f45 pc=1",0)
::p3::
tick(3)
branch_taken=false
if type(code_metadata[3])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=3",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p3 end
::p4::
tick(4)
branch_taken=false
if type(code_metadata[4])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=4",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p32 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f45 pc=4",0)
::p22::
tick(22)
branch_taken=false
if type(code_metadata[22])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=22",0) end
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
    (registers)[2 + 3] = v
    branch_taken=true
end
end

end
if branch_taken then goto p31 end
::p23::
branch_taken=false
if type(code_metadata[23])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=23",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p3 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f45 pc=23",0)
::p31::
branch_taken=false
if type(code_metadata[31])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=31",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p68 end
::p32::
if type(code_metadata[32])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=32",0) end
do
do
a = (2);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p33::
if type(code_metadata[33])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=33",0) end
do
do
(registers)[3] = environment["pcall"]
end

end
::p34::
if type(code_metadata[34])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=34",0) end
do
do
a = (D.f46)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[4] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p35::
if type(code_metadata[35])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=35",0) end
do
do
a = (3)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p36::
if type(code_metadata[36])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=36",0) end
do
do
a = (D.f47)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[3] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p37::
if type(code_metadata[37])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=37",0) end
do
do
top = (3)
registers[top]()
top = top - 1
end

end
::p38::
if type(code_metadata[38])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=38",0) end
do
do
a = (4)
z = 6
end

end
::p39::
if type(code_metadata[39])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=39",0) end
do
do
for f = a, z do
    q = (registers)
    m = (f)
    f = nil;
    (q)[m] = f
end
end

end
::p40::
branch_taken=false
if type(code_metadata[40])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=40",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p56 end
::p41::
branch_taken=false
if type(code_metadata[41])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=41",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p67 end
::p42::
tick(42)
if type(code_metadata[42])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=42",0) end
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
::p43::
if type(code_metadata[43])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=43",0) end
do
do
a = (D.f53)
z = (a[4])
q = (#z)
m = q > 0 and {
}
x = make_function(a, m);
(setfenv)(x, environment);
(registers)[2] = x
if m then
    for f = 1, q do
        a = (z[f])
        x = (a[2])
        S = (a[1])
        if x == 0 then
            if not N then
                N = {
                }
            end
            H = N[S]
            if not H then
                H = ({
                    [2] = registers,
                    [1] = S,
                });
                (N)[S] = H
            end
            (m)[f - 1] = H
        else
            if x ~= 1 then
                (m)[f - 1] = upvalues[S]
            else
                m[f - 1] = (registers[S])
            end
        end
    end
end
end

end
::p44::
if type(code_metadata[44])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=44",0) end
do
do
registers[3] = ("\162L\154\023\026\134\173%\180gB\024Y\009\244\144\014\009I=\179\\\169B\255S\031<\1928*\020\177\194]\179")
end

end
::p45::
branch_taken=false
if type(code_metadata[45])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=45",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p4 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f45 pc=45",0)
::p56::
if type(code_metadata[56])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=56",0) end
do
do
for f = 2, 4, 1 do
    (registers)[f] = nil
end
end

end
::p57::
if type(code_metadata[57])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=57",0) end
do
do
for f = 0, 2, 1 do
    (registers)[f] = nil
end
end

end
::p58::
if type(code_metadata[58])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=58",0) end
do
do
registers[0] = function_metadata
end

end
::p59::
if type(code_metadata[59])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=59",0) end
do
do
registers[1] = (8)
end

end
::p60::
if type(code_metadata[60])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=60",0) end
do
do
(registers)[0] = registers[0][registers[1]]
end

end
::p61::
if type(code_metadata[61])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=61",0) end
do
do
registers[1] = {
}
end

end
::p62::
if type(code_metadata[62])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=62",0) end
do
do
registers[2] = (1)
end

end
::p63::
if type(code_metadata[63])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=63",0) end
do
do
registers[3] = (#registers[0])
end

end
::p64::
if type(code_metadata[64])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=64",0) end
do
do
a = (registers)
z = 4
end

end
::p65::
if type(code_metadata[65])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=65",0) end
do
do
q = 1;
(a)[z] = (q)
end

end
::p66::
branch_taken=false
if type(code_metadata[66])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=66",0) end
do
do
R = {
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
}
a = 2
U = registers[a + 2] + 0
n = (registers[a + 1] + 0)
v = (registers[a] - U)
branch_taken=true
end

end
if branch_taken then goto p22 end
::p67::
branch_taken=false
if type(code_metadata[67])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=67",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p42 end
::p68::
if type(code_metadata[68])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=68",0) end
do
do
(registers[0])[registers[5]] = registers[1]
end

end
::p69::
branch_taken=false
if type(code_metadata[69])=="table" then error("ANDROMEDA_DESTROYED_INSTRUCTION: f45 pc=69",0) end
do
do
branch_taken=true
end

end
if branch_taken then goto p22 end
error("ANDROMEDA_INVALID_FALLTHROUGH: f45 pc=69",0)
end
end
