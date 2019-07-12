require 'benchmark/ips'

def pivot(array, start_index = 0, end_index = array.size - 1)
  pivot = array[start_index]
  swap_index = start_index
  start_loop = start_index + 1
  start_loop.upto(end_index) do |idx|
    if pivot > array[idx]
      swap_index += 1
      array[swap_index], array[idx] = array[idx], array[swap_index]
    end
    # p array
  end
  array[start_index], array[swap_index] = array[swap_index], array[start_index]
  swap_index
end



def quicksort(array, left = 0, right = array.length - 1)
  if left < right
    pivot_indx = pivot(array, left, right)
    # left
    quicksort(array, left, pivot_indx - 1)
    # right
    quicksort(array, pivot_indx + 1, right)
  end
  # p array
  array
end



def partition_two(array)
  left = []
  right = []
  pivot = array.first
  1.upto(array.size - 1) do |indx|
    left << array[indx] if pivot > array[indx]
    right << array[indx] if pivot < array[indx]
  end
  r = left + [pivot] + right
  r.index(pivot)
end

def partition_three(array)
  pivot = array.first
  partioned = array.partition{ |elem| elem < pivot }
 
  r = partioned.first + partioned.last
  r.index(pivot)
end


quicksort([1, 3, 9, 8, 2, 7, 5])
# => 1 3 2 5 9 7 8
#    1 2 3 5 9 7 8
#    1 2 3 5 7 8 9

# Benchmark.ips do |x|
#   x.report("partition_colt_inplace: "){ pivot([4, 5, 3, 9, 1]) }
#   x.report("partition_two_iter: : "){ partition_two([4, 5, 3, 9, 1]) }
#   x.report("partition_three_eneum_method: : "){ partition_three([4, 5, 3, 9, 1]) }
#   x.compare!
# end


# p quicksort([5, 8, 1, 3, 7, 10, 2])
# p  pivot([4, 5, 3, 9, 1])
# => [3, 1, 4, 5, 9]


def median(array)
  # write your code here
  middle_indx = (array.size / 2).floor
  k = middle_indx
  pivot = array[middle_indx]
  partioned = array.partition{ |elem| elem < pivot }
  sorted = partioned.first + partioned.last
  # p partioned.first
  # p partioned.last
  p sorted
  p k
  if k == sorted[middle_indx]
    return sorted[k]
  elsif k < sorted[middle_indx]
    return sorted[middle_indx - 1]
  else
    return sorted[middle_indx + 1]
  end
end

# puts median([0, 1, 2, 4, 6, 5, 3])
# => 3

# puts median([0, 1, 2, 4, 6, 5, 3, 8, 9])

puts median([7672, 271, 595, 8906, 1715, 509, 3131, 747, 6663, 5747, 9216, 2830, 5256, 8343, 2185, 839, 7399, 6780, 5754, 4953, 1900, 7752, 5466, 6348, 5783, 4895, 6463, 4655, 8873, 2931, 8912, 3794, 9421, 1082, 4541, 8451, 9862, 5389, 3190, 6894, 3345, 4865, 6587, 7552, 1433, 5276, 3096, 6606, 5475, 368, 2867, 5487, 5905, 5973, 6487, 816, 3036, 8379, 9856, 7390, 4710, 2521, 6906, 6883, 6492, 4910, 7944, 7317, 6836, 1075, 3500, 3504, 7778, 3487, 9073, 4497, 7169, 1097, 2861, 2460, 6418, 3167, 1573, 1346, 5111, 9257, 3463, 5311, 6685, 7845, 3111, 5741, 8566, 1459, 6570, 3458, 3023, 5437, 5750, 6167, 9152])
# 5437