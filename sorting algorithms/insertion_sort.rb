

def insertion_sort(arr)
  1.upto(arr.size - 1) do |indx|
    current = arr[indx]
    j = indx -1
    while j >= 0 && arr[j] > current
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = current
  end
  arr
end

def insertion_sort_order(array)
  sorting_order = []
  sorted = nil
  1.upto(array.size - 1) do |indx|
    current = array[indx]
    backward_indx = indx - 1
    while backward_indx >= 0 && array[backward_indx] > current
      array[backward_indx + 1] = array[backward_indx]
      backward_indx -= 1
      sorting_order << array.join(' ')
    end
    array[backward_indx + 1] = current
    sorted =  array
  end
  sorting_order << sorted.join(' ')
  
  puts sorting_order
end

def sort_itself(array)
  1.upto(array.size - 1) do |indx|
    current = array[indx]
    j = indx -1
    while j >= 0 && array[j] > current
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = current
    puts array.join(' ')
  end
  
end

def running_time(array)
  # write your code here
  shift = 0
  1.upto(array.size - 1) do |indx|
    current = array[indx]
    j = indx -1
    while j >= 0 && array[j] > current
      array[j + 1] = array[j]
      j -= 1
      shift += 1
    end
    array[j + 1] = current
  end
  shift
end

# puts running_time([2, 1, 3, 1, 2])
# => 4

# p insertion_sort([1, 3, 2])

# insertion_sort_order([1, 3, 2])

# insertion_sort_order([1, 4, 6, 9, 3])
# => 1 4 6 9 9
#    1 4 6 6 9
#    1 4 4 6 9
#    1 3 4 6 9

# sort_itself([1, 4, 3, 6, 9, 2])
# => 1 4 3 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 3 4 6 9 2
#    1 2 3 4 6 9

