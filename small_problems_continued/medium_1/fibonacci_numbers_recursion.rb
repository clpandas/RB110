=begin
P
input: an integer `n` representing the n-th  fibonacci number
output: the n-th fibonacci number in the sequence
rules:
- the method should be recursive
  - recursive methods have 3 primary qualities:
    1. they call themselves at least once
    2. they have a stopping condition (a base case)
    3. they use the result returned by calling themselves
- the fibonacci series is a sequence of numbers starting with 1 and 1 where each number is the sum of the two previous numbers
E
fibonacci numbers: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, etc.
F(n) = F(n-1) + F(n-2) where n > 2
base case: return 1 if n < 2
D
this method deals with performing mathematical operations on integers and using those integers as inputs for each successive recursive call
A
- Given a method `fibonacci` that takes an integer that represents the nth number of the fibonacci series
- Define a base case to exit out of the method so it does not recurse forever (stopping condition)
  - The method should return 1 if `n` is less than 2
- Unless the input `n` is less than 2
  - Continue to call the method `fibonacci` on `n - 1` and add that to calling the same `fibonacci` method on `n - 2` (this is because the output is the sum of the two previous numbers who also meet the criteria of being a fibonacci number)
C!
=end

def fibonacci(n)
  return 1 if n <= 2
  fibonacci(n - 1) + fibonacci(n - 2)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765