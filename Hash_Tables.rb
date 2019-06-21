class HashMap
  attr_accessor :key_map
  def initialize(size)
    @key_map = Array.new(size)
  end

  def set(key, value)
    index = hash_function(key)
    unless @key_map[index]
      @key_map[index] = []
    end

    @key_map[index] << [key, value]
  end

  def get(key)
    
  end

  def hash_function(key)
    key.abs % 11
  end

end

def hash_table(array)
  ht = HashMap.new(array.size)
  array.each{ |elem| ht.set(elem, elem)}
  output =[]
  ht.key_map.each do |elem|
    if elem
      elem.each { |key, value| output << key }
    end
  end
  output
end
p hash_table([12, 24, 125, 5, 91, 1106, 2, 1021, 29, 3536, 10])
# => [12, 24, 2, 91, 125, 5, 3536, 1106, 29, 1021, 10]

# p hash_table([2, 341, 73, 8265, 234004, 602, 7400000, 200000000])
# => [341, 234004, 2, 200000000, 7400000, 8265, 73, 602]