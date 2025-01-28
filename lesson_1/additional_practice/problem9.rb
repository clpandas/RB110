# Write your own version of the Rails titleize implementation.
words = "the flintstones rock"

def titleize(string)
  str_to_arr = string.split(' ')
  str_to_arr.map do |word|
    word.capitalize!
  end
  str_to_arr.join(' ')
end

p titleize(words) # "The Flintstones Rock"

# LS's better version
# p words.split.map { |word| word.capitalize }.join(' ')