
require "benchmark/ips" 
=begin
   Return an array with the given graph in BFS order.
=end

def graph_BFS(hash_graph)
  result= []
  visited =[0]
  queue = [0]
  until queue.empty?
    current_node = queue.shift
    result << current_node
    hash_graph[current_node].each do|value|
        unless visited.include?(value)
            visited << value
            queue << value
        end
    end
  end
  result
end

def graph_BFS_with_keyword_args(graph: hash_graph)
    result= []
    visited =[0]
    queue = [0]
    until queue.empty?
      current_node = queue.shift
      result << current_node
      graph[current_node].each do|value|
        queue << value and visited << value unless visited.include? value
      end
    end
    result
  end

def model_solution(graph)
    queue = [0]
    result = []
    visited = []
    
    until queue.empty?
      head = queue.shift
      result << head
      visited << head
      
      not_visited = graph[head].reject { |node| visited.include? node }
      
      visited += not_visited
      queue += not_visited
    end
    
    result
end
hash_graph_1={
    0 => [2], 
    1 => [4], 
    2 => [5, 0, 3], 
    3 => [2], 
    4 => [1, 5], 
    5 => [4, 2]
  }
 
  # => [0, 2, 5, 3, 4, 1]
  
  hash_graph_6 = {
        0=>[1, 2], 
        1=>[0, 2], 
        2=>[0, 1, 3, 4, 5], 
        3=>[2, 4], 
        4=>[3, 2], 
        5=>[2]
    }
    #res =[0,1,2,3,4,5]
    #vis= [0,1,2,3,4,5]
    #q= 
  # [0, 1, 2, 3, 4, 5]

  hash_graph_7 = {
      0=>[1, 2], 
      1=>[0, 3, 4], 
      2=>[0, 5, 6], 
      3=>[1], 
      4=>[1], 
      5=>[2], 
      6=>[2]
    }
    #[0, 1, 2, 3, 4, 5, 6]
#   p graph_BFS(hash_graph_1)

Benchmark.ips do |x|
    x.report("graph_BFS"){graph_BFS(hash_graph_7) }
    x.report("graph_BFS_with_keyword_args"){graph_BFS_with_keyword_args(graph: hash_graph_7) }
    x.report("model_solution"){model_solution(hash_graph_7) }
    x.compare!
end