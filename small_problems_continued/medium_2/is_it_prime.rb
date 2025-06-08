=begin
problem: given a positive integer as input, return a boolean true or false depending on if the input is a prime number
rules/req:
- a prime number is defined as a positive number that is evenly divided by 1 and itself
- 1 is not prime

EX
1 is not prime
2 is prime
3 is prime
4 is not prime
any even number after 2 is not prime
5 is prime
7 is prime
9 is the first odd number after 1 that is not prime

DS
in: positive integer
out: boolean true or false
int: a range object from 3 up to the input to check for divisibility

high level
iterate through each number of a range up to the input number to check if none of the numbers are divisible

algorithm
- return false if input is 1
- return true if input is 2
- return false if input is even
- iterate through a range from 3 up to the square root of input num
  - return true if none if the numbers are divisible by input num
=end

def is_prime(num)
  return false if num == 1
  return true if num == 2
  return false if num.even?

  (3..Math.sqrt(num).to_i).step(2).none? { |n| num % n == 0 }
end

# # no squareroot
# def is_prime(num)
#   return false if num == 1
#   return true if num == 2
#   return false if num.even?

#   (3..(num/2)).step(2).none? { |n| num % n == 0 }
# end

puts(is_prime(1) == false)              # true
puts(is_prime(2) == true)               # true
puts(is_prime(3) == true)               # true
puts(is_prime(4) == false)              # true
puts(is_prime(5) == true)               # true
puts(is_prime(6) == false)              # true
puts(is_prime(7) == true)               # true
puts(is_prime(8) == false)              # true
puts(is_prime(9) == false)              # true
puts(is_prime(10) == false)             # true
puts(is_prime(23) == true)              # true
puts(is_prime(24) == false)             # true
puts(is_prime(997) == true)             # true
puts(is_prime(998) == false)            # true
puts(is_prime(3_297_061) == true)       # true
puts(is_prime(23_297_061) == false)     # true