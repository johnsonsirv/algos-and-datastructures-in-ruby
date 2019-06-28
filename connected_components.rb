

require 'set'
def graph_DFS_recursive(graph: hash_graph)
    $result= []
    $visited =[]

    def traverse_DFS (dfs_graph: graph, dfs_vertex: vertex)
        return nil if dfs_vertex.nil?
        $visited << dfs_vertex and $result << dfs_vertex
        dfs_graph[dfs_vertex].each do |neighbour|
            traverse_DFS(dfs_graph:dfs_graph, dfs_vertex:neighbour) unless $visited.include? neighbour
        end
    end
    traverse_DFS(dfs_graph:graph, dfs_vertex: 0)
    $result
end


def connected_graph?(graph)
  dfs = graph_DFS_recursive(graph: graph)
  hash = graph.values.flatten.uniq
  dfs.to_set == hash.to_set
end

puts connected_graph?({
  0 => [2], 
  1 => [4], 
  2 => [0, 5, 3], 
  3 => [5, 2], 
  4 => [5, 1], 
  5 => [4, 2, 3]
})
# => true

puts connected_graph?({
  0 => [1, 2], 
  1 => [0, 2], 
  2 => [0, 1, 3, 4, 5], 
  3 => [2, 4], 
  4 => [3, 2], 
  5 => [2]
})
# => true

puts connected_graph?({
  0=>[1], 
  1=>[0, 3, 4], 
  2=>[5, 6], 
  3=>[1], 
  4=>[1], 
  5=>[2], 
  6=>[2]
})
# => false
 