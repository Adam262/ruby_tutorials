:a.class # Symbol

# symbols are not strings
## symbols do not have string methods!
## unlike strings, references to same symbol have same object_id

str1, str2 = ["a", "a"]
print str1.object_id == str2.object_id # false

sym1, sym2 = [:a, :a]
print sym1.object_id == sym2.object_id # true

# all symbols are kept in memory
print Symbol.all_symbols.size

new_sym = :new_symbol
print Symbol.all_symbols.size

