=begin
Problem
- input: a positive integer
- output: the sum of the its digits
Examples
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
Data structure
- integer input, array intermediate, back to integer output
Algorithm
- Given a method `sum` that takes a positive integer as input
- Convert the integer to a an array of the individual digits
- Return the summed the digits of the array
=end

def sum(num)
  num.digits.sum
end

# # without `digits`
# def sum(num)
#   num.to_s.chars.map { |el| el.to_i }.sum
# end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45