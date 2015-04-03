newHash = {x:1, y:2, z:3}
oldHash = {:x =>1, :y=>2}
puts "newHash: #{newHash}"
puts oldHash

newHash.each_pair{|key, value| puts "#{key}: #{value}"}

artists = ["Madonna", "Lady Gaga", "Muse", "Madonna", "The Beatles", "Muse", "Madonna"]

def makeHash(arrParam)
  hashInstance = Hash.new(0)
  arrParam.each do |el|
    hashInstance[el]+=1
  end
  hashInstance
end

artistsHash = makeHash(artists)
#print artistsHash

# fetch
puts oldHash[:x]
puts oldHash.fetch :x

puts oldHash[:q] #nil

puts artistsHash["Madonna"]
puts artistsHash.fetch "Mozart" # KeyError

# methods

oldHash.keys [:x, :y]
oldHash.values
oldHash.each { |k,v| puts "#{k}:#{v}"}