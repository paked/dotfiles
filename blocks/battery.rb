#!/usr/bin/env ruby

ICON_STATUS_CHARGING = ""
ICON_STATUS_DISCHARGING = " "

def state?(state)
  /state:\s+#{state}\n/
end

def percentage_full(status)
  m = /percentage:\s+(\w+)/.match status

  return unless m

  "#{m[1]}%"
end

def time_left(status)
  m = /time to \w+:\s+(.*)\n/.match status
  
  return unless m

  m[1]
end

battery = ENV['BLOCK_INSTANCE']

status = `upower -i /org/freedesktop/UPower/devices/#{battery}`

case status
when state?('discharging')
  puts "#{ICON_STATUS_DISCHARGING} #{percentage_full status} (#{time_left status})"
when state?('charging')
  puts "#{ICON_STATUS_CHARGING} #{percentage_full status} (#{time_left status})"
else
  puts "IDK. Fix me!"
end
