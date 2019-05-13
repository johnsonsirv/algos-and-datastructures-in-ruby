# def sqrt(number)
#     sqrt_recursive(number, 0, number)
# end
  
# def sqrt_recursive(number, min_interval, max_interval)
#     midpoint = (min_interval + max_interval) / 2
#     check = midpoint**2
#     if check == number
#         return midpoint
#     elsif check > number
#         max_interval = midpoint
#         sqrt_recursive(number, min_interval, max_interval)
#     elsif check < number
#         min_interval = midpoint
#         sqrt_recursive(number, min_interval, max_interval)
#     end

# end
  
# # puts sqrt(25)
# puts sqrt(7056)

def sqrt(number)
    sqrt_recursive(number, 0, number)
  end
  
  def sqrt_recursive(number, min_interval, max_interval)
    # Your code here
      midpoint = (min_interval + max_interval) / 2
      check = midpoint**2
      return midpoint if check.eql? number
      if check > number
        sqrt_recursive(number, min_interval, midpoint)
      else
        sqrt_recursive(number, midpoint, max_interval)
      end
      # elsif check > number
      #     max_interval = midpoint
      #     sqrt_recursive(number, min_interval, max_interval)
      # elsif check < number
      #     min_interval = midpoint
      #     sqrt_recursive(number, min_interval, max_interval)
      # end
  end
  
  puts sqrt(4)
  puts sqrt(7056)
  