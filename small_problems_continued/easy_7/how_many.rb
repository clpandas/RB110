=begin
-P
- input: an array with multiple elements
- output: a count of the number of occurrences for each element in the input array
- explicit rules:
  - the words in the array are case-sensitive  ('suv' != 'SUV')
  - each element is printed alongside the number of occurrences (car => 4) 
-E
car => 4
truck => 3
SUV => 1
motorcycle => 2
-D
- intermediate: hash to keep track of the occurences for each unique element
-A
- Given a method `count_occurrences` that takes an array as input
- Initialize an empty hash to keep track of the occurrences of each element
- Iterate through the array
  - If the current element is in the hash, increment the value count
  - If the current element is not in the hash, add it to the hash with a value of 1
- Iterate through the hash, printing the keys with their respective values
-C!
=end

def count_occurrences(arr)
  hash = {} # TIL: Initialize with a default (Hash.new(0) value to avoid the `nil` error when adding to the value- this avoids the if/else logic)
  arr.each { |word| hash.key?(word) ? hash[word] += 1 : hash[word] = 1 }
  hash.each { |k, v| puts "#{k} => #{v}" }
end

# # Version with a default value
# def count_occurrences(vehicles)
#   vehicle_count = Hash.new(0)
#   vehicles.each { |vehicle| vehicle_count[vehicle] += 1 }
#   vehicle_count.each { |k, v| puts "#{k} => #{v}" }
# end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2