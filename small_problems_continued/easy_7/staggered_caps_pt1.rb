=begin
-P
- input: string
- output: new string 
- explicit rules:
  - the new string uses a staggered capitalization scheme where every other character is capitalized
  - the other characters are lowercased
  - characters that are not letters should not be changed, but still count as characters
- implicit rules:
  - 0 and all even indices are capitalized if it is an alphbetical character
  - all odd indices are lowercased if it is a alphbetical character
-E
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
-D
- intermediate: array to manipulate character case
-A
- Given a method `staggered_case` that takes a string as input
- Initialize a new string to contain the staggered capitalization scheme
- Iterate through each character of the input string with an index
  - If the current index is 0 or even
    - uppercase the character and append to new string, unless the character is not an alphabetical character then append the character
  - Else (the current index is odd)
    - lowercase the character and append to new string, unless the character is not an alphanetical character then append the character
- Return new string
=end

def staggered_case(str)
  new_str = ''
  str.chars.each_with_index do |char, idx|
    if idx == 0 || idx.even? # TIL: 0 is considered an even number in Ruby
      char.match?(/[a-z]/i) ? new_str << char.upcase : new_str << char
    else
      char.match?(/[a-z]/i) ? new_str << char.downcase : new_str << char
    end
  end

  new_str
end

# # Version 2: `each_with_object` and `each_with_index`
# def staggered_case(str)
#   str.chars.each_with_index.each_with_object('') do |(char, idx), new_str|
#     if idx == 0 || idx.even?
#       char.match?(/[a-z]/i) ? new_str << char.upcase : new_str << char
#     else
#       char.match?(/[a-z]/i) ? new_str << char.downcase : new_str << char
#     end
#   end
# end

# # Version 3: `each_with_object` and `each_with_index` another way
# def staggered_case(str)
#   str.chars.each_with_object('').with_index do |(char, new_str), idx|
#     if idx == 0 || idx.even?
#       char.match?(/[a-z]/i) ? new_str << char.upcase : new_str << char
#     else
#       char.match?(/[a-z]/i) ? new_str << char.downcase : new_str << char
#     end
#   end
# end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
