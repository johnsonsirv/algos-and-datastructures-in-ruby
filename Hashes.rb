require "benchmark" 

cars = {
    bmw: { year:2016, color:"red"},
    mercedes: { year:2012, color:"black"},
    porsche: { year:2014, color:"white"}
}

puts cars[:bmw][:color]

# Alternate syntax using symbnols as keys
options = { font_size: 10, font_family: "Arial" }
options_2 = { "font_size"=> 10, "font_family"=> "Arial" }
puts options[:font_size]
puts options_2["font_size"]

# Dynamically creating hashes
new_options = Hash.new
new_options["font_size"] = 10
new_options["font_family"]  = "Ariel"
new_options[:color] = "#fff"

puts "with new keyword: #{new_options}"


#seting default value to retrun if key not found - default is nil
new_options = Hash.new(0)
new_options["font_size"] = 10
new_options["font_family"]  = "Ariel"
new_options[:color] = "#fff"
puts "with default return of #{new_options["color"]}"
puts "with symbol #{new_options[:color]}"

# using blocks as the default value for hash
new_options = Hash.new{|hash, key| hash[key] = "Key_does_not_exist: #{key}"}
new_options["font_size"] = 10
new_options["font_family"]  = "Ariel"
new_options[:color] = "#fff"
puts "block specified as default returns: #{new_options["font_Family"]}"


puts Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
puts Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}

# Hash comparisons
h1 = {a:1, b:2}
h2 = {a:1, b:2, c:3}

h1<h2 # true because h1 is a subset of h2
h1<h1 # false h1 is not a subste of itself
h1<=h2 # true because h1 equal h1

h1 = { "a" => 1, "c" => 2 }
h2 = { "c" => 2, "a" => 1 }
p h1 == h2   #=> true becuase no_of keys are the same, each key/value pair is the same. order is not compared.
p h1.eql?(h2)
# search the hash, using a particular key, returns arrary of key/val pair if found or nil
# hash = { 
#     0 => [2], 
#     1 => [4], 
#     2 => [5, 0, 3], 
#     3 => [2], 
#     4 => [1, 5], 
#     5 => [4, 2]
#   }
#   next_node = 0
#   result= [next_node]
#   until next_node==4
#     next_node = hash.assoc(next_node).last.first
#     result << next_node
#   end
#   print result
  
h = { "a" => 100, "b" => 200 }
p h.delete("a")                              #=> 100
p h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
p h.delete("b") { |el| "#{el} not found" }   #=>200

h = { "a" => 1, "b" => 2, "c" => 3 }
p h.delete_if {|key, value| value.odd? }   #=> {"b"=>2} returns hash without deleted items

h = { "a" => 100, "b" => 200 }
h.each {|key, value| puts "#{key} is #{value}" }
h.each_pair {|key, value| puts "#{key} is #{value}" } #more optimized
Benchmark.bm do |x|
    x.report("each_pair"){h.each_pair {|key, value| puts "#{key} is #{value}" }}
end
h.each_key {|key| puts key}
h.each_value {|value| puts value}
    