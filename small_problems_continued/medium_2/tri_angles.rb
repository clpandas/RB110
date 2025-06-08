=begin
Problem: Given 3 integers that represent the 3 angles of a triangle as input, return 1 of 4 possbilities representing whether the  triangle is a right, acute, obtuse, or invalid triangle
Rules/req:
- Valid triangle conditions:
  - the sum of the angles must be exactly 180 degrees
  - all angles must be greater than 0
- integer inputs (no floating point) represent degrees

right - One angle of the triangle is a right angle (90 degrees)
acute - All 3 angles of the triangle are less than 90 degrees
obtuse - One angle is greater than 90 degrees.

Examples
0, 90, 90 --> :invalid because 0 degree angle
50, 50, 50 --> :invalid because angles add up to less than 180 degrees
30, 90, 60 --> :right because 1 angle is 90 degrees(and sum of angles is 180)
120, 50, 10 --> :obtuse because 1 angle is greater than 90 (and sum of angles is 180)
60, 70, 50 --> :acute because all 3 angles are less than 90 (and sum of angles is 180) 

DS
in: 3 integers representing triangle angles in degrees
out: 1 of 4 possible symbols
int: 
  - using the 3 inputs as elements of an array for easier manipulation (summing, checking against conditions)

High level
Check the 3 inputs against various conditions to output proper symbol

Algorithm
- Define an array of the 3 inputs
- Return `:invalid` if sum of angles is not equal to 180 || if any of the angles is 0 or less 
- Return `:right` if 1 angle is 90
- Return `:obtuse` if 1 angle is greater than 90
- Return `:acute` if all 3 angles are less than 90
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  return :invalid if angles.sum != 180 || angles.any? { |angle| angle <= 0 }
  return :right if angles.one? { |angle| angle == 90 }
  return :obtuse if angles.one? { |angle| angle > 90 }
  return :acute if angles.all? { |angle| angle < 90 }
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid