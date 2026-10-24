
-- Function f274; 99 recovered instruction blocks.
F.f274=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f274",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f274 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p71
::p2::
tick(2)
do
do
registers[3] = (1)
end

end
::p3::
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
if branch_taken then goto p79 end
::p4::
tick(4)
do
do
registers[2] = (registers[2]["bomb_planting"])
end

end
::p5::
do
do
registers[2] = (registers[2] == true)
end

end
::p6::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p7::
do
do
(registers)[1] = upvalues[0]["capture_frame"]
end

end
::p8::
do
do
upvalues[0]["published_frame"] = (registers[1])
end

end
goto p62
::p20::
tick(20)
do
do
(registers)[5] = upvalues[0]["capture_items"]
end

end
::p21::
do
do
(registers)[5] = registers[5][registers[4]]
end

end
::p22::
do
do
(registers)[6] = upvalues[0]["render_items"]
end

end
::p23::
do
do
(registers)[6] = registers[6][registers[4]]
end

end
::p24::
branch_taken=false
do
do
if registers[6] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p127 end
goto p57
::p26::
tick(26)
do
do
(registers)[3] = upvalues[0]["sort_items"]
end

end
::p27::
do
do
a = 1;
(registers[a])(registers[a + 1], registers[a + 2])
top = a - 1
end

end
::p28::
do
do
(registers)[1] = upvalues[0]["clear_table"]
end

end
goto p160
::p30::
tick(30)
do
do
registers[3] = (1)
end

end
::p31::
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
if branch_taken then goto p122 end
::p32::
do
do
registers[11] = (code_metadata)
end

end
::p33::
do
do
registers[15] = (operand_g)
end

end
::p34::
do
do
registers[17] = operand_k
end

end
::p35::
do
do
registers[15][26] = 0
end

end
::p36::
do
do
registers[11][26] = 111
end

end
::p37::
do
do
registers[17][153] = 193
end

end
::p38::
do
do
for f = 10, 17, 1 do
    (registers)[f] = nil
end
end

end
goto p194
::p40::
tick(40)
do
do
registers[7] = (registers[5]["g"])
end

end
::p41::
do
do
registers[6]["g"] = (registers[7])
end

end
::p42::
do
do
registers[7] = (registers[5]["b"])
end

end
::p43::
do
do
registers[6]["b"] = (registers[7])
end

end
::p44::
do
do
registers[7] = (registers[5]["a"])
end

end
::p45::
do
do
registers[6]["a"] = (registers[7])
end

end
::p46::
do
do
registers[7] = (registers[5]["kind"])
end

end
::p47::
do
do
registers[6]["kind"] = (registers[7])
end

end
::p48::
do
do
registers[7] = (registers[5]["order"])
end

end
::p49::
do
do
registers[6]["order"] = (registers[7])
end

end
::p50::
do
do
registers[7] = (registers[5]["sequence"])
end

end
::p51::
do
do
registers[6]["sequence"] = (registers[7])
end

end
goto p75
::p53::
tick(53)
do
do
(registers)[3] = upvalues[0]["published_count"]
end

end
::p54::
do
do
(registers)[4] = upvalues[0]["capture_count"]
end

end
::p55::
branch_taken=false
do
do
if registers[3] ~= registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p185
::p57::
do
do
registers[7] = {
}
end

end
::p58::
do
do
(registers)[6] = registers[7]
end

end
::p59::
do
do
(registers)[7] = upvalues[0]["render_items"]
end

end
::p60::
do
do
(registers[7])[registers[4]] = registers[6]
end

end
goto p127
::p62::
do
do
(registers)[1] = upvalues[0]["capture_count"]
end

end
::p63::
do
do
upvalues[0]["published_count"] = (registers[1])
end

end
::p64::
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
::p66::
tick(66)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p67::
do
do
(registers)[1] = upvalues[0]["update_planting_state"]
end

end
::p68::
do
do
(registers)[2] = upvalues[0]["current_keys"]
end

end
goto p4
::p71::
do
do
(registers)[1] = upvalues[0]["published_frame"]
end

end
::p72::
do
do
(registers)[2] = upvalues[0]["capture_frame"]
end

end
::p73::
branch_taken=false
do
do
if registers[1] ~= registers[2] then
    branch_taken=true
end
end

