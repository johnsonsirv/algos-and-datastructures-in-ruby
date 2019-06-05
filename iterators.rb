def repeat(times)
    1.upto(times) do
      yield
    end
end
  repeat(3){puts "Hello World!"}

  #Let's create a program that will count the frequency of letters (number of occurrences) in a given string. 
  def string_frequency(string, hash)
      string.each_char do |char|
        hash[char]+=1
      end
      return hash
  end
  hash = Hash.new(0)
  freqs = string_frequency("I am learning Ruby and it is fun!",hash)
  ("a".."z").each{|alphab| puts "#{alphab} : #{freqs[alphab]}"}
  
