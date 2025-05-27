=begin
P: given a string, return a hash with 3 entries (lowercase: % chars, uppercase: % chars, neither: % chars)
- the string will always contains at least one character

E
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
D
Convert the characters of the string into an array of characters so they can be iterated over

A
- Given a method `letter_percentages` that takes a string as input
- Define a starting hash with appropriate keys with zero starting values
- Define a lowercase character range
- Define an uppercase character range
- Iterate through the characters of the string
  - If the character exists in the lowercase range, increment the lowercase value
  - Elsif the character exists in the uppercase range, increment the uppercase value
  - Else, increment the character in the neither key value 
- Divide the values in the hash by the total character count (to_f), multiply by 100 to get a proper percentage
- Return hash
C!
=end

def letter_percentages(str)
  result = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char do |char|
    if ('a'..'z').include?(char)
      result[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end

  result.each do |k, v|
    result[k] = ((v.to_f / str.size) * 100).round(1)
  end

  result
end

## an earlier attempt:
# def letter_percentages(str)
#   result = { lowercase: 0, uppercase: 0, neither: 0 }

#   lowercase = []
#   uppercase = []
#   neither = []

#   str.each_char do |char|
#     if ('a'..'z').include?(char)
#       lowercase << char
#     elsif ('A'..'Z').include?(char)
#       uppercase << char
#     else
#       neither << char
    # end
#   end
  
#   lowercase_val = (lowercase.size.to_f / str.size) * 100
#   uppercase_val = (uppercase.size.to_f / str.size) * 100
#   neither_val = (neither.size.to_f / str.size) * 100

#   result[:lowercase] = lowercase_val
#   result[:uppercase] = uppercase_val
#   result[:neither] = neither_val

#   result
# end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }