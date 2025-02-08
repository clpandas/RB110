NUM_WORDS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |num| NUM_WORDS[num] }
end

# Solution 2: sort
# def alphabetic_number_sort(numbers)
#   numbers.sort { |num1, num2| NUM_WORDS[num1] <=> NUM_WORDS[num2] }
# end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

=begin
Problem
- Input: array of integers between 0-19
- Output: array of input integers sorted by their English words
- Explicit rules:
  - The returned array sorts the English words for each number
- Implicit rules:
  - The returned array remains an array of integers, but in a new order (sorted by their English words)
- Clarfiying questions:
  - Is the returned array the original object modified, or a new object? 

Examples/test cases
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

Data structure
- input: array
- output: array

Algorithm
- Given a method `alphabetic_number_sort` that takes an array of integers as input 
- Convert the cooresponding integer to its English word counterpart (e.g. 0 to 'zero')- create a mapping of integers to their English counterpart
 - Sort the order based on the English counterpart (e.g. 'zero' is near the end, 'eight' is earlier on)
- Return a new array of the integers from the input array in sorted order based on their English counterpart

Code!
=end