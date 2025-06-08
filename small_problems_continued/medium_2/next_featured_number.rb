=begin
Problem: Given an integer input, return the next featured number. Else, return an error message if there is no next featured number

Rules/req:
- featured number conditions:
  - an odd number than is a multiple of 7
  - digits must occur exactly once

Examples
49 --> featured because it is odd && its digits occur only once && it is a multiple of 7
98 --> not featured because it is even
97 --> not featured because it is not a multiple of 7
133 --> not featured because the digit 3 appears twice

DS
in: integer
out: an integer than is greater than the input num
int:
  - a local variable to keep track of starting number

high level
- loop through the a block of code incrementing a starting number and checking the increments against multiple conditions

algorithm
- guard clause: return an error message if there is no next number
  - max unique number is: 9_876_543_210
- Define a starting number for a loop
- Increment the starting number
  - Return current number if number is odd && number is a multiple of 7 && digits in the number occur exactly once (helper method)

Checking if digits occur exactly once helper method
- convert the integer to an array of digits
- compare the array of digits to an array of unique digits
=end

MAX_FEATURED = 9_876_543_210

def unique_digit_checker(num)
  num.digits == num.digits.uniq
end

# # alternative `unique_digit_checker` helper method
# def unique_digit_checker(num)
#   num.digits.uniq.size == num.digits.size
# end

def featured(num)
  return "There is no possible number that fulfills those requirements" if num >= MAX_FEATURED
  
  start_num = num
  loop do
    start_num += 1
    return start_num if start_num.odd? && ((start_num % 7) == 0) && unique_digit_checker(start_num)
  end
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements