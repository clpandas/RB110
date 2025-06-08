=begin
problem: Given an array as input, return a sorted array using the bubble sort algorithm
rules/req:
- the sort will be in place (ie input array will be mutated)
- input array will contain at least 2 elements

EX
[6, 2, 7, 1, 4] -> 26714, 26174, 21674, 12674, 12647, 12467 --> [1, 2, 4, 6, 7]

DS
in: array
out: sorted array
int: comparing two elements against one another (if a > b, swap)

HL
iterate through array comparing current char against previous char, if left char is greater than right char, swap
continue iterating until no more swaps can be made

algorithm
- Repeat steps until no swaps are made during a full pass of array:
  - Set a flag to false at the start of each pass to track if a swap happens
  - Iterate through a range starting from the 1st index (2nd element) until the last element
    - For each pair of consecutive elements, compare the left char to the right char (the previous to the current)
    - if left char is greater than right char, swap elements
    - change flag to true because a swap was made
- repeat until no swaps are made
- if flag remains false by the end of a full pass through the array, it means the list is sorted 
=end

def bubble_sort!(arr)
  loop do
    swapped = false
    (1...arr.size).each do |i|
      if arr[i - 1] > arr[i]
        arr[i - 1], arr[i] = arr[i], arr[i - 1] 
        swapped = true
      end
    end
    break unless swapped
  end
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)