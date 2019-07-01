class Node
  attr_reader :value
  attr_accessor :left, :right
  def initialize(value, left = nil, right = nil)
      @value = value
  end
end

  def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0
  
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
  
    node
  end

  def dfs_in_order(node)
    return '' if node.nil?
    result = dfs_in_order(node.left)
    result += "#{node.value} "
    result += dfs_in_order(node.right)
  end



def search_tree?(tree)
  bST = array_to_tree(tree, 0)
  dfs_in_order(bST)
end



# puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false
# puts search_tree?([20, 10, 27, 12, 14, 23, 30])

# puts search_tree?([20, 10, 27, 5, 14, 23, 30])
# true

# puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0])
# true