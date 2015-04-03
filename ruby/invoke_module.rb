require './module.rb'

class InstanceMethods 
  include Parent # adds instance methods only
end

test = InstanceMethods.new

test.foo
test.bar
test.baz

# will raise NoMethodError when called on class
# InstanceMethods.foo

class ClassMethods 
  extend Parent # adds class methods only
end

ClassMethods.foo

# will raise NoMethodError when called on instance
class_method_test = ClassMethods.new
# class_method_test.foo



