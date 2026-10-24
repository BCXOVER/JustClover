-- Fixed-input crash routine; the original repeatedly parsed eight spaces.
F.f109=function(function_metadata,upvalues)
    return function()
        if startup_blocked then return end
        current_function,current_pc="f109",0
        error("ANDROMEDA_PROTECTION_FAILURE: disabled fixed-input crash routine f109",0)
    end
end
