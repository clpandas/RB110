=begin
-P
input: 2 arguments: one array, one hash
output: a greeting that uses the person's full name, and mentions the person's title and occupation
explicit rules:
  - the array contains two or more element, that when combined with spaces will make a peron's name
  - the hash contains two keys (`:title` and `:occupation`) and their respective values
-E
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> "Hello, John Q Doe! Nice to have a Master Plumber around."
-D
-A
- Given a method `greetings` that takes an array and a hash as input
- Initialize a string to contain the result string value
- Access the array elements with spring interpolation, joining the elements for the full expression of the name.
- Access the hash values with string interpolation using key-value access.
-C!
=end

# # Version 1
# def greetings(arr, hash)
#   puts "Hello, #{arr.join(' ')}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
# end

# Version 2
def greetings(arr, hash)
  person = arr.join(' ')
  profession = hash.values_at(:title, :occupation).join(' ') # TIL: `Hash#values_at` will return an array of values for specified keys
  # profession = hash[:title] + " " + hash[:occupation]
  puts "Hello, #{person}! Nice to have a #{profession} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => "Hello, John Q Doe! Nice to have a Master Plumber around."