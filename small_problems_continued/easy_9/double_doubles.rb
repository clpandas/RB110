=begin
-P
input: number
output: either double the number if the number is not considered a double number, or the number itself if the number is considered a double number
explicit rules:
  - a double number contains an even number of digits, where the the left half is exactly the same as the right half (e.g. 1414 is a double number, 1441 is not)
-E
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
-D
- Methods for integers are less flexible, thus converting the integer to a string or an array gives more options for manipulating the data (e.g. indexing or slicing into the number)
-A
- Given a method `twice` that takes an integer as input
- Check if the integer is a double number
  - If the integer is a double number, return the number
  - If the integer is not a double number, return the number doubled  
- To check if the integer is a double number:
  - Convert the integer to a string
  - Count the length of the string
  - If the number is even and the first half of the number is equal to the last half of the number, it is a double number
  - If not, it is not a double number and should be doubled
-C!
=end

def twice(num)
  if num.to_s.length.even? && (num.to_s[0..(num.to_s.length / 2 - 1)] == num.to_s[(num.to_s.length / 2)..-1])
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
