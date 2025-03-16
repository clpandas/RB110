=begin
-P
- input: string
- output: new string
- explicit rules:
  - all uppercase letters are replaced by their respective lowercase version
  - all other characters remain unchanged
-E
swapcase('PascalCase') == 'pASCALcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
-D
- intermediate: maybe an array for iteration through the string
- maybe a hash to map lowercase letters to their uppercase version, and vice versa
- maybe a range for the character mapping?
-A
- Given a method `swapcase` that takes a string as input
- Define a mapping of lowercase characters to their uppercase equivalent 
- Initialize an empty string to build the new string in
- Iterate through each character of the string
  - If the current character is uppercase, replace with its lowercase version
  - Elsif the current character is lowercase, replace with its uppercase version
  - Else, do not replace character
- Return the new string 
=end

LOWER_TO_UPPER = ('a'..'z').zip('A'..'Z').to_h
UPPER_TO_LOWER = ('A'..'Z').zip('a'..'z').to_h

def swapcase(str)
  new_str = ''
  str.each_char do |char|
    if UPPER_TO_LOWER.include?(char)
      new_str << UPPER_TO_LOWER.fetch(char)
    elsif LOWER_TO_UPPER.include?(char)
      new_str << LOWER_TO_UPPER.fetch(char)
    else
      new_str << char
    end
  end

  new_str
end

# # Version 2: `each_with_object`
# def swapcase(str)
#   str.chars.each_with_object("") do |char, new_str|
#     if UPPER_TO_LOWER.include?(char)
#       new_str << UPPER_TO_LOWER.fetch(char)
#     elsif LOWER_TO_UPPER.include?(char)
#       new_str << LOWER_TO_UPPER.fetch(char)
#     else
#       new_str << char
#     end 
#   end
# end

# # LS Solution
# def swapcase(str)
#   characters = str.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end

# # An LS student solution
# def swapcase(str)
#   str.chars.map {|chr| chr == chr.downcase ? chr.upcase : chr.downcase}.join
# end

p swapcase('PascalCase') == 'pASCALcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'