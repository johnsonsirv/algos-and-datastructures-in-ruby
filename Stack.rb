class Stack
    include SinglyLinkedList

    def initialize
        @list = new SinglyLinkedList
    end
    def push(number)
      # your code here
      @list.push(number)
    end
    
    def pop
      # your code here
      @list.pop
    end
end


stack = Stack.new
stack.push(3)
stack.push(5)
p Stack.pop