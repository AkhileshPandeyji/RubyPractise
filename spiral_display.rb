m =  ARGV[0].to_i()
n =  ARGV[1].to_i()

ARGV.clear()
arr = []

for i in (0..m-1)
    row = []
    for j in (0..n-1)
        val = gets.chomp.to_i()
        row.push(val)
    end
    arr.push(row)
end

def spiral_display(arr)
    min_i = 0
    max_i = arr.length-1
    min_j = 0
    max_j = arr[0].length-1
    
    while(min_i<=max_i || min_j<=max_j)

        for i in (min_i..max_i)
            print (arr[i][min_j].to_s()+" ")
        end
    
        min_j+=1

        for j in (min_j..max_j)
            print (arr[max_i][j].to_s()+" ")
        end

        max_i-=1
        
        for i in max_i.downto(min_i)
            print (arr[i][max_j].to_s()+" ")
        end

        max_j-=1      
         

        for j in max_j.downto(min_j)
            print (arr[min_i][j].to_s()+" ")
        end

        min_i+=1        
    end
end

spiral_display(arr)