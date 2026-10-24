F.f2=function(function_metadata,upvalues)
    return function()
        error("ANDROMEDA_ENVIRONMENT_CHECK_FAILED: "..tostring(current_function).." pc="..tostring(current_pc),0)
    end
end
