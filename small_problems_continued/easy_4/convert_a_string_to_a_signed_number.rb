CHAR_TO_DIGITS = { 
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def string_to_integer(string)
  string.chars.reduce(0) { |acc, char| acc * 10 + CHAR_TO_DIGITS[char] }
end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end

# Refactored
def string_to_signed_integer(string)
  sign = string.start_with?('-') ? -1 : 1
  number = string.start_with?('-', '+') ? string[1..-1] : string

  string_to_integer(number) * sign
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100