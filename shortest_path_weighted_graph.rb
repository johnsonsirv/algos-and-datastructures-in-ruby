def weighted_graphs(matrix)
  # write your code here
  weighted_hash_graph = adjacency_list(matrix)
end

def adjacency_list(matrix)
  hash_graph =  Hash.new
  0.upto(matrix.size - 1) do |row|
    hash_graph[row] = []
    0.upto(matrix.size - 1) do |column|
      hash_graph[row] << column unless matrix[row][column].zero?
    end
  end
  hash_graph
end

p weighted_graphs([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]