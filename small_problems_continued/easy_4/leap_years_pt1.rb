def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

# # Solution 2:
# def leap_year?(year)
#   (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
# end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true


=begin
Problem
- Input: integer (to represent the year)
- Output: boolean true or false
- Explicit rules:
  - Leap years occur every year that is evenly divisible by 4, unless the year is also divisible by 100. 
  - If the year is evenly divisible by 100, then it is not a leap year unless it is also evenly divisible by 400. 
- Implicit rules:
  - This method will work for any year greater than 0.
- Clarfiying questions:

Examples/test cases
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

Data structure
- integer input, and boolean output

Algorithm
- Recieve input: Accept 1 integer argument
- Check if `year` is evenly divisible by `400`
  - If `year % 400 == 0`, return `true` (it is a leap year)
- Check if `year` is evenly divisible by `100`
  - If `year % 100 == 0`, return `false` (it is not a leap year)
- Check if `year` is evenly divisible by `4`
  - If `year % 4 == 0`, return `true`` (it is a leap year)
- Otherwise, return `false`

Code!
=end