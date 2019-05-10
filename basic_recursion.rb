def sum(number)
    # Your code here
    return 1 if number == 1
    number + sum(number - 1)
  end
  
  
  puts sum(10)
  puts sum(4)