def interleave(arr1, arr2)
  new_arr = []
  index = 0

  while index < arr1.size
    new_arr << arr1[index]
    new_arr << arr2[index]
    index += 1
  end

  new_arr
end

# # Solution: `each_with_index`
# def interleave(arr1, arr2)
#   new_arr = []
#   arr1.each_with_index do |el, idx|
#     new_arr << el
#     new_arr << arr2[idx]
#   end
  
#   new_arr
# end

# # Solution: `zip` and `flatten`
# def interleave(arr1, arr2)
#   arr1.zip(arr2).flatten
# end

# # Solution: `each_with_object`
# def interleave(arr1, arr2)
#   arr1.each_with_object([]) do |el, new_arr|
#     new_arr << el
#     new_arr << arr2.shift
#   end
# end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


=begin
-P
- input: two arrays
- output: new array
- explicit rules:
  - the new array contains all elements from both array arguments, where the elements are taken in alternation
  - both input arrays are non-empty and have the same number of elements
-E
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
-D
- input: two array, output: new array
- intermediate: building into an array that gets used as the output array
-A
- Initialize an empty array to contain the accumulated elements from both arrays
- Initialize an index variable (set it to `0`) that will double as a counter
- While the index variable is less than the size of the array
  - Push the current index from each array to the new array
  - Increment the index by 1
- Return the new array
=end