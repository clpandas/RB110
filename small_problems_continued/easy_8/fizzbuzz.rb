=begin
-P
input: two integers (1st is start number, 2nd is end number)
output: print all numbers from the start number to the end number (inclusive) with some exceptions
explicit rules:
  - if a number is divisible by 3, print "Fizz"
  - if a number is divisible by 5, print "Buzz"
  - if a number is divisible by 3 and 5, pring "FizzBuzz"
-E
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
-D
-A
- Given a method `fizzbuzz` that takes two integers as input
- Define a range from `num1` to `num2`
- Initialize an empty array to keep track of the result
- Iterate through the range
  - If the number is divisible by 15 (3 and 5), push "FizzBuzz" to the array
  - Elsif the number is divisible by 3, push "Fizz" to the array
  - Elsif the number is divisible by 5, push "Buzz" to the array
  - Else push the number to the array
- Join the elements of the array into a string
- The method will return the last evaluated expression (the string)
-C!
=end

def fizzbuzz(num1, num2)
  (num1..num2).each_with_object([]) do |num, result|
    if num % 15 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end.join(", ")
end

# # Nested ternary expression because of multiple conditions:
# def fizzbuzz(start_num, end_num)
#   (start_num..end_num).map do |num|
#     num % 15 == 0 ? "FizzBuzz" :
#     num % 3 == 0 ? "Fizz" :
#     num % 5 == 0 ? "Buzz" :
#     num
#   end.join(", ")
# end

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz