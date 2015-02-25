# log to console
# puts 'hello world';

# define variable
a = [1,2,3,4,5];

# define method
def iterator(array) 
  array.each {|i| puts i**2} 
end

def hello
  3.times {puts 'hello world I\'m a method'}
end

# note must use double quotes
def helloParam (name)
  puts "hello #{name.split.join}"
end

#run method w/ params
iterator(a);
helloParam('adam_method');

# run method w/o params
hello;

# use Class
class Person
  def initialize(name="world")
    @name = name;
  end

  def say_hi
    puts "Hi #{@name}"
  end

  def say_bye
    puts "Bye #{@name}"
  end
end

#make instance
adam = Person.new('adam_instance')
adam.say_hi

#access object properties written to Person class, but not inherited propertiesi
puts Person.instance_methods(false) # say_hi # say_bye
puts adam.respond_to?("say_hi") #true. we created this method
puts adam.respond_to?("to_s") #true. this is native method to all objects

#write instance properies
class PersonII 
  attr_accessor :name
end

jojo = PersonII.new
puts jojo.respond_to?("name") #true
puts jojo.respond_to?("name=") #true. this is setter property
jojo.name = "jojo"
puts jojo.name

# make Greeter class for array of names
class Greeter 
  attr_accessor :names

  def initialize(names = "world")
    @names = names
  end

  def how_are_you
    if @names.nil?
      puts "..." 
      elsif
        @names.respond_to?("each")
        @names.each do |name| 
          puts "How are you #{name}?"
        end #do
      else 
        puts "How are you #{name}?"
    end # if?
  end # method

  def bye_bye 
    if @names.nil?
      puts "..."
      elsif @names.respond_to?("join")
        puts "Bye-bye #{@names.join(', ')}"
      else
        puts "Bye #{@names}" 
    end #if
  end #method

end # Class

#create instance of Greeter class
people = Greeter.new
people.names = nil
puts people.how_are_you

#write names property
namesArr = ['zeke', 'sasha', 'rohyn', 'mo']
people.names = namesArr
puts people.how_are_you
puts people.bye_bye

#scan string for regex
y = "My area code is 908 and my address is 838 Standish"
y.scan(/\d+/) do |x|
        puts x
end


# array methods
x = [1,2,3,4,5]
i = 0
#x.each {|i| puts i} # 1 2 3 4 5
#x.map {|i| puts i > 3} #false false false true true
def loop(arr, idx)
  while idx < arr.length do
    puts arr[idx]
    idx+=1
  end 
end
loop(x,i)

# hash
# define two ways
myHash = {"a" => 1, "b" =>2} #literal
myHashII = Hash.new(1) #{} #constructor
#myHashII[“count”]=1

# make hash from array
a = {:name => "adam"}
b = {:name => "adam"}
c = {:name => "dan"}
d = {:name => "lady gaga"}
e = {:name => "darcy"}
f = {:name => "darcy"}

arr = [a,b,c,d,e,f]
hash = Hash.new(0)

arr.each { |el| hash[el[:name]] +=1 }
hash

# Hash methods
puts myHash.keys 
puts myHash.values 
myHash.each{|key, value| puts "#{key} equals #{value}"}

#Class inheiritance
class Person 
    attr_accessor :f_name, :l_name

    def initialize(f_name, l_name)
        @f_name, @l_name = f_name.capitalize, l_name.capitalize
    end

    def say_hello 
        puts "Hello my name is #{@f_name} #{@l_name}"
    end
end

class Runner < Person
    attr_accessor :f_name, :l_name, :event

    def initialize(f_name, l_name, event)
        super(f_name, l_name)
        @event = event
    end
    
    def say_hello 
        puts "Hello my name is #{@f_name} and my event is #{@event}"
    end
end

dan = Person.new("dan", "barcan")
dan.say_hello

adam = Runner.new("adam", "barcan", "5k")
adam.say_hello

