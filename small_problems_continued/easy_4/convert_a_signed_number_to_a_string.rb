DIGITS_TO_CHARS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9',
}

def integer_to_string(number)
  number.digits.reduce('') do |acc, el|
    acc.prepend(DIGITS_TO_CHARS[el])
  end
end

def signed_integer_to_string(number)
  return '0' if number == 0
  sign = number.negative? ? '-' : '+'
  sign + integer_to_string(number.abs)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'