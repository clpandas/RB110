=begin
-P
- input: array of numbers
- output: the sum of the sums of each leading subsequence for the input array
- explicit rules:
  - assume the array always contains at least one number
- implicit rules:
  - a subsequence starts at the first element and progressively includes more elements, extending to the end of the array
-E
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
-D
-A
- Given a method `sum_of_sums` that takes an array of numbers as input
- Initialize a counter variable to 0 to keep track of the sum of sums
- Add the total of summing the input array to the counter variable
- Remove the last element from the array
- Add the total of the modified array to the counter variable
- Continue removing elements and adding the summed values until the array is empty
- Return the counter variable
-C!
=end

# Version 1: mutating
def sum_of_sums(arr)
  total = 0

  loop do
    total += arr.sum
    arr.pop
    break if arr.empty?
  end

  total
end

# # Version 2: non-mutating
# def sum_of_sums(arr)
#   total = 0
#   arr_dup = arr.dup
  
#   loop do
#     total += arr_dup.sum
#     arr_dup.pop
#     break if arr_dup.empty?
#   end

#   total
# end

# # Version 3: `reduce` (FAVORITE)
# def sum_of_sums(arr)
#   sum = 0
#   arr.reduce(0) do |acc, num|
#     sum += acc + num
#     acc + num
#   end

#   sum
# end

# # Version 4: `each_with_index`
# def sum_of_sums(arr)
#   total = 0
#   arr.each_with_index do |_, idx|
#     total += arr[0..idx].sum
#   end

#   total
# end

# # LS Solution 1
# def sum_of_sums(arr)
#   sum_total = 0
#   accumulator = 0

#   arr.each do |num|
#     accumulator += num
#     sum_total += accumulator
#   end

#   sum_total
# end

# # LS Solution 2
# def sum_of_sums(arr)
#   sum_total = 0
#   1.upto(arr.size) do |count|
#     sum_total += arr.slice(0, count).reduce(:+) # on every iteration `sum_total` is being incremented to the return value of summing all the elements in the array from the beginning to the current number at that iteration 
#   end

#   sum_total
# end

# # bonus funny version
# def sum_of_sums(arr)
#   sums = []
  
#   arr.each_with_index do |num, idx|
#     sums << arr[0, idx + 1].sum
#   end

#   sums.sum
# end

# # Favorite LS student version
# def sum_of_sums(nums)
#   sum = 0
#   nums.map { |num| sum += num }.reduce(:+)
# end

# # Second favorite LS student solution
# def sum_of_sums(arr)
#   return arr[0] if arr.size == 1
#   sum_of_sums(arr[0...-1]) + arr.reduce(:+)
# end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35