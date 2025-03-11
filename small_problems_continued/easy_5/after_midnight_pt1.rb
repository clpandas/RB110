def time_of_day(minutes)
  time_in_minutes = minutes % 1440
  hrs = time_in_minutes / 60
  mins = time_in_minutes % 60

  format('%02d:%02d', hrs, mins)
end

# def time_of_day(minutes)
#   hrs, mins = (minutes % 1440).divmod(60)
#   format('%02d:%02d', hrs, mins)
# end

# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"

=begin
Problem
- Input: any integer
- Output: string (time of day in 24  hour format, e.g. "23:57")
- Explicit rules:
  - Do not use Ruby's `Date` and `Time` classes
  - Disregard Daylight Savings and Standard Time and other complications
  - The method should work with any integer input
  - If the number is positive, the time is after midnight
  - If the number is negative, the time is before midnight
- Implicit rules:
  - An input of 0 means "00:00" (midnight)
  - The method will only receive integer inputs
- Clarfiying questions:
  - How many minutes are in one day? 1440 minutes

Examples/test cases
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Data structure
- input: positive or negative integer 
- output: string (24 hr format, e.g. "00:00")

Algorithm
- Define a `time_of_day` method that takes one positive or negative integer input
- Map minutes into a 24-hr format (keep the value associated with the input within 0 to 1439- because there are 1440 minutes to a day)
  - Initialize a variable `time_in_minutes` to represent the input minutes as a valid time within a 24-hr period. 
- Compute the hour by integer division (hrs = `time_in_minutes` / 60)
- Compute the remaining minutes (mins = `time_in_minutes` % 60)
- Format the appropriate output (hh:mm)

Code!
=end