class Item

    attr_accessor :val,:wt,:ratio

    def initialize(val,wt)
        @val = val
        @wt = wt
        @ratio = val.to_f()/wt        
    end

    def to_s()
        return "#{@val}:#{@wt}"
    end

    # operator overloading
    # 1 if node greater - @
    # -1 if other greater - other
    # 0 if node = other - node-@

    def <=>(other)
        if (other.ratio>@ratio)
            return 1
        elsif (@ratio>other.ratio)
            return -1
        else 
            return 0
        end
    end

end

prices = [15,14,10,45,30]
weights = [2,5,1,3,4]
items = []

for i in (0..prices.length-1)
    item = Item.new(prices[i],weights[i])
    items.push(item)
end

s_arr = items.sort()

puts s_arr

rc = 7
vib = 0
idx = 0


# 45:3
# 10:1
# 30:4
# 15:2
# 14:5

while(idx<s_arr.length)
    if(rc>s_arr[idx].wt)
        vib = vib+s_arr[idx].val
        rc=rc-s_arr[idx].wt
    else
        vib = vib+rc*s_arr[idx].ratio
        rc=0
        break
    end
    idx+=1
end

puts vib