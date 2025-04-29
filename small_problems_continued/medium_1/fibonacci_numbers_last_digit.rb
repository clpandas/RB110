def fibonacci(n)
 return 1 if n <= 2

 first_num, next_num = 1, 1
 (n - 2).times do
  first_num, next_num = next_num, first_num + next_num
 end

 next_num
end

# Version 1
def fibonacci_last(num)
  fibonacci(num).to_s[-1].to_i
end

# # Version 2
# def fibonacci_last(num)
#   fibonacci(num).digits[0]
# end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4