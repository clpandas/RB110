# Remove people with age 100 and greater:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |_, v| v > 100 }

p ages

# # solution 2:
# p ages.keep_if { |_, v| v < 100 }

# # solution 3:
# p ages.select { |_, v| v < 100}