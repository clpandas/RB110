=begin
P
input: number representing the total number of switches
output: an array that identifies which lights are on after `n` repetitions
rules:
  - switches are numbered from 1 to `n`
  - initial light is OFF
  - initial run through toggles all switches ON
  - second pass toggles even switches (divisible by 2) OFF
  - third pass toggles switches that are multiples of three ON
  - etc..
E
if `n` = 5
round 1: every light is ON
round 2: even lights are OFF (2, 4), odd lights are ON (1, 3, 5)
round 3: 2, 3, 4 are OFF; 1 and 5 are ON
round 4 2 and 3 are OFF; 1, 4, and 5 are ON
round 5: 2, 3, and 5 are OFF; 1 and 4 are ON

result is 2 lights are ON; the return value is `[1, 4]`

if `n` = 10
3 lights are ON; the return value is [1, 4, 9]
D
- a flag to keep track of main switch ON/OFF (true/false)
- an initial array populated from 1 through `n`
A
- Given a method `identify_lights_on` that takes an integer `n` representing the total number of switches as input
- Define a `main_switch` flag to keep track of state, which is initially set to `false`
- Define an array `lights` from 1 through `n` all set to `false`
- Iterate through `lights` `n` number of times (a range from 0...n)
  - If main_switch is set to `false`
    - switch the current switch if `false` to `true`
  - Toggle main switch to true
C!

  - All `false` switches start at `true`
  - All elements at indices divisible by idx + 1 are flipped
  - All elements at indices divisible by idx + 1 are flipped
  - All elements at indices divisible by idx + 1 are flipped
  - All elements at indices divisible by idx + 1 are flipped
map through the booleans and convert to their index value plus 1, select only the ones that are truthy

lights.each_with_index
      .select { |switch, _| switch }
      .map { |_, idx| idx + 1 }
=end

def identify_lights_on(n)
  lights = Array.new(n, false)

  (1..n).each do |round|
    lights.each_with_index do |_, idx|
      if (idx + 1) % round == 0
        lights[idx] = lights[idx] ? false : true
      end
    end
  end

  lights.each_with_index
        .select { |light, _| light }
        .map { |_, idx| idx + 1 }
end


p identify_lights_on(5) # => [1, 4]
p identify_lights_on(10) # => [1, 4, 9]
p identify_lights_on(1000)