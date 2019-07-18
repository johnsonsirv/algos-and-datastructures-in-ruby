def weighted_graphs(matrix)
  # write your code here
  weighted_hash_graph = adjacency_list(matrix)
  station_stops = Array.new(matrix.size, 0)
  start_node = 0
  queue = []
  visited = [start_node]

  until queue.empty?
    current_node = queue.shift
    weighted_hash_graph[current_node].each do|value|
      unless visited.include?(value)
          visited << value
          queue << value
      end
    end
  end

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

def update_station_stops(arr_connected_nodes, node, start_position)
  count = 0
  if arr_connected_nodes[node].include?(start_position)
    count += 1
  else
    count += 2
  end
  count
end

p weighted_graphs([[0, 0, 1, 3, 0, 0], [0, 0, 0, 5, 0, 0], [1, 0, 0, 2, 1, 4], [3, 5, 2, 0, 7, 0], [0, 0, 1, 7, 0, 2], [0, 0, 4, 0, 2, 0]])
# => [0, 2, 1, 1, 2, 2]