load 'SinglyLinkedList.rb'
class Stack

    def initialize
        @list = SinglyLinkedList.new
        @min = nil
    end
    def push(number)
      # your code here
      @min = @list.push_with_min(number)
    end
    
    def pop
      # your code here
      return @list.pop()
    end

    def min
        return @min
    end
end


stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.min
# => 3

stack.pop
stack.push(7)
puts stack.min
# => 3

stack.push(2)
puts stack.min
# => 2

stack.pop
puts stack.min
# => 3