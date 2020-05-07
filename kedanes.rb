arr = [-2, -3, 4, -1, -2, 1, 5, -3]

# if ()
#     statement1
# elsif ()
#     statement2
# else ()
#     statement3
# end

def maxSubArraySum(a)
    maxint =(2**(0.size * 8 -2) -1)
    msf = -maxint - 1
    max_end = 0
       
    for i in (0..a.length-1)
        max_end = max_end + a[i] 
        if (msf < max_end)
            msf = max_end
        end
  
        if (max_end < 0) 
            max_end = 0   
        end
    end
    return msf
end


puts maxSubArraySum(arr)
