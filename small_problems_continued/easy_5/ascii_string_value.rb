def ascii_value(string)
  chars_array = string.chars
  
  chars_ascii_nums = chars_array.map do |char|
    char.ord
  end

  chars_ascii_nums.sum
end

# # Solution 2
# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

# Solution 3
# def ascii_value(string)
#   string.sum
# end

# Solution 4: `reduce` method
# def ascii_value(string)
#   string.each_char.reduce(0) { |acc, char| acc + char.ord }
# end

# Solution 5: `each_with_object` method 
# def ascii_value(string)
#   string.each_char.each_with_object([]) { |char, obj| obj << char.ord }.sum
# end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Further Exploration
# char.ord.chr == char
# `String#ord` returns the integer ordinal of the first character of `self`

=begin
Problem
- Input: string
- Output: ASCII string value
- Explicit rules:
  - The ASCII string value is the sum of the ASCII values of every character in the string
  - Use `String#ord` to determine the ASCII value of a character
- Implicit rules:
  - The input is only dealing with strings (assume no invalid inputs)
  - An empty string returns an ASCII string value of 0
- Clarfiying questions:

Examples/test cases
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

Data structure
- string input, integer output

Algorithm
- Initialize a sum variable to store the total ASCII string value
- Iterate through each character in the given string
- Convert each character to its ASCII value using `String#ord`
- Add the ASCII value of each character to the sum
- Return the final sum value after iterating through all the characters

Code!
=end