require 'benchmark/ips'

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


Benchmark.ips do |x|
  x.report("erathosthenes_prime_by_jona") { primes(10000) }
  x.report("erathosthenes_prime_by_victor") { erathosthenes_seive(10000) }
  x.compare!
end