end
if branch_taken then goto p167 end
goto p53
::p75::
do
do
registers[7] = (registers[5]["key"])
end

end
::p76::
do
do
registers[6]["key"] = (registers[7])
end

end
::p77::
do
do
registers[7] = (registers[6]["key"])
end

end
goto p154
::p79::
tick(79)
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
if branch_taken then goto p102 end
goto p194
::p82::
tick(82)
do
do
(registers)[7] = upvalues[0]["current_keys"]
end

end
::p83::
do
do
registers[8] = (registers[6]["key"])
end

end
::p84::
do
do
registers[7][registers[8]] = true
end

end
::p85::
do
do
(registers)[7] = upvalues[0]["visible_keys"]
end

end
goto p98
::p87::
tick(87)
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p88::
do
do
(registers)[1] = upvalues[0]["capture_count"]
end

end
::p89::
do
do
registers[1] = registers[1] + 1
end

end
::p90::
do
do
(registers)[2] = upvalues[0]["max_items"]
end

end
goto p2
::p98::
do
do
registers[8] = (registers[6]["key"])
end

end
::p99::
do
do
(registers)[7] = registers[7][registers[8]]
end

end
::p100::
branch_taken=false
do
do
if registers[7] then
    branch_taken=true
end
end

end
if branch_taken then goto p122 end
goto p156
::p102::
do
do
(registers)[5] = upvalues[0]["render_items"]
end

end
::p103::
do
do
(registers[5])[registers[4]] = registers[0]
end

end
goto p79
::p118::
tick(118)
do
do
upvalues[0]["render_count"] = (registers[1])
end

end
::p119::
do
do
registers[1] = (1)
end

end
::p120::
do
do
(registers)[2] = upvalues[0]["capture_count"]
end

end
goto p30
::p122::
tick(122)
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
if branch_taken then goto p20 end
goto p87
::p127::
do
do
registers[7] = (registers[5]["text"])
end

end
::p128::
do
do
registers[6]["text"] = (registers[7])
end

end
::p129::
do
do
registers[7] = (registers[5]["r"])
end

end
::p130::
do
do
registers[6]["r"] = (registers[7])
end

end
goto p40
::p154::
branch_taken=false
do
do
if registers[7] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p122 end
goto p82
::p156::
do
do
(registers)[7] = upvalues[0]["reset_animation"]
end

end
::p157::
do
do
registers[8] = (registers[6]["key"])
end

end
::p158::
do
do
a = (7)
registers[a](registers[a + 1])
top = (a - 1)
end

end
goto p122
::p160::
do
do
(registers)[2] = upvalues[0]["visible_keys"]
end

end
::p161::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p162::
do
do
(registers)[1] = environment["pairs"]
end

end
::p163::
do
do
(registers)[2] = upvalues[0]["current_keys"]
end

end
::p164::
do
do
a = 1
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
::p165::
branch_taken=false
do
do
R = ({
    [1] = R,
    [3] = v,
    [5] = U,
    [2] = n,
})
top = (1)
v = (registers[top])
n = (registers[top + 1])
U = (registers[top + 2])
branch_taken=true
end

end
if branch_taken then goto p186 end
goto p40
::p167::
do
do
(registers)[1] = upvalues[0]["clear_table"]
end

end
::p168::
do
do
(registers)[2] = upvalues[0]["current_keys"]
end

end
::p169::
do
do
a = (1)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p170::
do
do
(registers)[1] = upvalues[0]["capture_count"]
end

end
goto p118
::p185::
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
::p186::
tick(186)
branch_taken=false
do
do
a = (1)
z, q = v(n, U)
if not (z) then

else
    registers[a + 1] = (z);
    (registers)[a + 2] = q
    branch_taken=true
    U = (z)
end
end

end
if branch_taken then goto p188 end
goto p66
::p188::
do
do
(registers)[3] = upvalues[0]["visible_keys"]
end

end
::p189::
do
do
registers[3][registers[2]] = true
end

end
goto p186
::p194::
do
do
v = R[3]
n = R[2]
U = R[5]
R = R[1]
end

end
::p195::
do
do
(registers)[1] = environment["table"]
end

end
::p196::
do
do
registers[1] = (registers[1]["sort"])
end

end
::p197::
do
do
(registers)[2] = upvalues[0]["render_items"]
end

end
goto p26
end
end
