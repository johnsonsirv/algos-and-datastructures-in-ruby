# Working with methods

#d dynamic optional params =>array
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
  atrr_accessor :make, :color, :frame_size, :weight
  def initialize
    @make = make
    @color = color
    frame_size = frame_size
    weight = weight 
  end
end
Bicycle.new(make:'Canyon', color: 'black', frame_size: '178cm', weight: '7.8kg')
