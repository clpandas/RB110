array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) # array1 is initialized to an array of string values
array2 = [] # array2 is initialized to an empty array
array1.each { |value| array2 << value } # the block is appending each element from array1 to array2 (array2 now looks like array1)
array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # the block is destructively upcasing all the characters in the elements that start with "C" and "S"
puts array2 # Moe Larry Curly Shemp Harpo Chico Groucho Zeppo (all on their own line because `puts`)

# Whoops. I was wrong. 
# My mind thought that by appending each value to the other array, the string objects were copied (duplicated), rather than their references being copied. 
# Key takeaways:
  # `<<` adds references to existing objects, not copies (duplicates)
  # because `upcase!` is mutating, it affects all objects that reference the mutated object