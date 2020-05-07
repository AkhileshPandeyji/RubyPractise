# is used for commenting just like python
# truly object oriented programming
# Everything is object behind the scene
# dynamically typed language => no variable types need to be declared
# ; is replced with end for functions and otherwise omitted
# puts is used to print output

# def for function definition
# () is also optional
# if..else if ... else have only one end

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

val = 11
ans = is_prime(val)

puts "Number "+val.to_s()+" is "+ans.to_s();
puts ans.class
puts "Everything is object"