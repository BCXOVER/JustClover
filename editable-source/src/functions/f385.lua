
-- Function f385; 36 recovered instruction blocks.
F.f385=function(function_metadata,upvalues)
local operand_i,operand_w,operand_g,operand_I,code_metadata,operand_t,operand_k=function_metadata[2],function_metadata[10],function_metadata[6],function_metadata[1],function_metadata[8],function_metadata[3],function_metadata[11]
local frame_size=function_metadata[7]
return function(...)
if startup_blocked then return end
local registers,top,environment,W,n,m,x,N,H,v,R,Q,q=new_frame(frame_size),1,andromeda_environment,1
local T,U,_,S,z,a=0
local instructions_left=startup_instruction_limit
local branch_taken
local function tick(pc)
 current_function,current_pc="f385",pc
 if startup_active then
  instructions_left=instructions_left-1
  if instructions_left<=0 then error("ANDROMEDA_STARTUP_LIMIT: f385 pc="..pc,0) end
  startup_poll_remaining=startup_poll_remaining-1
if startup_poll_remaining<=0 then
startup_poll_remaining=startup_poll_interval
check_startup_clock()
end
 end
end
 tick(1)
goto p89
::p11::
tick(11)
do
do
upvalues[1]["capture_frame"] = -1
end

end
::p12::
do
do
upvalues[1]["published_frame"] = -1
end

end
::p13::
do
do
upvalues[1]["published_count"] = 0
end

end
::p16::
do
do
upvalues[1]["last_capture_time"] = 0
end

end
::p17::
do
do
(registers)[2] = upvalues[1]["update_planting_state"]
end

end
::p18::
do
do
registers[3] = (false)
end

end
goto p41
::p20::
tick(20)
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
::p21::
tick(21)
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p22::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
::p23::
do
do
registers[3] = ("indicator")
end

end
::p24::
do
do
(registers)[4] = upvalues[1]["capture"]
end

end
::p25::
do
do
(registers)[5] = registers[1]
end

end
goto p61
::p33::
tick(33)
do
do
upvalues[1]["active"] = (registers[1])
end

end
::p34::
do
do
upvalues[1]["capture_count"] = 0
end

end
::p35::
do
do
upvalues[1]["render_count"] = 0
end

end
goto p11
::p37::
tick(37)
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
::p41::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p42::
do
do
(registers)[2] = upvalues[1]["clear_table"]
end

end
::p43::
do
do
(registers)[3] = upvalues[1]["visible_keys"]
end

end
::p44::
do
do
a = (2)
registers[a](registers[a + 1])
top = (a - 1)
end

end
::p45::
do
do
(registers)[2] = upvalues[1]["clear_table"]
end

end
::p46::
do
do
(registers)[3] = upvalues[1]["current_keys"]
end

end
goto p21
::p61::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
end

end
::p62::
do
do
(registers)[2] = upvalues[2]["set_callback"]
end

end
::p63::
do
do
registers[3] = ("paint")
end

end
::p64::
do
do
(registers)[4] = upvalues[1]["paint"]
end

end
::p65::
do
do
(registers)[5] = registers[1]
end

end
::p66::
do
do
a = (2)
top = a + 4 - 1
registers[a](unpack_range(top, registers, a + 1))
top = (a - 1)
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
::p89::
do
do
(registers)[1] = upvalues[0]["skip_native_cleanup"]
end

end
::p90::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p91::
branch_taken=false
do
do
if not registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p93 end
goto p37
::p93::
do
do
(registers)[1] = upvalues[1]["is_enabled"]
end

end
::p94::
do
do
top = 1;
(registers)[top] = registers[top]()
end

end
::p95::
do
do
(registers)[2] = upvalues[1]["active"]
end

end
::p96::
branch_taken=false
do
do
if registers[2] ~= registers[1] then
    branch_taken=true
end
end

end
if branch_taken then goto p33 end
goto p20
end
end
