require 'set'
=begin
  
A duplicate is a number whose value appeared earlier in the list.
Given a list of numbers, return an array with all the duplicates in the order that they appear. 
(Duplicates that appear multiple times should be printed multiple times).
Use Ruby's Set class to solve the challenge.
=end
p [1, 2, 3, 1, 5, 6, 7, 8, 5, 2].to_set
set = Set[1, 2, 3, 1, 5, 6, 7, 8, 5, 2]
p Set.new([1, 2, 3, 1]) { |x| x * x }      #=> #<Set: {1, 4, 9}>
p set.add(1) # =>returns self
p set.add?(1) #-> returns nil if elem already exists in set

def find_duplicates(array)
  # write your code here
  duplicates = []
  
end

# p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

# p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]

