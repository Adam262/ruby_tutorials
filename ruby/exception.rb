print RuntimeError.ancestors # [RuntimeError, StandardError, Exception, Object, Kernel, BasicObject]

# try
class Foo
  attr_accessor :baz

  def initialize (baz = nil)
    @baz = baz
  end
end

foo = Foo.new

foo.baz.upcase # => NoMethodError

foo.baz.try(:upcase) nil
