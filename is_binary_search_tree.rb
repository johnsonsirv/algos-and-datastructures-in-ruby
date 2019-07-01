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
              if value < @current.value
                  if @current.left.nil?
                      @current.left = @newNode
                      return
                  else
                      @current = @current.left
                  end
              elsif value > @current.value
                  if @current.right.nil?
                      @current.right = @newNode
                      return
                  else
                      @current = @current.right
                  end
               
              end
          end
      end
          
  end

  def pre_order
      @result = []
      def traverse(node)
          @result.push(node.value)
          traverse(node.left) if node.left
          traverse(node.right) if node.right
      end
      traverse(@root)
      return @result.join(' ')
  end

  def post_order
    @result = []
      def traverse(node)
          traverse(node.left) if node.left
          traverse(node.right) if node.right
          @result.push(node.value)
      end
      traverse(@root)
      return @result.join(' ')
  end

  def in_order
    @result = []
    def traverse(node)
        traverse(node.left) if node.left
        @result.push(node.value)
        traverse(node.right) if node.right
       
    end
    traverse(@root)
    return @result.join(' ')
  end


  def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0
  
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
  
    node
  end

end


  


def search_tree?(tree)
  bst = BinarySearchTree.new
  # tree.each{ |node| bst.insert(node) }
  bst.array_to_tree(tree)
  p bst.pre_order
  p bst.post_order
  bst.in_order
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