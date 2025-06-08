=begin
problem: Given an integer, return the difference between the square of the sum of the first `n` positive integers and the sum of the squares of the first `n` positive integers
rules/req:
- squaring the sum means multiplying by two the sum
- only positive integers

EX
3 -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2) --> 22
10 -> (1 + 2 + .. + 10)**2 - (1**2 + 2**2 + .. 10**2) --> 2640
1 -> (1)**2 - (1**2) --> 0

DS
in: integer
out: integer representing the difference in squares
int: summing the first `n` positive integers before squaring them, and also squaring the first `n` positive intgers before getting the difference in values

HL
find sum of first `n` positive intgers (square the sum)
find square of first `n` positive integers
find the absolute difference between the two

algorithm
- Define a variable `square_of_sum`
- Define a variable `sum_of_squares`
- Iterate through a range from 1 up to the num
  - Sum the nums, then square the nums, save that value in `square_of_sum`
- Iterate through a range from 1 up to the num
  - Find the square of each num, sum the squares, save that value in `sum_of_squares`
- Return the difference between `square_of_sum` and `sum_of_squares`
=end

def find_square_of_sums(num)
  (1..num).sum**2
end

def find_sum_of_squares(num)
  (1..num).reduce(0) { |sum, n| sum + n**2 }
end

# # without reduce
# def find_sum_of_squares(num)
#   total = 0
#   (1..num).each { |num| total += num**2 }

#   total
# end

def sum_square_difference(num)
  square_of_sum = find_square_of_sums(num)
  sum_of_squares = find_sum_of_squares(num)

  square_of_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150