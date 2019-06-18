require 'set'
def find_pairs(array, k)
  # write your code here
  set_pairs = Set[]
  result = Set[]
  array.each do |elem|
    comp = k - elem
    if array.include?comp
      set_pairs.add?(elem)
      set_pairs.add?(comp)
    end
    result.add(set_pairs)
  end
  result
end

p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]