def leap_year?(year)
  return true if year < 1752 && year % 4 == 0
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

=begin
Problem
- Input: integer (to represent year)
- Output: boolean value (to represent if it is a leap year)
- Explicit rules:
  - The same rules apply as before, but also consider that the Julian calender was used prior to 1752, which considered leap years as any year that is evenly divisible by 4. 
- Implicit rules:
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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

Data structure
- integer input, and boolean output

Algorithm

Code!
=end