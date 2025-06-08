=begin
Problem: given a string, return a boolean `true` or `false` if all parentheses in the string are properly balanced
- properly balanced means occuring in matching `'('` and `')'` pairs
- balanced pair starts with `'('`

DS
in: string
out: boolean `true` or `false`
int: 
  - a counter variable to keep track of parentheses 
  - convert the string to an array of characters to check for balanced state

High level
- Iterate through each character of the string to check for balanced state

Algorithm
- Given a method `balanced?` that takes a string as input
- Define `counter` variable initialized to 0
- Convert the string to an array of characters
- Iterate through each character in the string
  - For each `'('`, increment counter
  - For each `')'`, decrement counter
  - If `counter` becomes negative, return `false`
- Return `true` if `counter` is 0, else return `false`
=end

def balanced?(str)
  counter = 0
  str.each_char do |char|
    if char == '('
      counter += 1
    elsif char == ')'
      counter -= 1
      return false if counter < 0
    end
  end

  counter == 0
end

# # alternative
# def balanced?(str)
#   potential_pairs_tracker = []

#   str.each_char do |char|
#     if char == '('
#       potential_pairs_tracker << char
#     elsif char == ')'
#       return false if potential_pairs_tracker.empty?
#       potential_pairs_tracker.pop
#     end
#   end

#   potential_pairs_tracker.empty?
# end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false