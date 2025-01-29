# v1
# def ascii_value(string)
#   chars_array = string.chars
  
#   chars_ascii_nums = chars_array.map do |char|
#     char.ord
#   end

#   chars_ascii_nums.sum
# end

# v2
# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end

#v3
def ascii_value(string)
  string.sum
end

#v4 `reduce` method
#v5 `each_with_object` method

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Further Exploration
# char.ord.chr == char
# `String#ord` returns the integer ordinal of the first character of `self`