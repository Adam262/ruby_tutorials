#predicate method ends in "?" + returns boolean

arr = [1,2,3,4,5]
#puts arr.include?(3) #true
#puts "a".is_a?(String) #true
#puts 7.kind_of?(Numeric) #true

class Person
  attr_accessor(:name)

  def initialize(name)
    @name = name
  end

  def say_hello
    puts "Hello my name is #{@name.capitalize}"
  end

  # define_method 
  define_method :greet do |other_name|
    puts "Hello #{other_name.capitalize} my name is #{@name.capitalize}"
  end

  #class method. need explicit self to reference class. 
  def self.make_people(*names)
    if names.empty?
      abort 'Enter at least one name'
    else
      names.map do |name|
        Person.new(name)
      end
    end
  end
end

adam = Person.new ('adam')

# obj.send
puts adam.send(:greet, 'darcy')

people = Person.make_people('darcy', 'adam', 'dan', 'leah')

# triggers abort
# people = Person.make_people

people.each do |name|
  name.say_hello()
end

# method_missing
# adam.say_yo ('darcy')# NoMethodError
# adam.send :method_missing, :say_yo #NoMethodError

class Person
  def method_missing (method, *args)
    puts "You called #{method} with #{args.join}", 
  end
end

adam.say_yo ('darcy')

# proc object
#   => a block of code
#   => bound to a set of local variables
#   => keeps access to variables when called in different contexts 

def make_adder(arg)
  Proc.new { |n| arg + n }
end

add_five = make_adder(5)
add_five.call(7) #=> 12



