=begin
-P
- input: two arrays that contain a list of numbers
- output: a new array that contains the product of every pair of numbers that can be formed between the elements of the two arrays
- explicit rules:
  - the results should be sorted by increasing value
  - assume that neither argument is an empty array
-E
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
-D
-A
  - Given a method `multiply_all_pairs` that takes two arrays of numbers as input
  - Initialize an empty array to contain the products
  - Iterate through `arr1`
    - Append the result of multiplying each element with every possible element from `arr2` to the new array
  - Sort the new array in ascending order
  - Return the new array
-C!
=end

# Version 1
def multiply_all_pairs(arr1, arr2)
  new_arr = []
  arr1.each do |num|
    arr2.each do |other_num|
      new_arr << num * other_num
    end
  end

  new_arr.sort
end

# # Version 2: `each_with_object`
# def multiply_all_pairs(arr1, arr2)
#   arr1.each_with_object([]) do |num, new_arr|
#     arr2.each do |other_num|
#       new_arr << num * other_num
#     end
#   end.sort
# end

# # LS Solution (very cool!)
# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |num1, num2| num1 * num2 }
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]