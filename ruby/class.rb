class Person
  attr_accessor(:name, :height, :dob)
  attr_reader(:createdAt) #reader attr
  def initialize(name, height, dob)
    @name, @height, @dob = name, height, dob
    @createdAt = Time.now
  end
end

dan = Person.new("dan", 5.5, "04/12/85")

puts dan.name #dan
puts dan.createdAt

# class inheritance
class Coder < Person
  attr_accessor(:languages)
  def initialize(name, height, dob, *languages) #splat variable
    @languages = languages.map{|el| puts el}
    super(name, height, dob) #accesses properties of superclass
  end
end

adam = Coder.new("adam", 5.7, "01/23/45", "ruby", "js")
puts adam.languages

# instance_methods belong to Class
# instance_variables belong to instance

Person.instance_methods(false) # lists only method explicitly set in class, including instance variable getter/setter
Person.instance_methods # also lists method inheirited from Object
Person.instance_variables # []

adam.methods # should be equivalent to Person.instance_methods
adam.instance_variables # [:@name, :@height, :@dob, :@languages]

########## is_a?() / kind_of?() #######
puts adam.is_a? Coder # true
puts adam.kind_of? Person # true. synonomous w/ is_a?
puts adam.instance_of? Coder #true. must be instance of exact class, not subclass
puts adam.instance_of? Person # false

print Coder.ancestors # [Coder, Person, Object, Kernel, BasicObject]
#print adam.ancestors # NoMethodError

# private methods
# private method has implicit receiver -- self. 
# private method cannot have explicit receiver, so object can only call private method on itself. 
# calling self.private_method raises NoMethodError
# protected method is private method with argument
class PrivateTest
  attr_accessor(:val)
  def initialize (val)
    @val = val
  end

  def double
    self.priv_double
  end

  def times(n)
    @val * protected_times(n)
  end

  define_method :divide do |n|
    @val / n 
  end  

  private
  def priv_double
    @val * 2
  end

  protected
  def protected_times(n)
    @val * n
  end
end

test = PrivateTest.new(2)

test.send(:double)
test.double

test.send(:times, 5)
test.times(5)

