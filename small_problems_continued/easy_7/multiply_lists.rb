=begin
-P
- input: two arrays that contain a list of numbers
- output: one new array that contains the product of each pair of numbers from the arguments that have the same index
- explicit rules:
  - the array arguments contain the same number of elements
-E
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
-D
-A
- Given a method `multiply_list` that takes two arrays containing integers as arguments
- Initialize a new empty array to contain the products
- Iterate through `arr1` with an index
  - Append the result of multiplying the current element to the element at the same index of `arr2` to the new array
- Return the new array
-C!
=end

# # Version 1
# def multiply_list(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |num, idx|
#     new_arr << num * arr2[idx]
#   end

#   new_arr
# end

# # Version 2: `each_with_object`
# def multiply_list(arr1, arr2)
#   arr1.each_with_object([]).with_index do |(num, new_arr), idx|
#     new_arr << num * arr2[idx]
#   end
# end

# # Version 3: `zip`
# def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map { |subarr| subarr[0] * subarr[1] }
# end

# # Version 4: `zip` and `reduce`
# def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map { |subarr| subarr.reduce(:*) }
# end

# Version 5: `map` and `with_index` (FAVORITE VERSION so far)
def multiply_list(arr1, arr2)
  arr1.map.with_index { |num, idx| num * arr2[idx] }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]