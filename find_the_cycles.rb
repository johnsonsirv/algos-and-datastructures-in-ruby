# Return true if the graph has a cycle and false otherwise. 
# A cycle means you can leave a node along one path and return to it on a different path.

def graph_cycle?(graph)
  # write your code here
  visited = Hash.new
  return true if has_cycle_by_DFS?(dfs_graph: graph, dfs_visited: visited, dfs_vertex: 0, parent_vertex: -1)
  false
end

def has_cycle_by_DFS?(dfs_graph: graph, dfs_visited: visited, dfs_vertex: vertex, parent_vertex: parent)
  return false if dfs_graph[dfs_vertex].nil?
  dfs_visited[dfs_vertex] = true
  dfs_graph[dfs_vertex].each do |neighbour|
    unless dfs_visited[neighbour]
      return true if has_cycle_by_DFS?(dfs_graph: dfs_graph, dfs_visited: dfs_visited, dfs_vertex: neighbour, parent_vertex: dfs_vertex)
    else
      return true unless neighbour.eql? parent_vertex # back-edge between parent-vertex
    end
  end
  false # false no back-edge was found
end

p graph_cycle?({
  0=>[2], 
  1=>[4], 
  2=>[0, 5, 3], 
  3=>[5, 2], 
  4=>[5, 1], 
  5=>[4, 2, 3]
})
# => true

p graph_cycle?({
  0=>[2], 
  1=>[2], 
  2=>[0, 1, 3, 4, 5], 
  3=>[2], 
  4=>[2]
})
# => false