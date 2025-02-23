def find_fibonacci_index_by_length(digits)
  previous, current = 1, 1
  index = 2

  while current.to_s.length < digits
    previous, current = current, previous + current
    index += 1
  end

  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

=begin
Problem
- Input: integer
- Output: integer
- Explicit rules:
  - Fibonacci series: the first two numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers
  - the method should calculate and return the index of the first Fibonacci number that has the number of digits specified as an argument (i.e. the first Fibonacci number has index 1)
  - assume the argument will always be greater than or equal to 2
  - Implicit rules:
  - we are working with positive whole numbers
- Clarfiying questions:

Examples/test cases
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

Data structure
input: integer
output: integer

Algorithm
- Given a method `find_fibonacci_index_by_length` that takes an positive integer as input
- Initialize 2 variables `previous` and `current` to 1 and 1, which represents the start of the fibonacci series
- Initialize a variable `index` to keep track of the current index
- Keep looping until `current` reaches the required number of digits specified by the argument
  - Compute the next fibonacci number: `previous, current = current, previous + current`
  - Increment `index` at each iteration
- Return `index` when `current` reaches the required length

Code!
=end