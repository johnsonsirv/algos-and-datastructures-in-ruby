class PriorityQueue
  # attr_accessor :values
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

def adjacency_list(matrix)
  weighted_hash_graph =  Hash.new
  stop = matrix.size - 1
  0.upto(stop) do |row|
    weighted_hash_graph[row] = []
    0.upto(stop) do |column|
      weighted_hash_graph[row] << {node: column, weight: matrix[row][column]} unless matrix[row][column].zero?
    end
  end
  weighted_hash_graph
end



def dijkstra(matrix, start, finish)
  weighted_hash_grpah = adjacency_list(matrix)
  queue = PriorityQueue.new
  distances = []
  previous = []

  weighted_hash_grpah.each_key do | vertex|
    if vertex.eql?(start)
      distances[vertex] = 0
      queue.enqueue(vertex, 0)
    else
      distances[vertex] = Float::INFINITY
      queue.enqueue(vertex, Float::INFINITY)
    end

    previous[vertex] = nil
  end

  previous
end

# q = PriorityQueue.new
# q.enqueue(0,0)
# q.enqueue(1,Float::INFINITY)
# q.enqueue(3,Float::INFINITY)
# q.enqueue(2,Float::INFINITY)

# p q

def shortest_path_wg(matrix)
  # write your code here
  dijkstra(matrix, 0, matrix.size - 1)
end

p shortest_path_wg([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]