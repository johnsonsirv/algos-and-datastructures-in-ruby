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