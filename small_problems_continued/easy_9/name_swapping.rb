=begin
-P
input: string (first name, space, and last name)
output: string (last name, comma, space, first name)
-E
swap_name('Joe Roberts') == 'Roberts, Joe'
-D
an array to manipulate the elements of the string
-A
- Given a method `swap_name` that takes a string in the form of a first and last name as input
- Access and swap the first and last name with an added comma for separation
- Return the transformed string
-C!
=end

# Version 1
def swap_name(name)
  name.split.rotate.join(', ')
end

# # Version 2
# def swap_name(name)
#   name_arr = name.split
#   name_arr[0], name_arr[1] = name_arr[1], name_arr[0]
#   name_arr.join(', ')
# end

# # Version 3
# def swap_name(name)
#   name.split.each_with_object([]) do |name_parts, new_str|
#     new_str.prepend(name_parts)
#   end.join(', ')
# end

# # LS solution
# def swap_name(name)
#   name.split(' ').reverse.join(', ')
# end

# # Favorite student submission
# def swap_name(name_string)
#   first, last = name_string.split
#   "#{last}, #{first}"
# end

# # A similar concept
# def swap_name(full_name)
#   name = full_name.split
#   "#{name.last}, #{name.first}"
# end

p swap_name('Joe Roberts') == 'Roberts, Joe'