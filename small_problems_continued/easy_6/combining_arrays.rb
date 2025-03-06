# # version 1
# def merge(arr1, arr2)
#   new_arr = []
#   arr1.each { |num| new_arr << num unless new_arr.include?(num) }
#   arr2.each { |num| new_arr << num unless new_arr.include?(num) }
#   new_arr
# end

# # version 2
# def merge(arr1, arr2)
#   new_arr = []
#   (arr1 + arr2).each { |num| new_arr << num unless new_arr.include?(num) }
#   new_arr
# end

# # Solution with `each_with_object`
# def merge(arr1, arr2)
#   (arr1 + arr2).each_with_object([]) { |num, new_arr| new_arr << num unless new_arr.include?(num) }
# end

# # Solution with `uniq`
# def merge(arr1, arr2)
#   (arr1 + arr2).uniq
# end

# LS Solution
def merge(array_1, array_2)
  array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=begin
-P
- Return an array that has all values from two arrays, but with no duplicate values
- input: two array arguments
- output: a new array of all values of the argument arrays, but with no duplicate values
- explicit rules:
  - no duplicate values in the returned array
- implicit rules:
  - given the single example, we are only considering array with integer elements
- considerations
  - does the returned array have to be in sorted order?
-E
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
-D
- input: two array, output: a new array
-A
- Given a method `merge` that takes two arrays as input
- Initialize a new array to contain the values from both arrays
- Iterate through both arrays 
  - If the new array has the current value, skip adding it to the new array
- Return the new array
-C!
=end