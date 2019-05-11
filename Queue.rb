#Implementing Queue (FIFO - First-In-First-Out)
# Using a SinglyLinkedList to keep track of the internal workings of Queue
load 'SinglyLinkedList.rb'

class Queue
    
    def initialize
        @list = SinglyLinkedList.new
    end

    #enqueue method adds item to the end of the queue. alias is <push>
    def enqueue(number)
        @list.push(number)
    end
    #alias for enqueue method
    def push(number)
        @list.push(number)
    end
    
end