def time_scheduler(array)
  # write your code here
  
end

p time_scheduler([4, 8, 1, 3, 7, 9, 5, 6])
# => [[1,3], [5,6], [7,9]]

p time_scheduler([3, 8, 1, 2, 3, 9, 1, 5, 4, 5, 8, 14])
# [[1, 2], [4, 5], [8, 14]]

p time_scheduler([0, 1, 14, 16, 4, 8, 10, 12, 7, 9, 8, 15, 3, 5])
# [[0, 1], [3, 5], [7, 9], [10, 12], [14, 16]]

p time_scheduler([2, 6, 5, 10, 7, 12, 0, 9, 4, 8])
# [[2, 6], [7, 12]]

[[2,6], [5,10], [7,12], [0,9], [4,8]]