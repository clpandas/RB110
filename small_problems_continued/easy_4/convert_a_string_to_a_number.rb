CHAR_TO_DIGITS = { 
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  string.chars.reduce(0) { |acc, char| acc * 10 + CHAR_TO_DIGITS[char] }
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

=begin
Problem
- Input: string of digits
- Output: integer
- Explicit rules:
  - The method cannot use the built-in `String#to_i` or `Integer()` constructor methods
  - Assume the method will receive all numeric characters 
- Implicit rules:
- Clarfiying questions:
- Mental model: manually convert each character in the string to its corresponding integer value and then assemble the values into a complete number. 

Examples/test cases
string_to_integer('4321') == 4321
string_to_integer('570') == 570

Data structure
- string input, integer output

Algorithm
- Initialize an accumulator variable to store the resulting integer values
- Create a mapping of characters to digits
- Iterate through each character in the string transforming the character to its numeric equivalent and saving that value in the accumulator variable
- Return the final accumulator value

Code!
=end