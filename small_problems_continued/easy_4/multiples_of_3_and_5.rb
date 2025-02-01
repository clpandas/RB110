def multisum(number)
  array = []
  1.upto(number) { |num| array << num }
  array.select! { |num| num % 3 == 0 || num % 5 == 0 }
  array.sum
end

# Solution 2
# def multisum(number)
#   (1..number).select { |num| num % 3 == 0 || num % 5 == 0 }.sum
# end

# Solution 3: reduce
# def multisum(number)
#   array = []
#   1.upto(number) { |num| array << num }
#   array.select! { |num| num % 3 == 0 || num % 5 == 0 }
#   array.reduce(:+)
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

=begin
Problem
- Input: integer greater than 1
- Output: integer 
- Explicit rules:
  - The method computes the sum of the all multiples of 3 or 5 that that are between 1 and the provided number
  - The number passed to the method is an integer greater than 1
- Implicit rules:
- Clarfiying questions:

Examples/test cases
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

Data structure
- integer

Algorithm
- Given an integer greater than 1
- Search for multiples of 3 or 5 that are between 1 and the provided number
- Compute the sum of these multiples
- Return the sum

Code!
=end