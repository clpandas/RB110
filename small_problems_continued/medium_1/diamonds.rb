=begin
P
- display a 4-pointed diamond in an n x n grid 
- where the input `n` is an odd integer
- the diamond is represented by the * character with spaces at either side
- input: odd integer, output: n x n grid representing the diamond
E
diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *
- 1, 3, 5, 7, 9, 7, 5, 3, 1
- the diamond is centered, the spaces are equal distance from *
D
- string characters to represent the diamond
- calling puts to print * to screen
A
- Given a method `diamond` that takes an odd integer `n` as input
- Define a `star` variable set to `*` to build into
- Loop through half of `n` times
  - Print the `star` centered 
  - Add two stars
- Loop through half of `n` + 1 times
  - Print `star` centered
  - Take away two stars
end
C!
=end

def diamond(n)
  star = "*"
  (n / 2).times do
    puts star.center(n)
    star << "**"
  end

  ((n / 2) + 1).times do
    puts star.center(n)
    star.delete_prefix!("**")
  end
end

diamond(1)
diamond(3)
diamond(9)