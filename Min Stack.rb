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
      return @list.pop().value
    end
end


stack = Stack.new
stack.push(3)
stack.push(5)
p stack.pop
#=> 5
stack.push(2)
stack.push(7)
p stack.pop
#=>7

p stack.pop
#=>2

p stack.pop
#=> 3