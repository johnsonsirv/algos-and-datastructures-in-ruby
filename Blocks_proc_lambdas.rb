cube = Proc.new { |x| x ** 3 }

# using th & to covert proc to block for methods that expect block
# p [1, 2, 3].map!(&cube)
# p 3.4.floor

# Symbol to Proc using &:method_name
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)
 
# puts strings_array

# Lambdas
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda{ |str| str.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)
# print symbols

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda{ |val| val.is_a? Symbol }
symbols = my_array.select(&symbol_filter)

# puts symbols

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda{ |key, value| value < "M" }
a_to_m = crew.select(&first_half)
# puts a_to_m

#methods that require blocks
def repeat(n)
  # raise ArgumentError, "Block is required" unless block_given?
  return to_enum(:repeat) unless block_given?
  # n.times { yield ("inner")}
  # "yes" if yield("jamie")

end
# repeat(2){ |y| puts y if y.length > 3}
repeat(3)

def trying(im)
  # raise TypeError.new("can't iterate range input") if !im.begin.respond_to?(:succ) && im.is_a?(Range)
  result =[]
  im.select{ |elem| elem.odd?}
  # result
end
# p trying(1..9)

def my_each(data)
  
  0.upto(data.size - 1) { |i| yield(data.to_a[i]) }
end

def my_select(data)
  return self.enum_for(:my_select) unless block_given?
  output =[]
  my_each(data){ |elem| output << elem if yield(elem)}
  output
end

def my_all?(data, *args)
  p args.size unless args.empty?
  # return data.grep(args.first).size == data.size if args
  unless block_given?
    my_each(data){ |item| return false unless item} 
  else
    my_each(data){ |elem| return false unless yield(elem)}
  end
  true  
end
# raise TypErro if range is bad
p my_all?([1,2,4,5], /t/) { |e| e.is_a?(Integer) } # empty array returns true

# p my_all?(1..3){ |e| e.odd?} #true unless block returns false
# p my_all?([nil, true, 99]) # test for implicit
# p [1, 2i, 3.14].all?(Numeric) 
# p (1..3).all?(Numeric) #if optional args is provided, use it 
# p %w[aill tok tap].all?(/t/) # collections contain /t/
# p %w[aill tok tap cat jef pat].grep(/t/) # returns an array
# p my_all?(%w[ant beart cat], /t/)
# p my_all?(%w[ant bear cat], /t/){ |e| e.length > 2} #ignore the block if args is provided
# p my_all?(%w[ant bear cat], Numeric){ |e| e.length > 2} #ignore the block if args is provided
# p my_all?(1..3, Integer)

p [1, 2, 4,2,2].count(2){ |elem| elem.odd?}
p 2.eql? 2
p 2 == 2
p 2 === "2"
acc = [].empty? ? 4 : 7
p acc
p (5..10).inject { |sum, n| sum + n } 




