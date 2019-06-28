=begin
    Given a number k and a list of coins, determine if the coins can be added together to equal k. Print true if you can get the exact sum and false otherwise.
=end
require 'benchmark/ips'
def exact_sum?(k, coins)
    #write your code here
    if coins.length == 0
      return k==0 ? true : false
    else
      print coins
      puts k
      exact_sum?(k-coins[coins.length - 1], coins.tap(&:pop))
    end
  end
  $compliments =  []
  def find_compliments(k, coins)
      if coins.length == 0
          return $compliments.reverse
      else
          $compliments <<  k - coins[coins.length-1]
          find_compliments(k, coins.tap(&:pop))
      end
  end

  def find_sum(sum, coins)
      if coins.length == 0
        return $compliments.include?(sum) ? sum : 'not found'
      else
        sum = coins.reduce(:+)
        print "#{sum}, "
        find_sum(sum, coins.tap(&:pop))
      end
  end

  def exact_sum_two?(k, coins)
    # print "#{k}, #{coins} \n"
    return true if k == 0
    return false if coins.empty? || k.negative?
    exact_sum_two?(k-coins[coins.length-1], coins[0...coins.length-1]) ||  exact_sum_two?(k, coins[0...coins.length-1]) 
  end

  def exact_sum_model_solution?(k, coins)
    # print "#{k}, #{coins} \n"
    return true if k == 0
    return false if coins.empty? || k.negative?
    exact_sum_model_solution?(k-coins[0], coins[1..-1]) || exact_sum_model_solution?(k, coins[1..-1]) 
  end
  # print find_compliments(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
#   print find_sum(0,[37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
  # puts exact_sum?(12, [1, 2, 3, 4, 5])
  # => true

  # puts exact_sum_two?(12, [1, 2, 3, 4, 5])
  # => true
  
  # puts exact_sum?(11, [1, 5, 9, 13])
  # => false
  
#   puts exact_sum?(201, [37, 42, 10, 23, 15, 25, 11, 6, 19, 25, 51])
#   compliments =       [164, 159, 191, 178, 176, 190, 195, 176, 150]
  # =>true
  
  Benchmark.ips do |x|
    x.report("victor_solution") {  exact_sum_two?(12, [1, 2, 3, 4, 5]) }
    x.report("model_solution") {  exact_sum_model_solution?(12, [1, 2, 3, 4, 5]) }
    x.compare!
  end