=begin
-P
- input: string
- output: an array of substrings
- explicit rules:
  - the substrings start at the beginning of the original string and represent every possible substring
  - the return value is arranged from shortest to longest substring
- implicit rules:
  - the string is at least a single character, but does not have spaces (i.e a single word)
-E
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
-D
-A
- Given a method `leading_substrings` that takes a string as input
- Initialize an empty array to put the substrings into
- Iterate through each character of the string with their index
  - Extract a slice of the input string from starting at index 0 up to the index plus 1 characters
  - Append the extracted slice into the new array
- Return the new array 
-C!
=end

def leading_substrings(str)
  new_arr = []
  str.chars.each_with_index do |char, idx|
    new_arr << str[0, idx + 1]
  end

  new_arr
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']