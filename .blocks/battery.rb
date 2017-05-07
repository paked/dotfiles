#!/usr/bin/env ruby

ICON_STATUS_CHARGING = ""
ICON_STATUS_DISCHARGING = " "

require './.blocks/lib/color'

def state?(state)
  /state:\s+#{state}\n/
end

def percentage_full(status)
  m = /percentage:\s+(\w+)/.match status

  return unless m

  m[1].to_i
end

def time_left(status)
  m = /time to \w+:\s+(.*)\n/.match status
  
  return unless m

  m[1]
end

def format(icon, pf, tl)
  out = "#{icon} #{pf}% (#{tl})"

  if pf > 70
    Color.good(out)
  elsif pf < 20
    Color.bad(out)
  else
    out
  end
end

battery = ENV['BLOCK_INSTANCE']

status = `upower -i /org/freedesktop/UPower/devices/#{battery}`

case status
when state?('discharging')
  puts format(ICON_STATUS_DISCHARGING, percentage_full(status), time_left(status))
when state?('charging')
  puts format(ICON_STATUS_CHARGING, percentage_full(status), time_left(status))
else
  puts Color.bad("IDK. Fix me!")
end
