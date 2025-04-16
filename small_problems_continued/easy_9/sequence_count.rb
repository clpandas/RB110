=begin
-P
input: two integers as arguments
output: an array
rules:
  - the first argument is a count
  - the second argument is the first number of a sequence
  - the array is the same length as the count argument
  - the values of each element from the starting value are multiples of the starting value
  - the count argument will always have a value of 0 or greater
  - the starting number can be any integer value (even 0 or negative)
  - if the count is 0, an empty list should be returned
-E
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
-D
-A
- Given a method `sequence` that takes two integers as input (a count number, and a starting number)
- Define a range from 1 to the count number
- Use the range elements as a multiplier for the start value to populate the return array
- Return the new array
-C!
=end

def sequence(count_num, start_num)
  return_arr = (1..count_num).to_a
  return_arr.map { |num| num * start_num }
end

# # refactored: like LS's solution 2
# def sequence(count_num, start_num)
#   (1..count_num).map { |num| num * start_num }
# end

# # LS solution: a more manual way
# def sequence(count_num, start_num)
#   sequence = []
#   num = start_num

#   count_num.times do
#     sequence << num
#     num += start_num
#   end

#   sequence
# end

# # `reduce`
# def sequence(count_num, start_num)
#   (1..count_num).reduce([]) { |arr, current_num| arr << start_num * current_num }
# end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []