# Return true if the graph has a cycle and false otherwise. 
# A cycle means you can leave a node along one path and return to it on a different path.

def graph_cycle?(graph)
  # write your code here
  
end



puts graph_cycle?({
  0=>[2], 
  1=>[4], 
  2=>[0, 5, 3], 
  3=>[5, 2], 
  4=>[5, 1], 
  5=>[4, 2, 3]
})
# => true

puts graph_cycle?({
  0=>[2], 
  1=>[2], 
  2=>[0, 1, 3, 4, 5], 
  3=>[2], 
  4=>[2]
})
# => false