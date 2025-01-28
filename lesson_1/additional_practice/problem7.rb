# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"

letter_frequency = statement.chars.each_with_object(Hash.new(0)) do |char, hash|
  hash[char] += 1 if char.match(/[A-Z]/i)
end

p letter_frequency
# {"T"=>1, "h"=>1, "e"=>2, "F"=>1, "l"=>1, "i"=>1, "n"=>2, "t"=>2, "s"=>2, "o"=>2, "R"=>1, "c"=>1, "k"=>1}