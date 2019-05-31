class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end
  
def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)

  node
end
  
  def pre_order(node)
    return '' if node.nil?
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
  
  def post_order(node)
    # your code here
    return '' if node.nil?
    result = post_order(node.left)
    result += post_order(node.right)
    result += "#{node.data} "
  end
  
# Binary Tree Height
def binary_tree_height(node)
  return 0 if node.nil?
  left = binary_tree_height(node.left)
  right = binary_tree_height(node.right)
  [left, right].max + 1
end

def balanced_tree?(array_tree)
  # write your code here
  tree = array_to_tree(array_tree, 0)
  isBalanced?(tree)
end

def isBalanced?(node)
  return true  if node.nil?
  left_height = binary_tree_height(node.left)
  right_height = binary_tree_height(node.right)
  return true if (left_height - right_height).abs <=1 && isBalanced?(node.left) && isBalanced?(node.right)

  return false;
end

  # tree = array_to_tree([10, 1, 2, 3, 4, 5, 6], 0)
  # tree = array_to_tree([1, 2, 0, 3, 4, 0, 0], 0)
  # puts post_order(tree)
  #=> 3 4 1 5 6 2 10

  # puts binary_tree_height(tree)

  puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => 3
# [1, 7, 5, 2, 6, 0, 9, 3, 7, 5, 11, 0, 0, 4, 0] =>4
# [5, 3, 2, 9, 0, 0, 7, 0, 0, 0, 0, 0, 0, 5, 0] => 4
# [1, 2, 3, 4, 0, 5, 6, 7, 8, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0]=>5


  

  