require 'set'
def find_pairs(array, k)
  # write your code here
  set_pairs = Set[]
  
  array.each do |elem|
    comp = k - elem
    if array.include?comp
      set_pairs.add?(Set[elem, comp])
    end
    
  end
  set_pairs.map { |pair| pair.to_a}
end

# p find_pairs([1, 9, 11, 13, 2, 3, 7], 12)
# => [[1, 11], [9, 3]]
moves = [4, 5, 1, 7]
win = [ [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6] ]
comb = moves.combination(3).to_a
p comb
p comb & win
p [moves] & win

