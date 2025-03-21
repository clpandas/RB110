=begin
-P
input: string
output: new string of the words in the input string, but in reverse order
implicit rules:
  - case is kept in tact
  - an input string of multiple spaces returns an empty string
-E
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
-D
- intermediate: an array to manipulate the words in the string
-A
- Given a method `reverse_sentence` that takes a string as input
- Initialize an empty array to contain the words of the input string in reversed order
- Convert the input string to an iterable collection, splitting the words at each space
- Iterate through the string of words
  - Push the current word to the beginning of the new array
- Rejoin the new array back to a string
- Return the new string
-C!
=end

# Version 1
def reverse_sentence(sentence)
  result = []
  sentence.split.each do |word|
    result.unshift(word)
  end

  result.join(" ")
end

# # LS solution: much more simple
# def reverse_sentence(str)
#   str.split.reverse.join(" ")
# end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''