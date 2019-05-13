def sqrt(number)
    return sqrt_recursive(number, 0, number) if number.positive?
    return 'Invalid Input'
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
      midpoint = (min_interval + max_interval) / 2
      check = midpoint**2
      return midpoint if check.eql? number
      if check > number
        sqrt_recursive(number, min_interval, midpoint)
      else
        sqrt_recursive(number, midpoint, max_interval)
      end
  end
  
  #Test Cases
  puts sqrt(25)
  puts sqrt(7056)
  