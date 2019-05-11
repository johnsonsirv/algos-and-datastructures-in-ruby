#Implementing Queue (FIFO - First-In-First-Out)
# Using a SinglyLinkedList to keep track of the internal workings of Queue
load 'SinglyLinkedList.rb'

class Queue
    
    def initialize
        @list = SinglyLinkedList.new
    end

    #push method adds item to the end of the queue. alias is <enqueue>
    def push(number)
        @list.push(number)
    end
    def enqueue(number)
        @list.push(number)
    end
end