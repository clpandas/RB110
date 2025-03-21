=begin
-P
input: string
output: a new string with every character of input string doubled 
- implicit rules:
  - an empty input string will return an empty output string
-E
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
-D
-A
- Given a method `repeater` that takes a string as input
- Convert the string to an iterable collection
- Iterate through each character of the string
  - Transform the current character to double of the same character
- Rejoin the iterable collection back to a new string 
- Return the new string 
-C!
=end

# Version 1
def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

# # Version 2: `zip`
# def repeater(str)
#   str.chars.zip(str.chars).join
# end

# # LS Solution
# def repeater(str)
#   result = ''
#   str.each_char do |char|
#     result << char << char
#   end
#   result
# end

# # Favorite LS student solution: `gsub` with regex
# def repeater(str)
#   str.gsub(/(.)/, '\1\1')
#   # str.gsub(/./) { |match| match + match }
# end
# # str.gsub(pattern, replacement) → new_str
# # `/./` regex matches any character except a newline
# # The `(.)` is wrapped in parentheses to create a capturing group
# # A capturing group is used to group part of a pattern and store the matched substring, allowing it to be referenced later
# # This captured group is referenced later with `\1`
# # Single quotes are used in `'\1\1'`
#   # This is because double quotes would mean the backslash needs to be escaped
#   # it would have to look like this: `"\\1\\1"` 


p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''