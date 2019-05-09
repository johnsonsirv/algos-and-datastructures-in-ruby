#Singly Linked List
class Node
    attr_accessor :value, :next_node

    def initialize
        @value = value
        @next = next_node
    end
end

class SinglyLinkedList
    def initialize
        @head = nil
        @tail = nil
        @_length = 0
    end
end