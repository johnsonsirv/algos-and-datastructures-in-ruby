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

    #dequeue method removes item from the queue alias is <pop>
    def dequeue
        return @list.shift.value
    end

    #alias for dequeue method
    def pop
        return @list.shift.value
    end
end

queue = Queue.new
queue.enqueue(3)
queue.enqueue(5)
p queue.dequeue
#=> 3
queue.enqueue(2)
queue.enqueue(7)
p queue.dequeue
#=>5

p queue.dequeue
#=>2

p queue.dequeue
#=> 7