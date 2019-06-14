class Person
  # class atrrib - variable
  @@count = 0
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
    @@count += 1
  end

 # class methods (Static methods)
  def self.how_many
    @@count
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

# p3 = Person.new("Kelly Done", 50)
# puts p3.return_self.name
# puts p3.return_self.age
# p Person.how_many

# Inheritance
class ParentClass
  attr_accessor :name
  def initialize(name)
    @name = name
    puts "Parent class construtor"   
  end
  def parent_method
    puts "Instance method in parent class"
  end
end

class SubClass < ParentClass
  def initialize(name)
    super # calls the parent class constructor
  end 
  def sub_method
    puts "Instance method in child class"
    sub_private_method
  end

  private
  def sub_private_method
    "this method is private but called from a public method"
  end
end

child_obj = SubClass.new("MVA")
child_obj.parent_method
p child_obj.name
child_obj.sub_method
child_obj.sub_private_method

