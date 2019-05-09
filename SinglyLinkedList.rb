#Singly Linked List
class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node = nil)
        @value = value
        @next_node = next_node
    end
end

class SinglyLinkedList
    def initialize
        @head = nil
        @tail = nil
        @_length = 0
    end

    #add method to insert a node to the end the list, alias is <push> linked lis
    def add(number)
        @newNode = Node.new(number)
        if !@head
            @head = @newNode
            @tail = @head
        else
            @tail.next_node = @newNode
            @tail = @newNode
        end
        @_length += 1
    end
end

list = SinglyLinkedList.new
list.add(3)
list.add(4)
pp list