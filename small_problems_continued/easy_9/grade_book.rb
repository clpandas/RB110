=begin
-P
input: three scores (three separate integers)
output: the letter grade associated with the mean (average) of the three scores (a string argument)
rules:
  - Numerical Score Letter	Grade:
      90 <= score <= 100	'A'
      80 <= score < 90	'B'
      70 <= score < 80	'C'
      60 <= score < 70	'D'
      0 <= score < 60	'F'
  - The input values will be between 0 and 100.
-E
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"
-D
- input is 3 integer values
- the average of the 3 values is mapped to a string output
-A
- Given a method `get_grade` that takes 3 integers as input
- Determine the average of the 3 integer values
- Compare the average to a range that is associated with a letter value
- Return the letter value
-C!
=end

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3) / 3

  case average
  when 90..100 then 'A'
  when 80...90 then 'B'
  when 70...80 then 'C'
  when 60...70 then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"