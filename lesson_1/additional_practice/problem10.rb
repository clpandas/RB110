# Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior).
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, properties|
  if munsters[name]["age"] > 0 && munsters[name]["age"] <= 17
    munsters[name]["age_group"] = "kid"
  elsif munsters[name]["age"] >= 18 && munsters[name]["age"] <= 64
    munsters[name]["age_group"] = "adult"
  elsif munsters[name]["age"] >= 65
    munsters[name]["age_group"] = "senior"
  end
end

p munsters
# {"Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"}}

# Solution 2

# munsters.each do |name, properties|
#   case properties["age"]
#   when 0..17
#     properties["age_group"] = "kid"
#   when 18..64
#     properties["age_group"] = "adult"
#   else
#     properties["age_group"] = "senior"
#   end
# end

# p munsters