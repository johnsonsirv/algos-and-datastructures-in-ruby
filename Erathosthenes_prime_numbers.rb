require 'set'

# seive prime numbers from 2 to n
def erathosthenes_seive(n)
    list = []
    (2..n).upto(n) { |i|   list[i] << true }

end

def number_of_primes(arr)
  
end

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3