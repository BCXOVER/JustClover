
-- Function f402; 173 recovered instruction blocks.
F.f402=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f402",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f402 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p61
::p2::
tick(2)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p3::
do
do
registers[5] = ("BODY")
end

end
::p4::
do
do
registers[6] = (1)
end

end
::p5::
do
do
registers[7] = (true)
end

end
::p6::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p7::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p312 end
goto p268
::p14::
tick(14)
do
do
registers[4] = ("")
end

end
goto p340
::p21::
tick(21)
branch_taken=false
do
do
if registers[2] ~= "FS" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p203 end
goto p143
::p25::
tick(25)
branch_taken=false
do
do
if registers[2] ~= "DMG" then
    branch_taken=true
end
end

end
if branch_taken then goto p83 end
goto p85
::p29::
tick(29)
do
do
a = 5
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p30::
branch_taken=false
do
do
if registers[5] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p38 end
goto p361
::p32::
tick(32)
do
do
registers[7] = (true)
end

end
::p33::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p34::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p201 end
goto p168
::p38::
branch_taken=false
do
do
if registers[2] ~= "HC" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p136 end
goto p270
::p40::
tick(40)
do
do
registers[8] = (true)
end

end
::p41::
do
do
a = 4
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p42::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p361 end
goto p116
::p59::
tick(59)
branch_taken=false
do
do
if registers[2] ~= "DUCK" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p128 end
goto p138
::p61::
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
::p62::
do
do
(registers)[2] = environment["string"]
end

end
::p63::
do
do
registers[2] = (registers[2]["upper"])
end

end
::p64::
do
do
(registers)[3] = environment["tostring"]
end

end
goto p363
::p74::
tick(74)
do
do
registers[3] = ("bomb_planting")
end

end
::p75::
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
return registers[3]
end

end
::p76::
tick(76)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p77::
do
do
registers[6] = ("SHOT")
end

end
::p78::
do
do
registers[7] = (1)
end

end
::p79::
do
do
registers[8] = (true)
end

end
goto p367
::p81::
tick(81)
do
do
registers[3] = ("safe")
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
return registers[3]
end

end
::p83::
branch_taken=false
do
do
if registers[2] ~= "OSAA" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p314
::p85::
tick(85)
do
do
registers[3] = ("damage")
end

end
::p86::
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
return registers[3]
end

end
::p87::
tick(87)
branch_taken=false
do
do
if registers[2] ~= "DA" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p149 end
goto p304
::p90::
tick(90)
branch_taken=false
do
do
if registers[2] ~= "MD" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p318
::p92::
tick(92)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p93::
do
do
registers[6] = ("PLANTED")
end

end
::p94::
do
do
registers[7] = (1)
end

end
::p95::
do
do
registers[8] = (true)
end

end
goto p327
::p116::
do
do
a = (5)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p117::
do
do
registers[7] = ("C4")
end

end
::p118::
do
do
registers[8] = (1)
end

end
::p119::
do
do
registers[9] = (true)
end

end
goto p29
::p122::
tick(122)
do
do
registers[3] = ("fatal")
end

end
::p123::
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
return registers[3]
end

end
::p126::
tick(126)
do
do
registers[3] = ("osaa")
end

end
::p127::
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
return registers[3]
end

end
::p128::
tick(128)
do
do
registers[3] = ("duck")
end

end
::p129::
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
return registers[3]
end

end
::p130::
tick(130)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p131::
do
do
registers[6] = ("DAMAGE")
end

end
::p132::
do
do
registers[7] = (1)
end

end
::p133::
do
do
registers[8] = (true)
end

end
::p134::
do
do
a = 4
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p213
::p136::
tick(136)
do
do
registers[3] = ("hc")
end

end
::p137::
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
return registers[3]
end

end
::p138::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p139::
do
do
registers[5] = ("FD")
end

end
::p140::
do
do
registers[6] = (1)
end

end
::p141::
do
do
registers[7] = (true)
end

end
goto p324
::p143::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p144::
do
do
registers[5] = ("FREESTAND")
end

end
::p145::
do
do
registers[6] = (1)
end

end
::p146::
do
do
registers[7] = (true)
end

end
::p147::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
goto p155
::p149::
tick(149)
do
do
registers[3] = ("dormant")
end

end
::p150::
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
return registers[3]
end

end
::p151::
tick(151)
do
do
registers[7] = (true)
end

end
::p152::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p153::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p90 end
goto p136
::p155::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p349 end
goto p203
::p157::
tick(157)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p158::
do
do
registers[5] = ("SAFE")
end

end
::p159::
do
do
registers[6] = (1)
end

end
::p160::
do
do
registers[7] = (true)
end

end
goto p190
::p163::
tick(163)
branch_taken=false
do
do
if registers[2] ~= "BODY" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p268 end
goto p2
::p166::
tick(166)
do
do
(registers)[3] = nil
end

end
::p167::
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
return registers[3]
end

end
::p168::
tick(168)
do
do
registers[3] = ("ping")
end

end
::p169::
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
return registers[3]
end

end
::p170::
tick(170)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p171::
do
do
registers[5] = ("FATAL")
end

end
::p172::
do
do
registers[6] = (1)
end

end
::p173::
do
do
registers[7] = (true)
end

