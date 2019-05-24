def graph(hash_graph)
    # write your code here
    result =[]
    node = 0
    result <<  node
    while node !=4
        next_node = hash_graph[node][0];
        result << next_node
        node = next_node
    end
    result
  end
 

  
  hash = { 
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  }
  
  print graph(hash)
  # => [0, 2, 5, 4]

#   print hash[2][0]
  