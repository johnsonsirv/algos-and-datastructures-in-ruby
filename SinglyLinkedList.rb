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
    def add(data)
        @newNode = Node.new(data)
        if !@head
            @head = @newNode
            @tail = @head
        else
            @tail.next_node = @newNode
            @tail = @newNode
        end
        @_length += 1
    end

    def push(data)
        @newNode = Node.new(data)
        if !@head
            @head = @newNode
            @tail = @head
        else
            @tail.next_node = @newNode
            @tail = @newNode
        end
        @_length += 1
    end

    #unshift method adds a node to the head and returns true, alias is <add_to_head>
    def unshift(data)
        @newNode = Node.new(data)
        if @head.nil?
            @head = @newNode
            @tail = @head
        else
            @newNode.next_node = @head
            @head = @newNode
        end
        @_length += 1
        true
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
        return unshift(item) if index == 0
        return add(item) if index == @_length
        @newNode = Node.new(item)
        @beforeNode = get(index -1)
        @afterNode = @beforeNode.next_node
        @beforeNode.next_node = @newNode
        @newNode.next_node = @afterNode
        @_length+=1
    end
end

list = SinglyLinkedList.new
list.add(3)
list.add(5)
list.add_at(1, 11)
list.add_at(0, 13)
p list.get(2)
p list.get(3)