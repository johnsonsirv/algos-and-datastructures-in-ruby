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
# child_obj.sub_private_method # raises NoMethodError

class Account
  include Math
  # include Prime
  attr_reader :name, :balance
  
  def initialize(name, balance = 100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    if pin_number.eql? pin
      puts "Balance: $#{@balance}."
    else
      pin_error
    end
  end
  
  def withdraw(pin_number, amount)
    if pin_number.eql? pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      pin_error
    end
  end
  
  private
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

checking_account = Account.new("jerry", 5000)


class Numeric
  include Math

 attr_reader :n 
  def initialize(num)
    @n = num
  end

  def log10
    return Math.log10(@n).floor
  end
end

c = Numeric.new(10)
p c.log10


class DocumentStore
  attr_reader :capacity
  attr_accessor :documents

  def initialize(capacity)
    @capacity = capacity
    @documents= []
  end

  def get_documents
    return @documents.freeze
  end

  def add_document(document)
    raise 'Document Store is full' if @documents.size > @capacity
    @documents.push(document)
  end

  def inspect
    return "Document Store: #{@documents.size}/#{@capacity}"
  end
end

document_store = DocumentStore.new(2)
document_store.add_document('Document 1')
p document_store.inspect
d = document_store.get_documents
d.push('From Outside')