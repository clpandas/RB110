def word_sizes(string)
  count_hash = Hash.new(0)
  string.split.each { |word| count_hash[word.gsub(/[^a-z]/i, '').size] += 1 }
  count_hash
end

# Solution 2: tally
# def word_sizes(string)
#   string.split.map { |word| word.gsub(/[^a-z]/i, '').size }.reject(&:zero?).tally
# end

# Solution 3: each_with_object
# def word_sizes(string)
#   string.split.each_with_object(Hash.new(0)) do |word, hash|
#     sanitized_word = word.gsub(/[^a-z]/i, '')
#     hash[sanitized_word.size] += 1 unless sanitized_word.empty?
#   end
# end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}