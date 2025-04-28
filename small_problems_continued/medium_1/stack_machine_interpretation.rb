=begin
P
input: string output: integer
rules/notes
- a stack is a list of values that shrinks and grows dynamically (can be represented by an array)
- each operation of a stack & register language operates on a register
- the register can be thought of as the current value
- the register is not part of the stack
- register is initialized to 0
E
- an operation that requires two values will pop the top most item of the stack (e.g. the last elememnt in the array)
- that value is used with the register value and the result becomes the new register value
D
- possibly a case statement to represent the different operations (MULT, PUSH, PRINT, etc.)
- converting the string to an array of the potential various command inputs

High level
Create a method with various commands that are recognized as string inputs, which are associated with specific behaviors to execute

A 
- Given a method `minilang` that takes a string as input
- Define an array variable `stack` to represent the items in the stack
- Define a `register` variable `n` (initialize `n` to `0`)
- Convert the string input into an array for parsing
- Iterate through the array 
  - Execute associated commands associated with specific string inputs
C!
=end

def minilang(str)
  stack = []
  register = 0

  commands = str.split
  commands.each do |command|
    case command
    when 'PUSH'
      stack << register
    when 'ADD'
      register += (stack.pop)
    when 'SUB'
      register -= (stack.pop)
    when 'MULT'
      register *= (stack.pop)
    when 'DIV'
      register /= (stack.pop)
    when 'MOD'
      register %= (stack.pop)
    when 'POP'
      register = (stack.pop)
    when 'PRINT'
      puts register
    else
      register = command.to_i
    end
  end
end

# LS Solution: very similar. I'm curious about the difference of using `<<` versus the `Array#push` method
# def minilang(program)
#   stack = []
#   register = 0
#   program.split.each do |token|
#     case token
#     when 'ADD'   then register += stack.pop
#     when 'DIV'   then register /= stack.pop
#     when 'MULT'  then register *= stack.pop
#     when 'MOD'   then register %= stack.pop
#     when 'SUB'   then register -= stack.pop
#     when 'PUSH'  then stack.push(register)
#     when 'POP'   then register = stack.pop
#     when 'PRINT' then puts register
#     else              register = token.to_i
#     end
#   end
# end

minilang('PRINT') # 0
minilang('5 PUSH 3 MULT PRINT') # 15
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8
minilang('5 PUSH POP PRINT') # 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ') # 6
minilang('4 PUSH PUSH 7 MOD MULT PRINT ') # 12
minilang('-3 PUSH 5 SUB PRINT') # 8
minilang('6 PUSH') # (nothing printed; no PRINT commands)