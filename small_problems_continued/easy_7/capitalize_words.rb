=begin
-P
- input: string
- output: new string
- explicit rules:
  - the first character of every word is capitalized and all other letters in the word are lowercase
  - words are any sequence of non-blank characters
-E
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
-D
-A
- Given a method `word_cap` that take a string as input
- Iterate and transform each word in the string
  - Initialize a new string to contain the changes from the original string
  - Reference the first character of the string, and capitalize it, then append it to the new string
  - Reference the second character of the string to the end of the string, and lowercase those characters, then append that to the new string
- Return the new string
=end

# Version 1
def word_cap(str)
  str.split.map do |word|
    new_str = ''
    new_str << word[0].capitalize
    new_str << word[1..].downcase
    new_str
  end.join(' ')
end

# # Version 2
# def word_cap(str)
#   str.split.map do |word|
#     word.capitalize
#   end.join(' ')
# end

# # Version 3
# def word_cap(str)
#   str.split.map(&:capitalize).join(' ')
# end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'