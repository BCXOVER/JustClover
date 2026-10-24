-- Fixed-input crash routine; the original repeatedly parsed eight spaces.
F.f116=function(function_metadata,upvalues)
    return function()
        if startup_blocked then return end
        current_function,current_pc="f116",0
        error("ANDROMEDA_PROTECTION_FAILURE: disabled fixed-input crash routine f116",0)
    end
end
