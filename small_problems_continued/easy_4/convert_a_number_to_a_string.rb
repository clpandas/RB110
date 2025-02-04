DIGITS_TO_CHARS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
}

# def integer_to_string(number)
#   number_array = number.digits.reverse
#   number_array.map do |num|
#     DIGITS_TO_CHARS[num]
#   end.join
# end

# Solution 2
def integer_to_string(number)
  number.digits.reduce('') do |acc, el|
    acc.prepend(DIGITS_TO_CHARS[el])
  end
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

=begin
Problem
- Input: positive integer or zero
- Output: string representation of input
- Explicit rules:
  - You cannot use the standard conversion methods such as `Integer#to_s`, `String()`, `Kernel#format`, etc.
- Implicit rules:
  - Assume you are only receving valid positive integers or zero as input
- Clarfiying questions:
  - Are we modifying the original input, or returning a new object?
- Mental model: manually convert each number in the integer to its corresponding character value and then assemble the values into a complete string. 

Examples/test cases
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Data structure
- integer input, string output

Algorithm
- Define a mapping of digits to their corresponding characters
- Separate the individual digits of the input number
- Append the corresponding string representation of the digit to the empty string
  - Reverse if necessary (i.e. if the digits are extracted from right to left)
- Return the final string representation

Code!
=end