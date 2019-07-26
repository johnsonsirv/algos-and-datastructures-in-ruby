

def index_match(array)
  # write your code here
  max_ind = array.size - 1
  pivot = (array.size / 2).floor

  while !pivot.negative? && !array[pivot].nil?
    temp = array[pivot]
    return pivot if temp.eql?(pivot)
    if temp > max_ind
      pivot -= 1
    else
      pivot += 1
    end
  end
  
   -1
end

puts index_match([0, 2, 3, 7, 9, 11])
# => 0

p index_match([3, 5, 7, 9, 11, 13, 17])
# -1

p index_match([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
# -1

p  index_match([-4, -2, 0, 2, 4, 6, 8, 10])
# 4