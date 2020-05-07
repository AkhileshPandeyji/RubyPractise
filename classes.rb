class Box

    attr_accessor :height,:width

    @@count=0

    def initialize(h,w)
        @height=h
        @width=w
        @@count+=1
    end

    def to_s()
        s = "Box"+@@count.to_s()+": "+@height.to_s()+":"+@width.to_s()
        return s 
    end
end

class BigBox < Box

    def to_s()
        s = "BigBox"+@@count.to_s()+": "+@height.to_s()+":"+@width.to_s()
    end

end

box = Box.new(13,21)
puts box
bbox = BigBox.new(21,21)
puts bbox

