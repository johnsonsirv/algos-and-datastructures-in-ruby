class Person
  #setting attributes (set)
  def name=(str)
    @name = str
  end
  def age=(num)
    @age = num
  end

  #getting attributes (get) - the old fashioned way 
  def name
    @name
  end
  def age
    @age
  end
end

p = Person.new
p.name = "John Doe"
p.age = 40
puts p.name

p2 = Person.new
p2.name = "Harry Jones"
p2.age = 23
puts p2.name
