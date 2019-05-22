# nodes in the tree
class Node
    attr_accessor :value, :left, :right
    def initialize(value, left = nil, right = nil)
        @value = value
    end
end

class BinarySearchTree
    def initialize
        @root = nil
    end

    #insert method for BST
    def insert(value)
        @newNode = Node.new(value)
        if @root.nil?
            @root = @newNode
            return
        else
            @current = @root
            while true
                if value < @current.value
                    if @current.left.nil?
                        @current.left = @newNode
                        return
                    else
                        @current = @current.left
                    end
                end
            end
        end
            
    end
end