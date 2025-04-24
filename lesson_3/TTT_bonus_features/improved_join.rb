=begin
- Given a method `joinor` that takes an array as input, with an optional separator, and an optional last separator
- Define an empty string to build into
- If the array size is only 2, return the first and last object as a string value separated by the last separator
- Iterate through the input array
  - Append the current element after converting it to a string to the result string
  - Append the separator (", ") to the result string unless the current element is the last element
  - If the element is the second to last element of the array, append the last separator to the result string
- Return the result string
=end

# Attempt 1
# Notes: this approach implicitly handles edge cases like empty arrays and single element arrays
# In contrast, the LS solution is more explict in how it handles each separate case
def joinor(arr, separator = ', ', last_separator = 'or')
  result = ''
  last_idx = arr.length - 1

  return arr.first.to_s + " " + last_separator + " " + arr.last.to_s if arr.size == 2

  arr.each_with_index do |el, idx|
    result << el.to_s
    result << separator unless idx == last_idx
    result << last_separator + " " if idx == last_idx - 1
  end

  result
end

# # Attempt 2 after viewing LS solution
# def joinor(arr, separator = ', ', last_separator = 'or')
#   last_idx = arr.length - 1

#   case arr.size
#   when 0 then return ''
#   when 1 then return arr[0].to_s
#   when 2 then return "#{arr.first.to_s} #{last_separator} #{arr.last.to_s}"
#   else    
#     arr.each_with_object('').with_index do |(el, result), idx|
#       result << el.to_s
#       result << separator unless idx == last_idx
#       result << "#{last_separator} " if idx == last_idx - 1
#     end
#   end
# end

p joinor([])
p joinor([1])
p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3, 4, 5], ', ')   # => "1, 2, and 3"
