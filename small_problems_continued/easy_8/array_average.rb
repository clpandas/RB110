require 'pry-byebug'

=begin
-P
input: an array of numbers
output: an integer representing the average of all the numbers in the array
explicit rules:
  - the array will never be empty
  - the numbers will always be positive integers
  - the result should be an integer
  - don't use the `Array#sum` method
-E
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
-D
-A
- Given a method `average` that takes an array of numbers as input
- Initialize a variable `array_sum` to 0 to keep track of the sum total of the array numbers
- Iterate through each of the numbers in the array
  - Adding the current number to `array_sum`
- Divide `array_sum` by the length of the array
- The method will return the last evaluated expression 
-C!
=end

# Version 1
def average(arr)
  array_sum = 0
  arr.each { |num| array_sum += num }
  array_sum / arr.length
end

# # Version 2: `reduce`
# def average(arr)
#   arr.reduce(:+) / arr.length
# end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40