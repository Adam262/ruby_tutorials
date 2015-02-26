def add(n1, n2)
  n1 + n2
end

def subtract(n1, n2)
  n1 - n2
end

def sum(arr) 
  total = 0
  #total if arr.empty?
    arr.each do |el|
      total += el
    end 
  total
end

def multiply(*numbers)
  total = 1
    numbers.each do |el|
      total *= el
    end
  total
end

def power(base, exp)
  base**exp
end

def factorial(n)
  if (n == 0|| n == 1)
    return 1
  else 
    return n * factorial(n-1) 
  end
end



