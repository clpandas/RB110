=begin
-P
input: string
output: an array of all substrings of the input string that are palindromic
explicit rules:
  - palindromic means: each substring must consist of the same sequence of characters forwards as it does backwards
  - the return value should be arranged in the same sequence as the substrings appear in the string
  - duplicate palindromes should be included multiple times
  - use the `substrings` method from the previous exercise
  - consider all characters and pay attention to case
    - i.e. `"AbcbA"` is a palindrome, but `"Abcba"` and `"Abc-bA"` are not palindromes
  - single characters are not considered palindromes
implicit rules:
- strings with no palindromes return an empty array
-E
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
-D
-A
- Given a method `palindromes` that takes a string as input
- Define an `is_palindrome?` helper method to determine if a string is a palindrome
- Initialize an empty array to contain all substrings from the input string that are considered palindromes
- Pass the input string to the `substrings` method to get an array of all substrings
- Iterate through each substring and check if the substring is a palindrome
  - If the substring is a palindrome, add it to the new array
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

def substrings(str)
  new_arr = []

  (0...str.length).each do |counter|
    substring = str[counter..-1]
    new_arr.concat(leading_substrings(substring))
  end

  new_arr
end

def is_palindrome?(str)
  str == str.reverse && str.size > 1
end

# Version 1
def palindromes(str)
  palindrome_substrings = []

  substring_arr = substrings(str)

  substring_arr.each { |substring| palindrome_substrings << substring if is_palindrome?(substring)}

  palindrome_substrings
end

# # Version 2
# def palindromes(str)
#   substrings(str).select { |substring| is_palindrome?(substring)}
# end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]