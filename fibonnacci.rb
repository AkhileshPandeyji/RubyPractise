n = gets.chomp.to_i()
dp = []

for i in (0..n)
    dp.push(0)
end

def fibonacci(n,dp)
    
    if (n==0 || n==1)
        dp[n] = n
        return n
    end

    if(dp[n]!=0)
        return dp[n]
    end


    dp[n] = fibonacci(n-1,dp)+fibonacci(n-2,dp)
    
    return dp[n]

end

fibonacci(n,dp)

puts dp[n-1]

for i in (0..n-1)
    print(dp[i].to_s()+" ")
end
