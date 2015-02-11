# Iterators
#5.times { puts "yo!"}
#5.upto(10) { |n| puts n } # or .downto()
#5.step(50,5) { |n| puts n}

def countdown (start, stop)
  while start >=stop
    puts start
    start -= 1
  end
  puts 'blastoff!'
end

#countdown(10,1)

def countup (start, stop)
  until start > stop
    puts start
    start +=1
  end
  puts 'go!' 
end

#countup(1,10)



def capital 
  if ARGV.any? 
    state = ARGV.first
  else 
    abort 'Enter a command line argument'
  end
  case state
    when 'NJ'
      puts 'Trenton' 
    when 'MA'
      puts 'Boston'
    when 'NY'
      puts 'Albany'
    when 'CA'
      puts 'Sacramento'
    when 'UT'
      puts 'Provo'
    when 'MT'
      puts 'Helena'
    else puts "Enter a real state"  
  end
end

capital 




  
      