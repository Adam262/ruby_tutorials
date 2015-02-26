class Book
  attr_accessor :title

  def initialize(title = nil)
    @title = title 
  end  

  def title 
    unless @title.nil? 
      @title  = title.capitalize!
    end
  end 

end