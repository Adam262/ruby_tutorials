def reverser
  result = yield.split
  result = result.map { |el| el.reverse }
  result = result.join(" ")
end

def adder( n=1 )
  yield + n
end 

def repeater( n=1 )
  n.times { yield } 
end


