=begin
- Initalize a `need_upper` variable to `true` (this indicates the first letter should be uppercase)
- Iterate through each character of the input string
  - If the character is a letter 
    - Convert it to uppercase if `need_upper` is `true`, otherwise convert it to lowercase
    - Toggle `need_upper`
  - If the character is not a letter, add it as is (without affecting `need_upper`)
  - Return the transformed string

---MISC NOTES---
- The `need_upper` variable can be considered a "flag".
- A flag in programming is a variable (typically boolean "true" or "false") that is used to keep track of a condition or state during the program execution
- A flag is used to help control logic flow, especially in iterative processes.
- The `need_upper` flag is used to help determine whether the next letter should be upper or lowercase. 
- The flag is appropriate because we are toggling between upper and lowercase while ignoring non-alphabetic characters.
- The non-alphabetic characters make it so alternating based on index position would not work.
- The flag is a way to remember what the next alphabetic character should be, given the presence of possible non-alphabetic characters.
- The flag tracks the desired case independantly of character positions (indices).

- The intuition: recognizing a toggle-based pattern rather than a position-based pattern 
=end



def staggered_case(str)
  need_upper = true

  str.chars.map do |char|
    if char =~ /[a-z]/i
      char = need_upper ? char.upcase : char.downcase
      need_upper = !need_upper
    end

    char
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'