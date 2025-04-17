=begin
P
input: array, output: every other element of the original array
rules
  - the values that are returns are the values that are in the even indices of the array (1st, 3rd, and 5th, etc. elements)
E
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
oddities([1, 2, 3, 4, 1]) == [1, 3, 1]
D
A
- Given a method `oddities` that takes an array as input
- Define an empty array to build into
- Iterate through the input array with an index
  - Push only the elements with an even index into the result array
- Return the result array

Alternative algorithm
- Given a method `oddities` that takes an array as input
- Iterate through the input array with an index
  - Select only the elements with an even index
C!
=end

def oddities(arr)
  result = []

  arr.each_with_index do |el, idx|
    result << el if idx.even?
  end

  result
end

# # with `select`
# def oddities(arr)
#   arr.select.with_index { |el, idx| el if idx.even? }
# end

# # with `each_with_object`
# def oddities(arr)
#   arr.each_with_object([]).with_index do |(el, result), idx|
#     result << el if idx.even?
#   end
# end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]