str = ARGV[0]

def permute(str)

    if str.empty?()
        baseRes = []
        baseRes.push("")
        return baseRes
    end
    myRecRes = []

    for i in (0..str.length-1)
        ch = str[i]
        left = str[0,i]
        right = str[i+1,str.length]
        recRes = permute(left+right)        
        for i in (0..recRes.length-1)
            myRecRes.push(ch+recRes[i])
        end
    end
    
    return myRecRes
end

puts permute(str)