def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  hours == 24 ? 0 : hours * 60 + minutes
end

def before_midnight(time)
  (1440 - after_midnight(time)) % 1440
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0