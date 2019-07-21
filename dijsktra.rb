def adjacency_list(matrix)
  weighted_hash_graph =  Hash.new
  stop = matrix.size - 1
  0.upto(stop) do |row|
    weighted_hash_graph[row] = []
    0.upto(stop) do |column|
      weighted_hash_graph[row] << Hash[column, matrix[row][column]] unless matrix[row][column].zero?
    end
  end
  weighted_hash_graph
end

def dijkstra(matrix)
  adjacency_list(matrix)
end


p dijkstra([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]