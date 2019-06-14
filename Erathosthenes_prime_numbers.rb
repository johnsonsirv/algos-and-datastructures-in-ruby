require 'set'
require 'prime'

# seive prime numbers from 2 to n
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

def number_of_primes(arr)
  primes = Prime::EratosthenesGenerator.new.take_while { |i| i <= arr.max }
  intersect = arr.to_set & primes.to_set
  intersect.length
end

# p erathosthenes_seive(121)

# p primes(121)

# p primes_by_suhyeon(121)

# p prime_by_inbuilt(121)

puts number_of_primes([2, 3, 5, 6, 9])
# => 3
puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3

