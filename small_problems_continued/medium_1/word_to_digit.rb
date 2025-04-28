=begin
P
input: sentence string, output: the same string with any sequence of the words  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits
E
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
D
maybe a hash to contain the string numbers and their cooresponding digits
which would mean iterating through the words in the string as array elements
A
- Given a method `word_to_digit` that takes a sentence string as input
- Define a hash to contain number words as keys and their cooresponding digits as values
- Split the sentence string into an array
- Iterate through each word in the array (map)
  - If the word is in the number hash
    - Change the word to the value of the cooresponding key
C!
=end

def word_to_digit(sentence)
  number_map = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 
                 'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9 }
  sentence_arr = sentence.split
  sentence_arr.map do |word|
    sanitized_word = word.downcase.gsub(/\W/, '')
    if number_map.key?(sanitized_word)
      word.sub(sanitized_word, number_map[sanitized_word].to_s)
    else
      word
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'