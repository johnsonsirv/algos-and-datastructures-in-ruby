#Implementing Queue (FIFO - First-In-First-Out)
# Using a SinglyLinkedList to keep track of the internal workings of Queue
load 'SinglyLinkedList.rb'

class Queue
    
    def initialize
        @list = SinglyLinkedList.new
    end
end