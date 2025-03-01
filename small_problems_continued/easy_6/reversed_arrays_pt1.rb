def reverse!(arr)
  left = 0
  right = arr.length - 1

  while left < right
    arr[left], arr[right] = arr[right], arr[left]
    left += 1
    right -= 1
  end

  arr
end

list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

=begin
-P
- Reverse the array in place (modify the original array, do not create a new one)
- input: an array, output: the original array, but in reversed order 
- explicit rules:
  - The return value is the same array object
  - We cannot use `Array#reverse` or `Array#reverse!`
- implcit rules:
  - A single-element array like ['abc'] remains unchanged.
  - An empty array should also remain unchanged.
-E
list = [1, 2, 3, 4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = [1, 2, 3, 4, 1]
result = reverse!(list)
p result == [1, 4, 3, 2, 1] # true
p list == [1, 4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true
-D
- The original array will be modified directly using element swapping
-A
- Given a method `reverse!` that takes a single array as input
- Initialize two index variables to serve as pointers
  - One starting from the beginning (`left`) and the other from the end (`right`)
- While `left` is less than `right`
  - Increment `left` by one (`left += 1`), effectively moving it one element to the right
  - Decrement `right` by one (`right -= 1`), effectively moving it one element to the left
- When `left` meets or passes `right`, the loop is over
- Return the original, but now modified array
-C!
=end