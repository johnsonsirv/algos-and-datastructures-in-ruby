# Working with methods

# dynamic optional params =>array
def is_dynamic (*p)
     p
end
p is_dynamic(2, 4, "i")

#positional arguments


#options hash


#keyword arguments
def foo(bar: 'default')
    puts bar
end
foo #> default
foo(bar: "baz") #=> baz
# making keyword args required
def foo(bar:)
    puts bar
end
# foo # => ArgumentError: missing keyword: bar
foo(bar: 'baz') # => 'baz'


# Defining block methods
define_method(:foo) do |bar: 'default'|
    puts bar
end
foo # => 'default'
foo(bar: 'baz with block') # => 'baz'

print ["jamie", "jax", "holliday", "today", "zapier"].sort
print ["jamie", "jax", "holliday", "today", "zapier"].sort{|first, second|  first.length - second.length}

class Bicycle
  attr_accessor :make, :color, :frame_size, :weight
  def initialize(make: 'default', color:, frame_size:, weight:)
    @make = make
    @color = color
    frame_size = frame_size
    weight = weight 
  end
end
Bicycle.new(make:'Canyon', color: 'black', frame_size: '178cm', weight: '7.8kg')

# Returning multiple values
def squares(a, b, c)
  return a*a, b*b, c*c
end
arr = squares(2, 3, 6)
p arr

# Chaining Methods with iterators
def square(x)
  x*x
end


# square(4).times {puts "Hi"}
# using method() to call :methods
p method(:square).call(5)

# returns indication of no of args accepted by a method, keyword args are considered as single
p method(:square).arity
p method(:square).source_location # => [filename, linno]

def optional_method(scalar, *vector)
  p vector
  vector.map {|scalar, val|  val}
end
p optional_method(1,2,3)

# validations using call/response
age = 26
p age.respond_to?(:next) # => true
p age.respond_to?(:zip) # => false

# Reflections
x = 1                    # This is the value we're working with

x.is_a? Fixnum           # true: x is a Fixnum
x.is_a? Integer          # true: x is an Integer
x.is_a? Numeric          # true: x is a Numeric
x.is_a? Comparable       # true: works with mixin modules, too
x.is_a? Object           # true for any value of x


