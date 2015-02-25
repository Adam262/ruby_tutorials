"Hello world".respond_to?(:each_char) #=> true
"Hello world".gsub(/\s/,'').downcase.chars.sort.join #=> "dehllloorw"

a = "Hello my name is adam"
#print a.split

b = %q(every-rose-has-its-
      and-every-night-
      has-its-dawn)
print b.split('-').reverse.join('/')

c = "My address is 838 Standish Ave"
print c.scan(/\d+/).join.to_i
print c.scan(/\S\S/)

d = "       I hate leading space"
#print d.lstrip
print d.gsub(/^\s+/, "")
print d.match(/\w{4}(?=\s)/)
# here document
puts (<<-EOT)
  This is line one
  This is line two
  EOT

e = "Hello world"
puts e.slice(0..5) #Hello
puts e.slice(6..-1) #World

"a"<<"b"

f = "a b c"
f.split == ["a", "b", "c"]
f.scan(/\w/) == ["a", "b", "c"]

g = "a, b, c"
g.split(/\,\s/) == ["a", "b", "c"]
g.scan(/\w/) == ["a", "b", "c"]

h = "the:rain:in:spain"
h.split(/\:/)
h.scan(/w+/)


arr_anagram = ['eagle', 'gleea', 'Egael', 'cysyx', 'eagleeagle']

def anagram (str, array)
  abort 'enter a valid string of at least one character' unless str.is_a?(String) && str.size >= 1
  abort 'enter a non-empty array' unless array.is_a?(Array) && array.any?

  def sort_string (str)
    str.downcase.chars.sort!.join
  end
  []
  str = sort_string(str)
  array_sorted = array.map { |el| sort_string(el) }
  array_to_return = Array.new

  array_sorted.each_index do |i|
    el = array_sorted[i]
    next if el.size != str.size 

    if el == str
      array_to_return << array[i]
    end
  end

  print array_to_return
  array_to_return
end

anagram('eagle', arr_anagram)