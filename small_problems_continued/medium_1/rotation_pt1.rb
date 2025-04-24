=begin
P
method rotates an array by moving the first element to the end of the array
original array should not be modified
input: array, output: new array of original array but with first element at the end
E
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
D
A
- Given a method `rotate_array` that takes an array as input
- Access the first element and adding it at the end 
C!
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]                 # => true

# Further Exploration

# # for strings
# def rotate_string(str)
#   rotate_array(str.chars).join
# end

# str = "hello"
# p rotate_string(str)

# # for integers
# def rotate_integer(int)
#   rotate_array(int.to_s.chars).join.to_i
# end

# num = 123
# p rotate_integer(num)