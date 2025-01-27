# Add up all of the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age = 0
ages.each do |k, v|
  age += v
end

p age # 6174

# # solution 2:
# p ages.values.inject(:+) # 6174

# # solution3:
# p ages.values.sum # 6174