def adjacency_list(matrix)
  weighted_hash_graph =  Hash.new
  stop = matrix.size - 1
  0.upto(stop) do |row|
    weighted_hash_graph[row] = []
    0.upto(stop) do |column|
      weighted_hash_graph[row] << Hash[column, matrix[row][column]] unless matrix[row][column].zero?
    end
  end
  weighted_hash_graph #key -> node ; value -> weight
end

class PriorityQueue
  def initialize
    @values = []
  end
  
  def enqueue(vertex, priority)
    @values << {vertex: vertex, priority: priority}
    @values.sort_by! { |a| a[:priority] }

  end

  def dequeue
    @values.shift
  end
end

def dijkstra(matrix)
  adjacency_list(matrix)
end

pQ = PriorityQueue.new

pQ.enqueue("d", 12)
pQ.enqueue("e", 3)
pQ.enqueue("b", 1)
pQ.enqueue("c", 2)

p pQ
# p dijkstra([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]