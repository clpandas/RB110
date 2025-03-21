=begin
-P
input: string
output: an array of all possible substrings
explicit rules:
  - the returned array should be ordered by where in the string the substring begins
  - i.e. this means that all substrings that start at index 0 should be first, then all substrings at start at index 1 come next, etc.
  - the substrings at a given position is returned in order from shortest to longest
  - the previous `leading_substrings` method should be used in this solution
implicit rules:
- the substrings for position 0 (the starting index) have the most elements (equal to the length of the input string)
- the substring for the final position (the last index) has only a single element (is equal to the final character of the string)
-E
 substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
-D
-A
- Given a method `substrings` that takes a string as input
- Initialize an empty array to contain all possible substrings
- Initialize a counter variable set to 0
- Loop through the input string for as many times as there are characters in the string
- At each iteration, slice into the string from the counter up to the end of the string
  - Pass the slice into the `leading_substrings method`
  - Push the return value to the empty array
- At each interation, increment the counter
- Return the new array
-C!
=end

def leading_substrings(str)
  new_arr = []
  str.chars.each_with_index do |char, idx|
    new_arr << str[0, idx + 1]
  end

  new_arr
end

def substrings(str)
  new_arr = []

  (0...str.length).each do |counter|
    substring = str[counter..-1]
    new_arr.concat(leading_substrings(substring))
  end

  new_arr
end

# # while loop
# def substrings(str)
#   new_arr = []
#   counter = 0

#   while counter < str.length
#     slice = str[counter..-1]
#     new_arr.concat(leading_substrings(slice))
#     counter += 1
#   end

#   new_arr
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]