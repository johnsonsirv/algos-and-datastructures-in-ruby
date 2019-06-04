require "benchmark" 
require "benchmark/ips" 

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

h.each_key {|key| puts key}
h.each_value {|value| puts value}

h.has_key?("a")   #=> true
h.has_key?("z")   #=> false
p h.value?(100)   #=> true
p h.has_value?(999)   #=> false

#invert a hash- code application
#modify this program that accepts a hash (already declared using hash literal), and 
#--- returns true if no key has the same value(each key has unique value), OR
#--- returns false if two (or more) keys have the same value.
# constraint: code implementation should not exceed two lines 
hash = { "a"=> 1, "b"=> [1,3], "c"=> 1 }
#write program below this line
p hash.size == h.invert.size #=> false
print hash.values_at("b")
def unique_values_uniq(hash)
    values = hash.values
    values.length == values.uniq.length ? true : false
end
def unique_values_invert(hash)
 return hash.size == hash.invert.size #by performance, this is slower as no of duplicates increase  
end

# Benchmark.ips do |x|
#     x.report("unique_values_uniq"){unique_values_uniq(hash) }
#     x.report("unique_values_invert"){unique_values_invert(hash) }
#     x.compare!
# end

# symbpls
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []
strings.each{|s| symbols << s.to_sym}
strings.each{|s| symbols << s.intern}
p symbols

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

# night at the movies app
movies = {
    end_game: 3,
    thrones: 6,
    infinity: 1
    }
  puts "Choose action to perform"
  puts "-- add to add"
  puts "-- update to update"
  puts "-- display to show movies"
  puts "-- delete to remove movies"
  choice = gets.chomp
  case choice
    when "add"
        puts "Enter movie title"
        title = gets.chomp
        puts "Movie rating?"
        rating = gets.chomp
        if movies[title.to_sym].nil?
        movies[title.to_sym] = rating.to_i
      else
        puts "Movie already exists"
      end
    when "update"
        puts "Enter movie title"
        title = gets.chomp
        unless movies[title.to_sym].nil?
        puts "New Movie rating?"
            rating = gets.chomp
        movies[title.to_sym] = rating.to_i
      else
        puts "Movie not found to update"
      end
    when "display"
        movies.each{ |movie, rating| puts "#{movie}: #{rating}" }  	
    when "delete"
        puts "Enter movie title"
        title = gets.chomp
        unless movies[title.to_sym].nil?
        movies.delete(title.to_sym)
      else
        puts "Movie not found to delete"
      end
      else
    puts "Error!"
  end
 