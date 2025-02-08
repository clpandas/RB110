def crunch(string)
  new_string = ''
  string.each_char do |char|
    next if char == new_string[-1]
    new_string << char
  end
  new_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

=begin
Problem
- Input: string
- Output: new string of input with all consecutive duplicate characters collasped into a single character 
- Explicit rules:
  - The method returns a new string
  - The method removes all consecutive duplicate characters leaving only a single character 
- Implicit rules:
  - A single character input returns a single character output
  - An empty string input returns an empty string output
- Clarfiying questions:
  - Is character case a consideration?

Examples/test cases
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data structure
- input: string
- output: string

Algorithm
- Given a method `crunch` that takes a string as input
- Initialize an empty string `new_string` to contain collapsed duplicates 
- Iterate through the characters in the input string 
  - For each character, check if it matches the last character added to `new_string`
  - If it matches, don't add it to `new_string`
  - If it does not match, append the character to `new_string`
- Return `new_string`

Code!
=end