#str[] == str.slice
str = "abcde"
puts str[0..2] == "abc" #true
puts str[0..2] == str.slice(0,3) #true

puts str[0,3] == "abc" #true
puts str[0,3] == str.slice(0..2) #true

#change case
puts str.capitalize #"Abcde"
puts str.upcase! #"ABCDE"
puts str.downcase! #'abcde'

#strip
strSpace = " abcde "
puts strSpace.lstrip #'abcde '
puts strSpace.rstrip #' abcde'
puts strSpace.strip #'abcde'

#str<<"x" vs str += 'x' vs str.concat("x") vs str + 'x'
a = 'abc'
a << 'd'; puts a # 'abcd'
a += 'e'; puts a # 'abcde'
a.concat('f'); puts a # 'abcdef'
a + 'g'; puts a # 'abcdef'

#scan vs split
phrase = "I want to hold your hand"
print phrase.split #["I", "want", "to", "hold", "your", "hand"]
print phrase.scan(/\w+/).join(" ") #"I want to hold your hand"
phrase = 'I:want:to:hold:your:hand'
print phrase.split(/\:/)

f = "a b c"
f.split == ["a", "b", "c"]
f.scan(/\w/) == ["a", "b", "c"]

g = "a, b, c"
g.split(/\,\s/) == ["a", "b", "c"]
g.scan(/\w/) == ["a", "b", "c"]

h = "the:rain:in:spain"
h.split(/\:/)
h.scan(/w+/)

# here document
puts (<<-EOT)
  This is line one
  This is line two
  EOT

e = "Hello world"
puts e.slice(0..5) #Hello
puts e.slice(6..-1) #World

"a"<<"b"


