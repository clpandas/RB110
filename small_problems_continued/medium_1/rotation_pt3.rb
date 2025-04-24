=begin
- Given a method `max_rotation` that takes an integer as input
- Determine the length of digits in the number
- Loop through one minus the length of the number
  - For each iteration:
    - Rotate the substring from the current index to the end (keep the digits before the index as-is)
    - Move the digit at the index to the end of the remaining substring (use `rotate_rightmost_digits`)
    - Update the number to reflect the new rotation
- Convert the final string back to an integer before returning it
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  all_digits = num.to_s.chars
  rotating_slice = all_digits[-n..-1]
  static_slice = all_digits[0...-n]
  rotated_digits = static_slice + rotate_array(rotating_slice)
  rotated_digits.join.to_i
end

def max_rotation(num)
  num_length = num.to_s.length

  (0...(num_length - 1)).each do |i|
    num = rotate_rightmost_digits(num, num_length - i)
  end

  num
end

# # `while loop`
# def max_rotation(num)
#   num_length = num.to_s.length

#   while num_length > 1
#     num = rotate_rightmost_digits(num, num_length)
#     num_length -= 1
#   end

#   num
# end

# # `downto`
# def max_rotation(num)
#   num_length = num.to_s.length

#   (num_length).downto(2) do |n|
#     num = rotate_rightmost_digits(num, n)
#   end

#   num
# end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845