def measure(n=nil)
  start = Time.now
  if n.nil?
    yield
    Time.now - start
  else
    total = 0
    n.times do 
      yield
      total += (Time.now - start)
    end
    total / 5
  end
end