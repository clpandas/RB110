def remove_vowels(array_of_strings)
  new_array = []
  array_of_strings.each do |str|
    new_string = ''
    
    str.each_char do |char|
      unless char.match?(/[aeiou]/i)
        new_string << char
      end
    end

    new_array << new_string
  end

  new_array
end

# Solution 2
# def remove_vowels(array_of_strings)
#   array_of_strings.map do |string|
#     string.delete('aeiouAEIOU')
#   end
# end

# Solution 3
# def remove_vowels(array_of_strings)
#   array_of_strings.map { |str| str.gsub(/[aeiou]/i, "")}
# end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=begin
Problem
- Input: array of strings
- Output: array of the same string values, but with the vowels removed
- Explicit rules:
  - the output is the input, but with vowels removed
- Implicit rules:
  - the method is only receiving string inputs
  - character case is maintained (e.g. `YELLOW` == `YLLW`)
  - strings with no vowels should remain unchanged
  - strings with only vowels should be empty strings
- Clarfiying questions:
  - is the method returning a new string or mutating the original string?

Examples/test cases
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data structure
- input: array of strings
- output: array of modified strings

Algorithm
- Given a method `remove_vowels` that takes an array of strings as input
- Initialize a new variable `new_array` as an empty array to store transformed strings
- Iterate through each string in the input array
  - For each string, initialize an empty string `new_string`
  - Iterate through each character in the string
    - If the character is not a vowel, append it to `new_string`
  - Add `new_string` to `new_array`
- Return `new_array`

Alternative algorithm
- Given a method `remove_vowels` that takes an array of strings as input
- For each string in the input array
  - Remove/delete all occurences of vowels
- Return the array of modified strings

Code!
=end