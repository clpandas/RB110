def short_long_short(str1, str2)
  if str1.size > str2.size
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

=begin
Understand the (P)roblem:
- Restate the problem: 
  Write a method with two strings as arguments and determines the longest of the two strings.
  The method returns the result of concatenating the shorter string, the longer string, and the shorter string.
  It is assumed the strings are of different lengths. 
- Explicit Requirements:
  - input: 2 string arguments of different lengths
  - output: 1 string
  - The method concatenates the shorter string to the longer string to the shorter string
  - The strings are different lengths
- Implicit Requirements:
  - The method is only taking string arguments.
  - If the method is called with only one string, it will return that string.

Test Cases/ (E)xamples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

(D)ata structure
- Strings

(A)lgorithm:
- Recieve input: Accept two string arguments
- Determine string lengths: Compare the string lengths
- Identify the shorter and longer string
- Concatenate in order of shorter + longer + shorter
- Return the concatentated result

(C)ode!
=end