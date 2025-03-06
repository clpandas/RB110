def halvsies(arr)
  halfway = arr.length / 2
  arr.length % 2 == 0 ? [arr[0...halfway], arr[halfway..]] : [arr[0..halfway], arr[halfway + 1..]]
end

# # Solution: `each_with_object`
# def halvsies(arr)
#   halfway = arr.length / 2 + (arr.length.odd? ? 1 : 0)
#   arr.each_with_object([[], []]).with_index do |(el, new_arr), idx|
#     idx < halfway ? new_arr[0] << el : new_arr[1] << el
#   end
# end


p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true

=begin
-P
- input: array
- output: an array with two nested arrays
- explicit rules:
  - the first array contains the first half of the original array, and the second array has the second half of the original array
  - if the original array has an odd number of elements, the middle element should be in the first array
- considerations: 
  - should the method mutate the original array? Should the method return a new array?
-E
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]] # true
p halvsies([1, 2, 3, 4, 1]) == [[1, 2, 3], [4, 1]] # true
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]] # true
p halvsies([5]) == [[5], []] # true
p halvsies([]) == [[], []] # true
-D
- input: array, output: an array with two nested arrays
- intermediate: maybe an array to contain the two nested arrays (if returning a new object)
-A
- Given a method `halvsies` that takes an array as input
- Initialize a new array with two nested empty arrays to contain the first half of the original array, and the second half of the original array, respectively 
- Determine the halfway point of the length of the array and use that as cut off for the first array
  - If the input array has an odd number of elements, add the extra element to the first array
- Return the new array that contains two nested arrays
=end