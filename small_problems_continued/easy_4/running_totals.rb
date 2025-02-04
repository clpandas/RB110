def running_total(array)
  sum = 0
  array.map { |num| sum += num }
end

# Solution 2: each_with_object
# def running_total(array)
#   array.each_with_object([]) { |num, obj| obj << (obj.last.to_i + num) }
# end

# Solution 3: reduce
# def running_total(array)
#   array.reduce([]) { |obj, num| obj << (obj.last.to_i + num) }
# end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

=begin
Problem
- Input: array of numbers
- Output: array of the same number of elements as input, but with each preceeding element as a running total of the previous elements
- Explicit rules:
  - The output has the same number of elements as the input
  - A running total is the sum of all values in a list up to and including the current element. 
- Implicit rules:
  - The array is only working with positive integer elements
  - If the array has zero elements, it will return an array of zero elements
  - If the array has a single element, it will return only the single element

- Clarfiying questions:
  - Are we returning a new array, or modifying the same array?
    - I will return a new array. 

Examples/test cases
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Data structure
- array with integer elements

Algorithm
- Given an array of integers
- Return a new array with the same number of elements as the original array
- Each element in the new array represents the running total of elements from the original array up to and including the corresponding index
  Initialize an empty array to store the running totals.
  - Set a running sum variable to 0.
  - Iterate through the given array:
  - Add the current element to the running sum.
  - Append the running sum to the result array.
  - Return the result array.

Code!
=end