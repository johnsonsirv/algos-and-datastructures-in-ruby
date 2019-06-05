cube = Proc.new { |x| x ** 3 }

# using th & to covert proc to block for methods that expect block
p [1, 2, 3].map!(&cube)
p 3.4.floor

# Symbol to Proc using &:method_name
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)
 
puts strings_array

# Lambdas
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda{ |str| str.to_sym}

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda{ |val| val.is_a? Symbol }
symbols = my_array.select(&symbol_filter)

puts symbols

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
puts a_to_m