=begin
-P
input: a string containing one or more words
output: the given string, but with words that have 5+ characters are reversed
explicit rules:
  - each string has only letters and spaces
  - spaces are included only when more than one word is present
-E
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
-D
- intermediate: an array to keep track of the words in the string to manipulate
-A
- Given a method `reverse_words` that takes a string of one or more words as input
- Convert the input string to an iterable collection, splitting the words at each space
- Iterate and transform the collection
  - If the length of the current word is greater than 5 characters, reverse the word
  - Else, do nothing to the word
- Return the transformed collection after rejoining it back to a string
-C!
=end

def reverse_words(str)
  str.split.map do |word|
    word.length >=  5 ? word.reverse : word
  end.join(' ')
end

# # LS solution
# def reverse_words(str)
#   words = []

#   str.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end

#   words.join(' ')
# end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS