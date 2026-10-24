
make_function=function(function_metadata,upvalues)
    local factory=F[function_metadata.id]
    if not factory then error("ANDROMEDA_UNKNOWN_PROTOTYPE: "..tostring(function_metadata.id),0) end
    return factory(function_metadata,upvalues)
end
