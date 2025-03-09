# Version 1
LOWERCASE_CHARS = ('a'..'z').to_a.join
UPPERCASE_CHARS = ('A'..'Z').to_a.join

def letter_case_count(str)
  case_count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  
  str.each_char do |char|
    if LOWERCASE_CHARS.include?(char)
      case_count_hash[:lowercase] += 1
    elsif UPPERCASE_CHARS.include?(char)
      case_count_hash[:uppercase] += 1
    else
      case_count_hash[:neither] += 1
    end
  end

  case_count_hash
end

# # Version 2
# # LOWERCASE_CHARS = ('a'..'z') # TIL: `include?` can be called on strings, arrays, and ranges
# # UPPERCASE_CHARS = ('A'..'Z')

# def letter_case_count(str)
#   case_count_hash = { lowercase: 0, uppercase: 0, neither: 0 }
  
#   str.each_char do |char|
#     if ('a'..'z').include?(char)
#       case_count_hash[:lowercase] += 1
#     elsif ('A'..'Z').include?(char)
#       case_count_hash[:uppercase] += 1
#     else
#       case_count_hash[:neither] += 1
#     end
#   end

#   case_count_hash
# end

# # Version 3: `each_with_object`
# def letter_case_count(str)
#   str.chars.each_with_object({ lowercase: 0, uppercase: 0, neither: 0 }) do |char, hash|
#     if ('a'..'z').include?(char)
#       hash[:lowercase] += 1
#     elsif ('A'..'Z').include?(char)
#       hash[:uppercase] += 1
#     else
#       hash[:neither] += 1
#     end
#   end
# end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

=begin
-P
- input: string, output: hash with 3 key-value pairs
- explicit rules:
  - first key-value pair represents the number of characters in the string that are lowercase letters
  - second key-value pair represents the number of characters in the string that are uppercase letters
  - the final key-value pair represents all the other characters
- implicit rules:
  - an empty string returns a `0` value for each of the three keys
-E
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
-D
-A
- Given a method `letter_case_count` that takes a string as input
- Define lower case characters:
- Define uppercase characters:
- Initialize an empty hash with 3 entries, where the value is set to `0`
- Iterate through the characters in the string and compare the current character with the lower case characters
  - If the current character is included as a lowercase character, increment the value associated with `:lowercase`
  - Elsif the current character is included as a uppercase character, increment the value associated with `:uppercase`
  - Else if the current character is neither lower or uppercase, increment the value associated with `:neither`
- Return the hash 
=end