end
goto p351
::p184::
tick(184)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p185::
do
do
registers[5] = ("DOUBLE")
end

end
::p186::
do
do
registers[6] = (1)
end

end
goto p262
::p190::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p191::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p163 end
goto p81
::p201::
branch_taken=false
do
do
if registers[2] ~= "SAFE" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p81 end
goto p157
::p203::
do
do
registers[3] = ("fs")
end

end
::p204::
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
return registers[3]
end

end
::p213::
branch_taken=false
do
do
if registers[4] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p25
::p216::
tick(216)
branch_taken=false
do
do
if registers[2] ~= "B" then
    branch_taken=true
end
end

end
if branch_taken then goto p281 end
goto p332
::p233::
tick(233)
do
do
a = (4)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p234::
do
do
registers[6] = ("BOMB")
end

end
::p235::
do
do
registers[7] = (1)
end

end
goto p40
::p247::
tick(247)
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p248::
do
do
registers[5] = ("B%s*%-")
end

end
::p249::
do
do
registers[6] = (1)
end

end
::p250::
do
do
registers[7] = (false)
end

end
::p251::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p252::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p361 end
goto p233
::p262::
do
do
registers[7] = (true)
end

end
::p263::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p264::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p322 end
::p266::
tick(266)
do
do
registers[3] = ("dt")
end

end
::p267::
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
return registers[3]
end

end
::p268::
do
do
registers[3] = ("body")
end

end
::p269::
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
return registers[3]
end

end
::p270::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p271::
do
do
registers[5] = ("HC ")
end

end
::p272::
do
do
registers[6] = (1)
end

end
goto p151
::p281::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p282::
do
do
registers[5] = ("PLANTING")
end

end
::p283::
do
do
registers[6] = (1)
end

end
::p284::
do
do
registers[7] = (true)
end

end
::p285::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p286::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p370 end
goto p74
::p288::
tick(288)
do
do
registers[7] = (true)
end

end
::p289::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p290::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p85 end
goto p130
::p298::
tick(298)
do
do
registers[7] = (true)
end

end
::p299::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p300::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p59 end
goto p149
::p304::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p305::
do
do
registers[5] = ("DORMANT")
end

end
::p306::
do
do
registers[6] = (1)
end

end
goto p298
::p308::
tick(308)
do
do
registers[7] = (true)
end

end
::p309::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p310::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p126 end
goto p76
::p312::
branch_taken=false
do
do
if registers[2] ~= "FATAL" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p122 end
goto p170
::p314::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p315::
do
do
registers[5] = ("HIDE")
end

end
::p316::
do
do
registers[6] = (1)
end

end
goto p308
::p318::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p319::
do
do
registers[5] = ("MD ")
end

end
::p320::
do
do
registers[6] = (1)
end

end
goto p288
::p322::
branch_taken=false
do
do
if registers[2] ~= "PING" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p168 end
goto p375
::p324::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p325::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p21 end
goto p128
::p327::
do
do
a = 4
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p328::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p354 end
goto p347
::p332::
tick(332)
do
do
registers[3] = ("bomb_planting")
end

end
::p333::
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
return registers[3]
end

end
::p340::
tick(340)
do
do
a = 3
z = (2)
q = 0
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
::p341::
do
do
a = 2
registers[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p342::
branch_taken=false
do
do
if registers[2] ~= "A" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p332 end
goto p216
::p345::
tick(345)
do
do
registers[3] = ("bomb_hp")
end

end
::p346::
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
return registers[3]
end

end
::p347::
tick(347)
do
do
registers[3] = ("planted_bomb")
end

end
::p348::
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
return registers[3]
end

end
::p349::
branch_taken=false
do
do
if registers[2] ~= "DT" then

else
    branch_taken=true
end
end

end
if branch_taken then goto p266 end
goto p184
::p351::
do
do
a = 3
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p352::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p166 end
goto p122
::p354::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["match"]
end

end
::p355::
do
do
registers[5] = ("^%-?%d+%s*HP$")
end

end
::p356::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p357::
branch_taken=false
do
do
if registers[3] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p247 end
goto p345
::p361::
do
do
registers[3] = ("bomb")
end

end
::p362::
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
return registers[3]
end

end
::p363::
do
do
(registers)[4] = registers[1]
end

end
::p364::
branch_taken=false
do
do
if registers[4] then
    branch_taken=true
end
end

end
if branch_taken then goto p340 end
goto p14
::p367::
do
do
a = 4
top = a + 5 - 1;
(registers)[a] = registers[a](unpack_range(top, registers, a + 1))
top = a
end

end
::p368::
branch_taken=false
do
do
if registers[4] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p87 end
goto p126
::p370::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["match"]
end

end
::p371::
do
do
registers[5] = ("^[AB]%s*%-%s*[%d%.]+S")
end

end
::p372::
do
do
a = 3
registers[a] = registers[a](registers[a + 1], registers[a + 2])
top = (a)
end

end
::p373::
branch_taken=false
do
do
if registers[3] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p347 end
goto p92
::p375::
do
do
a = (3)
z = registers[2]
registers[a + 1] = (z);
(registers)[a] = z["find"]
end

end
::p376::
do
do
registers[5] = ("PING")
end

end
::p377::
do
do
registers[6] = (1)
end

end
goto p32
end
end
