def echo(str)
  "#{str}"
end

def shout(str)
  "#{str.upcase}"
end

# def repeat(str, times = nil)
#   times = times || 2
#   return "#{ str * times }"
# end

def repeat(str, timesToRepeat=nil)
  timesToRepeat = timesToRepeat || 2
  valToReturn = ""
  
  timesToRepeat.times do
    valToReturn += str + " "
  end
  
  valToReturn.strip #.chop also works
end

def start_of_word(str, firstLetters) 
  str[0,firstLetters] #params are start, length 
end

def first_word(str)
  unless str.nil?
    arrStr = str.split #.scan(/\w+/) works too
    arrStr[0]
  end
end

def titleize(str)
  stopwords = ["and", "the", "over"]
  unless str.nil?
    arrStr = str.split
    arrStr.each do|el|
      if arrStr.index(el) == 0
        el.capitalize!
      elsif !stopwords.include?(el)
        el.capitalize!
      end
    end
  end
    arrStr.join(" ")
end



