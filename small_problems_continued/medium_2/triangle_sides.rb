=begin
Problem: Given 3 arguments representing the 3 side of a triangle, return a symbol representing 1 of 4 possibilities (`:invalid`, `:equilateral`, `:isosceles`, `:scalene`)
- a valid triangle consists of two conditions:
  - the sum of the lengths of the 2 shortest side must be greater than the length of the longest side
  - all sides must have lengths greater than 0

:invalid --> sum of the 2 shortest sides is less than the length of the longest side || any side has a length less than 0
:equilateral --> all 3 sides are the same length
:isosceles --> 2 sides are equal and 3rd is different
:scalene --> all 3 sides are different length

Example
3, 4, 5 --> :scalene because all 3 sides are different length and sum of the 2 shortest sides is greater than length of the longest side
3, 3, 1.5 --> :isoceles because 2 sides are equal length and 1 is different and sum of 2 shortest sides is greater than length of longest side
3, 1, 1 --> :invalid because even though 2 sides are equal in length, the sum of the 2 shortest sides is less than the length of the longest side

DS
in: 3 integer arguments
out: a symbol representing 1 of 4 possibilities
int: an array containing the side lengths for checking against conditions

High level
Check integer inputs against various conditions to produce symbol output

Algorithm
- Given a method `triangle` that takes 3 integers representing the length of triangle sides as input
- Define an array to contain the 3 side lengths of the triangle
- Return :invalid if any of the lengths is less than 0 || if the sum of the 2 shortest sides is less than the longest side
- Return :equilateral is all three inputs are equal
- Return :isosceles if 2 sides are equal and the 3rd is different
- Else return :scalene
=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort

  return :invalid if sides.any? { |side| side <= 0 } || (sides[0, 2].sum < sides[-1])
  return :equilateral if sides.all? { |side| side == sides.first }
  return :isosceles if sides.uniq.length == 2
  return :scalene if sides.uniq.length == 3
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene 
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid