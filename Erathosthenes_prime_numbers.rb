require 'set'

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


def number_of_primes(arr)
  
end

p erathosthenes_seive(5)

p primes(5)

# puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

# puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3

