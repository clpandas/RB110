# Attempt 1
def fibonacci(n)
  fib_arr = [1, 1]

  (n - 2).times do
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end

  fib_arr.last
end

# # Attempt 2: no array data structure
# def fibonacci(n)
#  return 1 if n <= 2

#  first_num, next_num = 1, 1
#  (n - 2).times do
#   first_num, next_num = next_num, first_num + next_num
#  end

#  next_num
# end

# # LS solution
# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end

#   last
# end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501