#Find all the 'extra' numbers that are in B but not in A, and output them in ascending order.
def duplicates(arr1, arr2)
  # write your code here
    arr1.each {|n|
    arr2.delete_at(arr2.index(n))
  }
  arr2.sort
end

duplicates([1,1,2], [ 1,4,4,5])