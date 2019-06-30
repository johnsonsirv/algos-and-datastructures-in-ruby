class Node
  attr_accessor :value, :left, :right
  def initialize(value, left = nil, right = nil)
      @value = value
  end
end

class BinarySearchTree
  def initialize
      @root = nil
  end

  #insert method for BST (sorted data)
  def insert(value)
      @newNode = Node.new(value)
      if @root.nil?
          @root = @newNode
          return
      else
          @current = @root
          while true
            p "current up #{@current.value}"
              if value < @current.value
                  if @current.left.nil?
                      @current.left = @newNode
                      return
                  else
                    p "current #{@current.value}"
                      p "current-left #{@current.left.value}"
                      @current = @current.left
                  end
              elsif value > @current.value
                if value < @root.value
                  p "not a good BST"
                  return
                end
                p "value here is #{value}"
                  if @current.right.nil?
                      @current.right = @newNode
                      return
                  else
                    p "current-right #{@current.right.value}"
                      @current = @current.right
                  end
               
              end
          end
      end
          
  end

  def pre_order
      @result = []
      @current = @root
      def traverse(node)
          @result.push(node.value)
          traverse(node.left) if node.left
          traverse(node.right) if node.right
      end
      traverse(@current)
      return @result.join(' ')
  end
end


def search_tree?(tree)
  bst = BinarySearchTree.new
  tree.each{ |node| bst.insert(node) }
  bst.pre_order
end

# def search_tree?(tree)
#   # write your code here
#   root = tree[0]
#   isBST =[]
#   0.upto(tree.size-1) do |i|
#     print i
#     left = tree[2*i + 1]
#     right = tree[2*i + 2]
#     break if left.nil? || right.nil?
#     if left <= root && right > root
#       isBST << true
#     else
#       isBST << false
#     end
#   end
#   isBST.include?false ? false : true
# end

# puts search_tree?([10, 4, 12])
# => true

# puts search_tree?([10, 5, 7])
# => false
# puts search_tree?([20, 10, 27, 12, 14, 23, 30])

puts search_tree?([20, 10, 27, 5, 14, 23, 30])
# true

# puts search_tree?([21, 11, 26, 5, 14, 23, 30, 2, 8, 13, 16, 0, 0, 0, 0])
# true