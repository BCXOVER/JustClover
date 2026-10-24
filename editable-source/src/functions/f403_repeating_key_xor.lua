-- XOR a byte string with a repeating key (original implementation used ffi buffers).
F.f403=function(function_metadata,upvalues)
    return function(key,input)
        local output={}
        for i=1,#input do
            output[i]=string.char(bit.band(bit.bxor(string.byte(input,i),string.byte(key,(i-1)%#key+1)),255))
        end
        return table.concat(output)
    end
end
