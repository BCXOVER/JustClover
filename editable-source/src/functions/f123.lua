
-- Function f123; 104 recovered instruction blocks.
F.f123=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f123",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f123 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p197
::p2::
tick(2)
do
do
registers[5]["fps_optimization_options"] = (registers[6])
end

end
::p3::
do
do
registers[6] = (registers[1]["maps"])
end

end
::p4::
do
do
registers[6] = (registers[6]["visuals"])
end

end
::p5::
do
do
a = (2)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
goto p49
::p7::
tick(7)
do
do
registers[5]["watermark_color"] = (registers[6])
end

end
::p8::
do
do
registers[6] = (registers[1]["maps"])
end

end
::p9::
do
do
registers[6] = (registers[6]["visuals"])
end

end
goto p62
::p11::
tick(11)
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p12::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p13::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p183 end
goto p115
::p15::
tick(15)
do
do
(registers)[6] = nil
end

end
goto p210
::p17::
tick(17)
do
do
(registers)[6] = upvalues[0]["ragebot"]
end

end
::p18::
do
do
registers[5]["ragebot"] = (registers[6])
end

end
::p19::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p20::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p21::
do
do
registers[5]["stubs"] = (registers[6])
end

end
::p22::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p23::
do
do
registers[6] = (registers[6]["widgets"])
end

end
::p24::
do
do
registers[5]["widgets"] = (registers[6])
end

end
::p25::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p26::
do
do
registers[6] = (registers[6]["animations"])
end

end
goto p217
::p28::
tick(28)
do
do
(registers)[6] = nil
end

end
goto p134
::p47::
tick(47)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p7 end
goto p144
::p49::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["add_handles"]
end

end
::p50::
do
do
registers[4] = ("visuals.native_indicators")
end

end
::p51::
do
do
registers[5] = {
}
end

end
goto p11
::p62::
do
do
a = (2)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p63::
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
::p64::
tick(64)
do
do
registers[5]["enabled"] = (registers[6])
end

end
::p65::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p66::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p67::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p235 end
::p68::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p69::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p70::
do
do
registers[6] = (registers[6]["native_indicators_gradient"])
end

end
goto p235
::p93::
tick(93)
do
do
registers[2]["visuals"] = (registers[3])
end

end
::p94::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["add_handles"]
end

end
::p95::
do
do
registers[4] = ("antiaim")
end

end
::p96::
do
do
registers[5] = {
}
end

end
::p97::
do
do
(registers)[6] = upvalues[0]["antiaim"]
end

end
::p98::
do
do
registers[6] = (registers[6]["conditions"])
end

end
::p99::
do
do
registers[5]["conditions"] = (registers[6])
end

end
::p100::
do
do
(registers)[6] = upvalues[0]["antiaim"]
end

end
::p101::
do
do
registers[6] = (registers[6]["features"])
end

end
::p102::
do
do
registers[5]["features"] = (registers[6])
end

end
::p103::
do
do
(registers)[6] = upvalues[0]["antiaim"]
end

end
::p104::
do
do
registers[6] = (registers[6]["gamesense"])
end

end
goto p121
::p115::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p116::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p117::
do
do
registers[6] = (registers[6]["native_indicators"])
end

end
goto p183
::p119::
tick(119)
do
do
(registers)[6] = nil
end

end
goto p64
::p121::
do
do
registers[5]["gamesense"] = (registers[6])
end

end
::p122::
do
do
(registers)[6] = upvalues[0]["builder"]
end

end
::p123::
do
do
registers[5]["builder"] = (registers[6])
end

end
::p124::
do
do
(registers)[6] = upvalues[0]["defensive"]
end

end
::p125::
do
do
registers[5]["defensive"] = (registers[6])
end

end
::p126::
do
do
registers[6] = (registers[1]["maps"])
end

end
::p127::
do
do
registers[6] = (registers[6]["antiaim"])
end

end
::p128::
do
do
a = (2)
top = a + 5 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p129::
do
do
a = (2)
z = registers[1]
registers[a + 1] = (z);
(registers)[a] = z["add_handles"]
end

end
::p130::
do
do
registers[4] = ("visuals")
end

end
::p131::
do
do
registers[5] = {
}
end

end
goto p17
::p134::
tick(134)
do
do
registers[5]["watermark_gradient"] = (registers[6])
end

end
::p135::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p136::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p137::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p228 end
goto p185
::p139::
tick(139)
do
do
registers[5]["gradient"] = (registers[6])
end

end
::p140::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p141::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p142::
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p208 end
goto p230
::p144::
do
do
(registers)[6] = nil
end

end
goto p7
::p158::
tick(158)
branch_taken=false
do
do
if not registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p47 end
goto p204
::p183::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p64 end
goto p119
::p185::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p186::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p187::
do
do
registers[6] = (registers[6]["watermark_position"])
end

end
goto p228
::p197::
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
::p198::
do
do
registers[2] = (registers[1]["maps"])
end

end
::p199::
do
do
registers[3] = {
}
end

end
::p200::
do
do
registers[2]["antiaim"] = (registers[3])
end

end
::p201::
do
do
registers[2] = (registers[1]["maps"])
end

end
::p202::
do
do
registers[3] = {
}
end

end
goto p93
::p204::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p205::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p206::
do
do
registers[6] = (registers[6]["watermark_accent_color"])
end

end
goto p47
::p208::
tick(208)
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p134 end
goto p28
::p210::
tick(210)
do
do
registers[5]["watermark_position"] = (registers[6])
end

end
::p211::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p212::
do
do
registers[6] = (registers[6]["stubs"])
end

end
goto p158
::p214::
tick(214)
do
do
(registers)[6] = nil
end

end
goto p139
::p217::
do
do
registers[5]["animations"] = (registers[6])
end

end
::p218::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p219::
do
do
registers[6] = (registers[6]["fast_ladder"])
end

end
::p220::
do
do
registers[5]["fast_ladder"] = (registers[6])
end

end
::p221::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p222::
do
do
registers[6] = (registers[6]["fps_optimization"])
end

end
::p223::
do
do
registers[5]["fps_optimization"] = (registers[6])
end

end
::p224::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p225::
do
do
registers[6] = (registers[6]["fps_optimization_options"])
end

end
goto p2
::p228::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p210 end
goto p15
::p230::
do
do
(registers)[6] = upvalues[0]["visuals"]
end

end
::p231::
do
do
registers[6] = (registers[6]["stubs"])
end

end
::p232::
do
do
registers[6] = (registers[6]["watermark_cs2_gradient"])
end

end
goto p208
::p235::
branch_taken=false
do
do
if registers[6] then
    branch_taken=true
end
end

end
if branch_taken then goto p139 end
goto p214
end
end
