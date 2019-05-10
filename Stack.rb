class Stack
    include SinglyLinkedList

    def initialize
        @list = new SinglyLinkedList
    end
    def push(number)
      # your code here
      list.push(number)
    end
    
    def pop
      # your code here
    end
end

stack = Stack.new
    
stack.push(2)
p stack.push(3)