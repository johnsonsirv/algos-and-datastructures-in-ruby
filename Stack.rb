load 'SinglyLinkedList.rb'
class Stack

    def initialize
        @list = SinglyLinkedList.new
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
p stack.pop