cube = Proc.new { |x| x ** 3 }

# using th & to covert proc to block for methods that expect block
p [1, 2, 3].map!(&cube)
p 3.4.floor

# Symbol to Proc using &:method_name
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)
 
puts strings_array