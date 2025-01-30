def century(year)
  century = year / 100
  century += 1 unless year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

=begin
Problem
- Input: integer (to represent the year)
- Output: string (to represent the century number that ends with `st`, `nd`, `rd`, or `th` for the respective number)
- Explicit rules:
  - New centuries begin in years that end with `01`
- Implicit rules:
  - We are only dealing with integer inputs
- Clarfiying questions:

Examples/test cases
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Data structure
- integers and strings (to represent the input year and output century number) 

Algorithm
- Recieve input: Accept 1 integer argument
- Compute the century: Divide the given year by 100
  - If the year is exactly divisible by 100, then that is the century number
  - If there is a remainder, that means it is the next century, so add 1 to the number
- Determine the proper suffix:
  - Identify the last two digits of the century
  - If the last two digits are 11, 12, or 13, then the suffix is "th"
  - Otherwise, 
    - if the last digit is 1, then return "st"
    - if the last digit is 2, then return "nd"
    - if the last digit is 3, then return "rd"
    - else, all other numbers return "th"
  - Concatenate and return the century number with the appropriate suffix

Code!
=end