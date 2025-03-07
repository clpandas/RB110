def include?(arr, search_val)
  arr.each { |el| return true if el == search_val }
  false
end

# # Another solution
# def include?(arr, search_val)
#   match = []
#   arr.each { |el| match << el if el == search_val }
#   !match.empty?
# end

# # A recursive solution
# def include?(arr, search_val)
#   return false if arr.empty?
#   return true if arr.first == search_val

#   include?(arr[1..], search_val)
# end

# # LS Solution
# def include?(array, value)
#   !!array.find_index(value)
# end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin
-P
- input: array as param 1, a search value as param 2
- output: boolean
- explicit rules:
  - `Array#include?` cannot be used in the method solution
- implicit rules:
  - the array can contain any data type as an object, and the search value can be of any data type (including `nil`)
-E
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
-D
- input: array of values as param 1 and a single search value as param 2, output: boolean value
-A
- Given the method `include?` with two parameters (param1 is an array and param 2 is a search value)
- Iterate through the array and compare the search value with the current element
  - If the current element is the same value as the search value, return true
  - If none of the elements are the same value as the search value, return false
=end