# naming convention : Node starting letter capital
# defining class

class Node
    # properties fields of Node class
    attr_accessor :data,:left,:right

    # constructor
    def initialize(data,left,right)
        # @ -> this current object
        @data = data
        @right = right
        @left = left
    end

    def to_s()
        # toString() method override of parent class
        s = @left.nil?()? "." : @left.data.to_s()
        s += "<-"+@data.to_s()+"->"
        s += @right.nil?()? "." : @right.data.to_s()
        return s
    end
end


def display(node)
    if (node.nil?())
        return
    end

    
    puts node

    display(node.left)
    display(node.right)

end


# Node Memory Creation and Filling

left2 = Node.new(150,nil,nil)
right2 = Node.new(175,nil,nil)
left1 = Node.new(100,nil,nil)
right1 = Node.new(125,nil,nil)
left = Node.new(50,left1,right1)
right = Node.new(75,left2,right2)
root = Node.new(25,left,right)

# displaying tree
display(root)
