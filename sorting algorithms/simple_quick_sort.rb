

def partition(array)
  return array if array.length < 1 || array.empty?
  left = []
  right = []
  pivot = array.first
  1.upto(array.size - 1) do |indx|
    left << array[indx] if pivot > array[indx]
    right << array[indx] if pivot < array[indx]
  end
end

def simple_quicksort(array)
  # write your code here
 return array if array.length < 1 || array.empty?
  left = []
  right = []
  pivot = array.first
  1.upto(array.size - 1) do |indx|
    left << array[indx] if pivot > array[indx]
    right << array[indx] if pivot < array[indx]
  end
  
 output =  simple_quicksort(left) + [pivot] + simple_quicksort(right)
 puts output.join(' ') if output.size > 1
 output
end


def advanced_quicksort(array)
  # write your code here
  
end

advanced_quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9

# def simple_quicksort(array)
#   output = partition(array)
#   p output if output.size > 1
# end

# p simple_quicksort([5, 8, 1, 3, 7, 10, 2])
# => 2 3
#    1 2 3
#    7 8 10
#    1 2 3 5 7 8 10