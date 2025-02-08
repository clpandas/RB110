def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

str = 'hello world'
puts str.object_id
puts spin_me(str).object_id
puts str.object_id

def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id
puts spin_me(arr).object_id
puts arr.object_id

=begin
Problem
- Input: string
- Output: string of same words as input string, but characters are reversed
- Explicit rules:
  - The return string contains the same words as the input string, but each word's characters are reversed
- Implicit rules:
- Clarfiying questions:
  - Is the returned string the same object as the one passed in as an argument, or a different object?
    - The returned string is not the same object as the original object passed in as an argument.
    - This is because `split` returns a new string object, thus the objects that are mutated by `reverse!` are already different from the argument passed into the method.

Examples/test cases
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

Data structure
- input: string
- intermediate: maybe an array to handle iterating through the words in the string input
- output: string

Algorithm
- Given the method `spin_me` that takes a string as input
- Split the string into its separate words 
- For each word, reverse the characters in the word 
- Recombine and return the words (now reversed) into a single full string

Code!
=end