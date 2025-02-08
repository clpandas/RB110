def word_sizes(string)
  count_hash = Hash.new(0)
  string.split.each { |word| count_hash[word.size] += 1 }
  count_hash
end

# Solution 2: tally
# def word_sizes(string)
#   string.split.map(&:size).tally
# end

# Solution 3: each_with_object
# def word_sizes(string)
#   string.split.each_with_object(Hash.new(0)) { |word, hash| hash[word.size] += 1 }
# end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=begin
Problem
- Input: string of one or more space separated words
- Output: hash
- Explicit rules:
  - The method takes a string of one or more space separated words
  - The method returns a hash that shows the number of words of different sizes
  - Words consist of any string of characters that does not include a space
- Implicit rules:
  - Non-alphabetic characters count as characters in the word count
  - An empty string returns an empty hash
  - The input string is not mutated
- Clarfiying questions:

Examples/test cases
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Data structure
- input: string
- output: hash with integer key value pairs

Algorithm
- Given a method `word_sizes` that takes a single string parameter
- Separate the string at each space
- Count the characters for each separated word
  - Keep the count in a hash, where the key is the character count and the value is how many words in the string contain that many characters
- Return the hash

Code!
=end