=begin
Problem: given a string, return a boolean true or false if the string can be spelled from the set of spelling blocks
Rules/req:
- a spelling block has two letters per block:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M
- this means the words that can be spelled are only words that don't use both letters associated with a single block 
- each letter for each block can only be used once (GC: early exit for multiple letters in word)
- case insensitive

EX
'BATCH' -> B (return false if O is in word), A (return F if N is word), T (return F if G is in word), C (return F if P exists in word), H (return F if U is in word) --> true
'Baby' -> B (return F if O is in word), a (return false if N is in word), b (return F b/c b already appeared) --> false

DS
in: string
out: boolean true or false if string can be made from spelling blocks
int: hash or array to contain spelling block associations

high level
iterate through each character of string, check the key for the current character and if the value exists in the string, return false

A
- GC: return false if any characters repeat in input string
- downcase string for case insensitivity
- define spelling block constant as a hash containing k-v spelling block associations for all possibilities
- iterate through each character of the string
  - for each character, return false if the key's value for that character exists in the string
- return true
C!
=end

SPELLING_BLOCK = { 'B' => 'O', 'O' => 'B', 'X' => 'K', 'K' => 'X', 'D' => 'Q', 'Q' => 'D',
                   'C' => 'P', 'P' => 'C', 'N' => 'A', 'A' => 'N', 'G' => 'T', 'T' => 'G',
                   'R' => 'E', 'E' => 'R', 'F' => 'S', 'S' => 'F', 'J' => 'W', 'W' => 'J',
                   'H' => 'U', 'U' => 'H', 'V' => 'I', 'I' => 'V', 'L' => 'Y', 'Y' => 'L',
                   'Z' => 'M', 'M' => 'Z' }

def block_word?(str)
  upcased_str = str.upcase
  return false if upcased_str.chars.uniq != upcased_str.chars

  upcased_str.each_char do |char|
    return false if upcased_str.include?(SPELLING_BLOCK[char])
  end
  
  true
end

p block_word?('BATCH')  == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('apples') == false
p block_word?('Baby') == false