=begin
-P
- input: string
- output: the next to last word from the string
- explicit rules:
  - words are any sequence of non-blank characters
  - assume the input string will always contain at least two words
-E
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
-D
-A
- Given a method `penultimate` that takes a string as input
- Access and return the second to last word of the string
-C!
=end

def penultimate(str)
  str_to_arr = str.split
  str_to_arr[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
