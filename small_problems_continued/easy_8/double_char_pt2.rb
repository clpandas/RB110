=begin
-P
input: string
output: new string where every consonant character is doubled
explicit rules:
  - vowels (aeiou), digits, punctuation, and whitespace should not be doubled
  - consonants are the non-vowel letters in the alphabet
-E
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
-D
-A
- Given a method `double_consonants` that takes a string as input
- Convert the string to an iterable collection
- Define a consonant constant to check if a character is a consonant
- Iterate through the string
  - Transform the current character to double the current character if the character is a consonant 
  - Else return the current character
- Rejoin the iterable collection back to a string
- Return the new string
-C!
=end

# Version 1
CONSONANT = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'

def double_consonants(str)
  str.chars.map do |char|
    CONSONANT.include?(char) ? char * 2 : char
  end.join
end

# # Version 2: use `downcase` to shorted CONSONANT constant
# CONSONANT = 'bcdfghjklmnpqrstvwxyz'

# def double_consonants(str)
#   str.chars.map do |char|
#     CONSONANT.include?(char.downcase) ? char * 2 : char
#   end.join
# end

# # LS solution
# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
