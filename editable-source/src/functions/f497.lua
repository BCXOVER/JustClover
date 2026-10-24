
-- Function f497; 40 recovered instruction blocks.
F.f497=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f497",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f497 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p100
::p11::
tick(11)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p12::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p53 end
goto p28
::p14::
tick(14)
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p15::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p24 end
goto p76
::p18::
tick(18)
do
do
registers[4]["target"] = (registers[5])
end

end
::p19::
do
do
(registers)[5] = environment["tonumber"]
end

end
::p20::
do
do
registers[6] = (registers[1]["damage"])
end

end
goto p14
::p24::
tick(24)
do
do
registers[4]["damage"] = (registers[5])
end

end
::p25::
do
do
(registers)[5] = environment["tonumber"]
end

end
::p26::
do
do
registers[6] = (registers[1]["hitgroup"])
end

end
goto p11
::p28::
do
do
registers[5] = (0)
end

end
::p53::
do
do
registers[4]["hitgroup"] = (registers[5])
end

end
::p54::
do
do
(registers)[5] = environment["tonumber"]
end

end
::p55::
do
do
registers[6] = (registers[1]["hit_chance"])
end

end
::p56::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
goto p114
::p71::
tick(71)
do
do
registers[4]["chance"] = (registers[5])
end

end
::p72::
do
do
(registers)[5] = environment["tonumber"]
end

end
::p73::
do
do
registers[6] = (registers[1]["backtrack"])
end

end
goto p128
::p76::
do
do
registers[5] = (0)
end

end
goto p24
::p89::
tick(89)
do
do
registers[4]["backtrack"] = (registers[5])
end

end
::p90::
do
do
(registers[2])[registers[3]] = registers[4]
end

end
::p91::
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
::p92::
tick(92)
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
::p100::
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
::p101::
branch_taken=false
do
do
if registers[1] == registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p92 end
goto p106
::p104::
tick(104)
do
do
registers[5] = (0)
end

end
goto p71
::p106::
do
do
registers[2] = (registers[1]["id"])
end

end
::p107::
branch_taken=false
do
do
if registers[2] ~= registers[0] then
    branch_taken=true
end
end

end
if branch_taken then goto p135 end
goto p92
::p109::
tick(109)
do
do
(registers)[5] = environment["tonumber"]
end

end
::p110::
do
do
registers[6] = (registers[1]["target"])
end

end
::p111::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p112::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p18 end
goto p123
::p114::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p71 end
goto p104
::p123::
do
do
registers[5] = (registers[1]["target"])
end

end
goto p18
::p126::
tick(126)
do
do
registers[5] = (0)
end

end
goto p89
::p128::
do
do
a = (5);
(registers)[a] = registers[a](registers[a + 1])
top = (a)
end

end
::p129::
branch_taken=false
do
do
if registers[5] then
    branch_taken=true
end
end

end
if branch_taken then goto p89 end
goto p126
::p135::
do
do
(registers)[2] = upvalues[0]["shots"]
end

end
::p136::
do
do
registers[3] = (registers[1]["id"])
end

end
::p137::
do
do
registers[4] = {
}
end

end
goto p109
end
end
