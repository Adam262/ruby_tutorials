text = "Can I hear a good story? The quick brown fox jumped over the lazy cat. That is a good story!"
stopwords = ["the", "The", "a", "is", "I", "Can"]

stopwords << "That"

#puts stopwords

allWords = text.scan(/\w+/)
# allWords = text.split

#print allWords
#goodWords = allWords.select{|word| !stopwords.include?(word)}
goodWords = allWords.reject{|word| stopwords.include?(word)}

#print goodWords

# wordHash = Hash.new(0)
# goodWords.each do |key|
#     if !wordHash[key]
#        wordHash[key]
#     else
#        wordHash[key]+=1
#     end
# end

wordHash = Hash.new(0)
goodWords.each do |key|
  wordHash[key]+=1
end

print wordHash
puts "story: #{wordHash['story']}"





