=begin
-P
input: an array representing a grocery list of fruits with quantities
output: an array of the associated number for each fruit
-E
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
-D
-A
- Given a method `buy_fruit` that takes an array with subarrays representing fruit and their quantities
- Define a new array `result` to build into
- Iterate through the nested arrays appending the appropriate number of each fruit to the `result`
- Return `result`
-C!
=end

def buy_fruit(arr)
  result = []
  
  arr.each do |subarr|
    subarr[1].times do
       result << subarr[0]
    end
  end

  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]