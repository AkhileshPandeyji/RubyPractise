def getSS(str)
    if(str.length == 0)
        baseRes = []
        baseRes.push("")
        return baseRes
    end

    ch = str[0,1]
    newStr = str[1,str.length]
    recRes = getSS(newStr)
    myRecRes = []
    for i in (0..recRes.length-1)
        myRecRes.push(ch+recRes[i])  
        myRecRes.push("_"+recRes[i])         
    end

    return myRecRes

end

res = getSS("abc")
puts res

