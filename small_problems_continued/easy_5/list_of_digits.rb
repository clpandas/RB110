# def digit_list(number)
#   number.digits.reverse
# end

# Solution 2
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

=begin
Problem
- Input: positive integer
- Output: an array of integers
- Explicit rules:
  - The return value is an array of single digit integers consisting of the numbers included in the input number
- Implicit rules:
- Clarfiying questions:

Examples/test cases
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

Data structure
- input: integer
- output: array of integers

Algorithm
- Given a method `digit_list` that takes a positive integer `number` as input
- Extract the digits of `number` into an array
- Return the array

Code!
=end