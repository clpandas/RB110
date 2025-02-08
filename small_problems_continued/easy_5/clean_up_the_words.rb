def cleanup(string)
  string.gsub(/[^a-z]+/, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '

=begin
Problem
- Input: string consisting of some words and non-alphabetic characters
- Output: string with all of the non-alphabetic characters replaced by spaces
- Explicit rules:
  - All of the non-alphabetic characters in the string are replaced by spaces
  - If one or more non-alphabetic characters happens in a row, there should be one spaces in the result (there should never be consecutive spaces)
  - All the words in the input string are lowercase
- Implicit rules:
- Clarfiying questions:
  - Is the original object mutated, or is a new string being returned?

Examples/test cases
cleanup("---what's my +*& line?") == ' what s my line '

Data structure
- input: string
- output: string

Algorithm
- Define a method `cleanup`, which takes a string parameter
- Iterate through each character in the string to see if it is a non-alphabetic character
  - If the character is non-alphabetic, replace the character with a space
   - If the character has already been replaced with a space, skip the current iteration
- Return the new string

Code!
=end