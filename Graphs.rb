def graph(hash_graph)
    # write your code here
    result =[]
  end
  
  def draw(node, hash)
    
    if node == 4
      return result
    else
      
    end
  end
  
  hash = { 
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  }
  
  p graph(hash)
  # => [0, 2, 5, 4]
  