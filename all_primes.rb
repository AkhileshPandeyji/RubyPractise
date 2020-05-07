def is_prime(num)
    div = 2
    flag = true
    while(div*div<=num)
        if(num % div == 0)
            flag = false
            return flag
        else 
            flag = true
        end
        div += 1
    end
    return flag
end


def all_primes(num)
    for i in (2..num)
        ans = is_prime(i)
        if (ans == true)
            print i.to_s+" "
        end
        i+=1
    end
end

all_primes(100)