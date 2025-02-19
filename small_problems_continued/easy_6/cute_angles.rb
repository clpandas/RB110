DEGREE = "\u00B0"

def dms(angle)
  # 
  degrees = angle.floor
  total_minutes = (angle - degrees) * 60
  minutes, leftover_minutes = total_minutes.divmod(1)
  seconds = (leftover_minutes * 60).round
  
  # for possible seconds roll over
  minutes += seconds / 60 
  seconds %= 60
  
  # for possible minutes roll over
  degrees += minutes / 60
  minutes %= 60
  
  # to ensure degrees are in the 0-360 range
  degrees %= 360

  format("%d#{DEGREE}%02d'%02d\"", degrees, minutes, seconds)
end

# LS solution:
# DEGREE = "\u00B0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=begin
Problem
- Input: integer or floating point number that represents an angle between 0 and 360 degrees
- Output: string that represents input angle in degrees, minutes, and seconds 
- Explicit rules:
  - The degree symbol is used to represent degrees
  - A single quote represents minutes
  - A double quote represents seconds
  - A degree has 60 minutes, and a minute has 60 seconds
  - The degree symbol can be represented as: `DEGREE = "\u00B0"`
  - The solution should use two digit numbers with leading zeros when formatting the minutes and seconds
- Implicit rules:
  - An input of 0 should return 0°00'00"
  - The input can be an integer or a floating point number
- Clarfiying questions:

Examples/test cases
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Data structure
- integer or floating point number 
- string

Algorithm
- Given a method `dms` that takes an integer or float as input
- Initialize a variable `degree` to contain the degrees
- Initialize a variable `minutes` to contain the minutes
- Initialize a variable `seconds` to contain the seconds
- The whole integer of the input number is saved as the degrees
- Multiply the decimal portion of the input number by 60, and save the whole number as `minutes`
- Take any remaining decimal and multiply it by 60, and save that number as `seconds`
- Take the three sets of numbers and combine them together to represent (format) the completed angle in degrees, minutes, and seconds in string format  

Code!
=end