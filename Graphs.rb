=begin
    You will be given lists of numbers as input based on the above format. Then start from Node 0 and repeatedly visit the next connected node until you reach Node 4. You need to return an array with all the nodes visited.
While Nodes don't necessarily have a set order for their connections, in this challenge you should go to the first Node in the list of input. For example, in the above graph, go from 0 to 2 to 5 to 4 and then stop.

=end
rescue => exception
    
end
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
 def graph_recursive(node, hash_graph)
    print "#{node}, "
     if node==4
        return 'am done'
     else
        next_node = hash_graph[node][0]
        graph_recursive(next_node, hash_graph)
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
  
  print graph(hash)
  # => [0, 2, 5, 4]

 p graph_recursive(0, hash)
  