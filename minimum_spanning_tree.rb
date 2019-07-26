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

def minimum_spanning_tree(matrix)
  # write your code here
  hash_grpah = adjacency_list(matrix)
  start_node = 0
  cost = []
  edge = []
  cost[start_node] = Float::INFINITY
  
  
  
  # until solved_nodes.empty?
  #   current_node = queue.shift
  #   min_span = Float::INFINITY
  #   solved_node = nil
  #   # p "cur no #{current_node}, min_spa #{min_span}, solv_no #{solved_node}"
  #   hash_grpah[current_node].each do |neighbour|
  #     unless solved_nodes.include?(neighbour[:node])
  #       if neighbour[:weight] < min_span
  #         min_span = neighbour[:weight]
  #         solved_node = neighbour[:node]
  #       end
  #     end
      
  #   end
  #   queue << current_node unless solved_node.include?(current_node)
  #   span_tree << min_span unless min_span.eql?(Float::INFINITY)
  # end

  # span_tree
  hash_grpah
end

p minimum_spanning_tree([[0, 4, 1, 4, 0, 0, 0, 0, 0, 0], [4, 0, 5, 0, 9, 9, 0, 7, 0, 0], [1, 5, 0, 3, 0, 0, 0, 9, 0, 0], [4, 0, 3, 0, 0, 0, 0, 10, 0, 18], [0, 9, 0, 0, 0, 2, 4, 0, 6, 0], [0, 9, 0, 0, 2, 0, 2, 8, 0, 0], [0, 0, 0, 0, 4, 2, 0, 9, 3, 9], [0, 7, 9, 10, 0, 8, 9, 0, 0, 8], [0, 0, 0, 0, 6, 0, 3, 0, 0, 9], [0, 0, 0, 18, 0, 0, 9, 8, 9, 0]])
# => [1, 3, 4, 7, 8, 2, 2, 3, 8]

p minimum_spanning_tree([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [1, 1, 2, 2, 5]