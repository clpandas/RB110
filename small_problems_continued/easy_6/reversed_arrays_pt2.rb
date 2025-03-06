def reverse(arr)
  arr.each_with_object([]) do |el, new_arr|
    new_arr.prepend(el)
  end
end

# Note: For arrays `unshift` is functionally the same as `prepend` 

# # Solution 2: `reduce`
# def reverse(arr)
#   arr.reduce([]) do |acc, el|
#     acc.prepend(el)
#   end
# end

# # Solution 3: two-pointer swap approach
# def reverse(arr)
#   new_arr = arr.dup
#   left, right = 0, arr.length - 1 
  
#   while left < right
#     new_arr[left], new_arr[right] = new_arr[right], new_arr[left]
#     left += 1
#     right -= 1
#   end 

#   new_arr
# end

# # LS Solution
# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]         # => true
p reverse([1, 2, 3, 4, 1]) == [1, 4, 3, 2, 1]   # => true
p reverse(%w(a b e d c)) == %w(c d e b a)       # => true
p reverse(['abc']) == ['abc']                   # => true
p reverse([]) == []                             # => true

p list = [1, 3, 2]                                # => [1, 3, 2]
p new_list = reverse(list)                        # => [2, 3, 1]
p list.object_id != new_list.object_id          # => true
p list == [1, 3, 2]                             # => true
p new_list == [2, 3, 1]                         # => true

=begin
-P
- The method takes an array and returns a new array with the elements from the original list in reverse order.
- input: array, output: new array
- explicit rule:
  - Do not modify the original array
  - Do not use `Array#reverse` or `Array#reverse!`
  - Do not use the method from pt. 1
-E
p reverse([1, 2, 3, 4]) == [4, 3, 2, 1]         # => true
p reverse([1, 2, 3, 4, 1]) == [1, 4, 3, 2, 1]   # => true
p reverse(%w(a b e d c)) == %w(c d e b a)       # => true
p reverse(['abc']) == ['abc']                   # => true
p reverse([]) == []                             # => true

list = [1, 3, 2]                                # => [1, 3, 2]
new_list = reverse(list)                        # => [2, 3, 1]
p list.object_id != new_list.object_id          # => true
p list == [1, 3, 2]                             # => true
p new_list == [2, 3, 1]                         # => true
-D
- intermediate, output: maybe use an array structure to contain reversed elements for the output
-A
- Given a method `reverse` that takes an array as input
- Initialize a new array to contain the elements in reversed order
- Iterate through the original array
  - Using element reference to prepend the current element to the new array
- Return the new array
-C!
=end