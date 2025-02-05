def swap(string)
  string.split(' ').map do |substring|
    substring[0], substring[-1] = substring[-1], substring[0]
    substring
  end.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin
Problem
- Input: a string of words separated by spaces
- Output: a string in which the first and last letters of every word are swapped
- Explicit rules:
  - Every word contains at least one letter
  - The string will always contain at least one word
  - Each string contains nothing but words and spaces
- Implicit rules:
  - A string of a single letter will return that single letter
  - The method is case insensitive
- Clarfiying questions:

Examples/test cases
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Data structure
- Input: string
- Intermediate: maybe an array to temporarily hold the substrings
- Output: string

Algorithm
- Define a method `swap` that takes a string input
- Split the string into an array of substrings separated at the spaces
- For each element in the array, swap the first and last character of each substring
- Rejoin the array into a single cohesive string with the appropriate spaces returned
- Return the rejoined string

Code!
=end