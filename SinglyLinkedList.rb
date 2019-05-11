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
        true
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
        return @newNode
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

    #pop method remove from tail
    def pop
        return nil if !@head
        @newTail = @head
        @temp = @newTail
        while !@temp.next_node.nil?
            @newTail = @temp
            @temp = @temp.next_node
        end
        @tail = @newTail
        @tail.next_node = nil
        @_length -=1
        #reset head, tail to null after poping all nodes
        if @_length == 0
            @head = nil
            @tail = nil
        end
        return @temp
    end
    #sift method remove from head
    def shift
        return nil if !@head
        @temp  = @head
        @head = @temp.next_node
        @_length-=1
        if @_length == nil
            @tail = nil
        end
        return @temp
    end
    #remove method to remove item at specified index
    def remove(index)
        return nil if index < 0 || index >= @_length
        return shift() if index == 0
        return pop() if index == @_length-1
        @beforeNode = get(index - 1)
        @removed = @beforeNode.next_node
        @beforeNode.next_node = @removed.next_node
        @_length-=1
    end

    def reverse
        return nil if @_length == 0
        @current_node = @head
        @head = @tail
        @tail = @current_node
        @previous = nil
        @next = nil

        while @current_node
            @next = @current_node.next_node
            @current_node.next_node = @previous
            @previous = @current_node
            @current_node = @next
        end
        true
    end
   
    #helper method list_to_a print to display list_item as array, just to test reverse method
    def list_to_a
        @current = @head
        @output = []
        while @current
            @output.push(@current.value)
            @current = @current.next_node
        end
        return @output
    end
end

# list = SinglyLinkedList.new
# list.add(1)
# list.add(2)
# list.add(3)
# list.add(4)
# p list.list_to_a
# # list.reverse
# # p list.list_to_a

# # list.add_at(1, 11)
# # list.add_at(0, 13)
# p list.get(2)
# p list.get(3)