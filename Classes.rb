class Person
  # attr_reader :name, :age
  # attr_writer :name, :age
  attr_accessor :name, :age
  #setting attributes (set)
  # def name=(str)
  #   @name = str
  # end
  # def age=(num)
  #   @age = num
  # end

  #getting attributes (get) - the old fashioned way 
  # def name
  #   @name
  # end
  # def age
  #   @age
  # end

  # using constructor to set attr when we instantiate obj
  def initialize(obj_name, obj_age)
    @name = obj_name
    @age = obj_age
  end
end

# p = Person.new
# p.name = "John Doe"
# p.age = 40
# puts p.name

# p2 = Person.new
# p2.name = "Harry Jones"
# p2.age = 23
# puts p2.name

p3 = Person.new("Kelly Done", 50)
puts p3.name
puts p3.age
