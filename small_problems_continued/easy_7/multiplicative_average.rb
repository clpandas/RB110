=begin
-P
- input: array of integers
- output: floating point number rounded to 3 decimal places
- explicit rules:
  - all integers in array are multiplied together
  - the product of the integers is then divided by the length of the array
  - the result is rounded to 3 decimal places
  - the input array is assumed to be non-empty 
-E
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
-D
-A
  - Given a method `show_multiplicative_average` that takes an array of integers as input
  - Iterate through the integers of the array and multiply them together
  - Divide the result by the length of the array
  - Print the result rounded to 3 decimal places
-C!
=end

def show_multiplicative_average(arr)
  result = ((arr.reduce(:*)) / ((arr.length).to_f))
  puts "The result is #{sprintf('%.3f', result)}" # or format('%.3f', result)
end

# # inspired by a LS student
# def show_multiplicative_average(arr)
#   result = arr.reduce(:*).fdiv(arr.length)
#   puts "The result is #{format('%.3f', result)}"
# end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667