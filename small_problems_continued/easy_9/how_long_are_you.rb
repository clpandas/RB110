=begin
-P
input: string
output: an array that contains every word from the string and its string length
explicit rules:
  - the words in the string are separated by exactly one space
  - any substring of non-space characters is a word
implicit rules:
  - an empty string will return an empty array
-E
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
word_lengths("") == []
-D
-A
- Given a method `word_lengths` that takes a string as input
- Initialize an empty array `word_and_lengths` to contain the different words from the string followed by the lengths of those words
- Separate the individual words from the string into an array
- Iterate over each word in the array
  - Build an array containing the current word as the first element, and the length of the word as the second element
  - Push that array to `word_and_lengths`
- Return `word_and_lengths` 
-C!
=end

# Version 1
def word_lengths(str)
  word_and_lengths = []
  str.split.each do |word|
    subarr = []
    subarr << word + " " + word.length.to_s
    word_and_lengths << subarr
  end

  word_and_lengths.flatten
end

# # Version 2
# def word_lengths(str)
#   str.split.map { |word| word + ' ' + word.length.to_s }
# end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]
p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]
p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]
p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
p word_lengths("") == []