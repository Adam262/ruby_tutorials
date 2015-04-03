## Style Guide ##
# map over collect
# find over detect
# select over find_all
# reject is opposite of select
# reduce over inject
# size over length

a = %w(1 2 3 4 5)
b = a.map { |el| el.to_i**2 }

b.each_index{ |el| puts el }
b.select { |el| el > 9} #find_all
b.find { |el| el == 9 }

c = [12,5,2,7,44,3,1]

puts [1].any? #true. equiv to: [1].count > 0 
puts [].empty? #true. equiv to: [].count == 0

# &:symbol is a proc object
# proc object
#   => a block of code
#   => bound to a set of local variables
#   => keeps access to variables when called in different contexts 
arr = ['a', 'b', 'c']
print arr.each { |e| e.capitalize! } == arr.each(&:capitalize!) #=> true

a = {:x=>1, :y=>2, :z=>3}
b = {:x=>1, :y=>0, :z=>4}
c = {:x=>0, :y=>2, :z=>3}

arr = [a,b,c]
print arr.group_by{ |el| el[:z] } # returns hash of elements grouped by value of el[key], where key is :z

names = ['adam', 'sasha', 'dan', 'sara', 'darcy']
print names.map(&:capitalize!) #, ie, perform string method on each array element
#print names.map(&:capitalize!).group_by { |el| el[0] } # cool. returns hash of elements grouped by first letter

a = [1,2,3,4,5]

a.find_all { |el| el < 3} #=> [1,2]. equivalent to select 

#slice
a = "I want to hold your hand"
a.slice(2,4) #'want' 
a.slice(2,1) #'w'. second argument is length
a.slice(2..5) # 'want'
a.slice(2...5) # 'wan'
a[2,4] #'want'
a[2..5] #'want'

# array assignment
a,b = [1,2]