-- Recovered arithmetic XOR helpers. The original bodies handle non-uint32 inputs.
for _,function_id in ipairs({"f3","f48","f112","f117","f419"}) do
local arithmetic_xor_factory=F[function_id]
F[function_id]=function(function_metadata,upvalues)
    local arithmetic_xor=arithmetic_xor_factory(function_metadata,upvalues)
    return function(left,right)
        if startup_blocked then return end
        if type(left)=="number" and type(right)=="number" and
            left>=0 and left<=4294967295 and right>=0 and right<=4294967295 and
            left%1==0 and right%1==0 then
            current_function,current_pc=function_id,1
            if startup_active then
                startup_fast_xor_calls=startup_fast_xor_calls+1
                startup_poll_remaining=startup_poll_remaining-1
                if startup_poll_remaining<=0 then
                    startup_poll_remaining=startup_poll_interval
                    check_startup_clock()
                end
            end
            local result=bit.bxor(left,right)
            if result<0 then result=result+4294967296 end
            return result
        end
        if startup_active then startup_slow_xor_calls=startup_slow_xor_calls+1 end
        return arithmetic_xor(left,right)
    end
end
end

