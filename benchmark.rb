require 'benchmark/ips'
require 'set'
require   'prime'

def erathosthenes_seive(n)
  list = []
  2.upto(n) { |i|  list[i] = true  }

  2.upto(Math.sqrt(n).floor) do |index|
    if list[index]
      multiplier = 0
      multiple = (index ** 2) + multiplier
      while multiple <= n
        list[multiple] = false
        multiplier += 1
        multiple = (index ** 2) + (multiplier * index)
      end
    end
  end
  primes = []
  list.each_with_index { |v, index| primes << index if list[index] }
  primes
end

def primes(max_number)
  integers = []
  i = 2
  while i <= max_number
    integers << i
    i = i + 1
  end
  index = 0 
  multiplier = 2
  while integers[index] != nil
    while (integers[index] * multiplier) <= max_number
      integers.delete(integers[index] * multiplier)
      multiplier = multiplier + 1
    end
    index = index + 1
    multiplier = 2 
  end 

  integers
end

def primes_by_suhyeon(n)
  list = []
  2.upto(n) { |int|  list << int  }
  set = list.to_set
  (2..n).each do |div|
    set.each do |e|
      set.delete e if e % div == 0 && e != div
    end
  end
  set.to_a
end

def prime_by_inbuilt(n)
  Prime::EratosthenesGenerator.new.take_while { |i| i <= n }
end


def counting_sort_with_inject(array)
  # write your code here
  numbers = (0..99).inject({}) { |hash, key| hash[key] = 0; hash}
  array.each do |elem|
    numbers[elem] += 1
  end

  numbers.values
end

def counting_sort_with_iteration(array)
  # write your code here
  numbers = Hash.new(0)
  (0..99).each { |key|  numbers[key] = 0 }
  array.each do |elem|
    numbers[elem] += 1
  end

  numbers.values
end



Benchmark.ips do |x|
  x.report("counting_sort_with_inject: ") { counting_sort_with_inject([63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98, 67, 99, 12, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94, 32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40, 34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20, 1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61, 32, 21, 79, 75, 75, 13, 87, 70, 33]) }
  x.report("counting_sort_with_iteration") { counting_sort_with_iteration([63, 25, 73, 1, 98, 73, 56, 84, 86, 57, 16, 83, 8, 25, 81, 56, 9, 53, 98, 67, 99, 12, 83, 89, 80, 91, 39, 86, 76, 85, 74, 39, 25, 90, 59, 10, 94, 32, 44, 3, 89, 30, 27, 79, 46, 96, 27, 32, 18, 21, 92, 69, 81, 40, 40, 34, 68, 78, 24, 87, 42, 69, 23, 41, 78, 22, 6, 90, 99, 89, 50, 30, 20, 1, 43, 3, 70, 95, 33, 46, 44, 9, 69, 48, 33, 60, 65, 16, 82, 67, 61, 32, 21, 79, 75, 75, 13, 87, 70, 33]) }
  # x.report("erathosthenes_prime_by_suhyeon") { primes_by_suhyeon(10000) }
  # x.report("erathosthenes_inbuilt") { prime_by_inbuilt(10000) }
  x.compare!
end