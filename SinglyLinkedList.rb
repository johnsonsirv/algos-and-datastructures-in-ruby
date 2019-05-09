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

    def push(number)
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

    #get method retreives a node at specified index| 0-based index is used for this list
    def get(index)
        return nil if index <0 || index >= @_length
        @foundIndex =0;
        @current_node = @head
        while @foundIndex != index
            @current_node = @current_node.next_node
            @foundIndex+=1
        end
        return @current_node
    end

    #add_at method to add node at specified index alias is <insert>
    def add_at(index, item)
        #if specified index == 0, add_to_head/unshift
        # if specified index == length add/push
        #otherwise add at specified index
        return nil if index < 0 || index > @_length
        @newNode = Node.new(item)
        @beforeNode = 

    end
end

list = SinglyLinkedList.new
list.add(3)
list.add(4)
p list.get(1)