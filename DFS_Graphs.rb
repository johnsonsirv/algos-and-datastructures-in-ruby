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


hash_graph = {
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}
p graph_DFS_recursive(graph: hash_graph)