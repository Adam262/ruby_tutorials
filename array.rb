#!/usr/bin/env ruby

# Arrays
a = %w(1 2 3 4 5)
b = a.map { |el| el.to_i**2 }

b.each_index{ |el| puts el }
b.select { |el| el > 9} #find_all
b.find { |el| el == 9 }

c = [12,5,2,7,44,3,1]

def bubble_sort (array)
  swapped = true
  print array if array.size <= 1
  return array
  while swapped
    swapped = false
    array.each_index do |i|
      if i < array.size-1 && array[i] > array[i+1] 
        puts "i:#{i}, el:#{array[i]}"
        temp = array[i]
        array[i] = array[i+1]
        array[i+1] = temp
        swapped = true
      end
    end
  end
  print array
  return array
end

bubble_sort ([5,4,3,2,1])
