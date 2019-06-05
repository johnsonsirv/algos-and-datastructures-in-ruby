def fib(num)
  if num < 2
    num
  else
    fib(num-1) + fib(num-2)
  end
end
puts fib(4)

def fact(n)
  if n<= 1
    1
  else
    n * fact( n - 1 )
  end
end

puts fact(5)