arr = [4,3,2,7]

max = arr.max()



for i in (0..max-1)
    for j in (0..arr.length-1)
        offset = max-arr[j]
        if(i<offset)
            print("\t")
        else
            print("\tx")
        end
    end
    puts
end