=begin
-P
input: integer
output: an array of all integers, in sequence, between 1 and the input number
explicit rules:
  - the argument will always be a valid integer than is greater than 0
implicit rules:
  - an input of 1 will return the array [1]
-E
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
-D
- Possibly a range to produce an array from the input number
-A
- Given a method `sequence` that takes a positive integer as input
- Define a range from 1 to the input number
- Convert the range to an array
- The method will return the last evaluated expression
=end

def sequence(num)
  (1..num).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]