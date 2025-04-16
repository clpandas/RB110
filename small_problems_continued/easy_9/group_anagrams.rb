=begin
-P
input: array of words
output: array of anagrams from the word list each on their own line
-E
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
=> ["demo", "dome", "mode"]
   ["neon", "none"]
   #(etc)
-D
-A
- Given a method `group_anagrams` that takes an array of words as input
- Define an empty hash to keep track of words that fit anagram patterns
- Iterate through each element in the array
  - Sort the characters of the string to find the common anagram pattern
    - If the sorted pattern is not already a key in the array
      - Add the sorted pattern as the key with the unsorted version of the word as the value wrapped in an array (for the possibility to contain more anagrams of that pattern)
    - Elsif the sorted pattern exists as a key in the array
      - Append the unsorted word as the next element in the array value associated with the key
- Iterate through the anagram hash and print each value on its own line
-C!
=end

def group_anagrams(arr)
  anagrams = {}

  arr.each do |word|
    key = word.chars.sort.join
    if anagrams.key?(key)
      anagrams[key] << word
    else
      anagrams[key] = [word]
    end
  end

  anagrams.each { |k, v| p v }
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

group_anagrams(words)
# => ["demo", "dome", "mode"]
# => ["neon", "none"]
# => (etc)