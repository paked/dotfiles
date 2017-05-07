#!/usr/bin/env ruby

STATUS_CONNECTED = 'connected'
STATUS_CONNECTING = 'connecting'
STATUS_DISCONNECTED = 'disconnected'

ICON_STATUS_CONNECTED = ' '
ICON_STATUS_CONNECTING = ' '
ICON_STATUS_DISCONNECTED = ''

device = ENV['BLOCK_INSTANCE']

network_status = `nmcli --terse --fields device,state dev status`

def state?(device, state)
  /#{device}:#{state}/
end

case network_status
when state?(device, STATUS_CONNECTED)
  strength = `grep "#{device}" /proc/net/wireless | awk '{ print int($3) * 100/70 }'`.strip.to_i
  name = `nmcli --terse --fields NAME connection show --active`.strip

  puts "#{ICON_STATUS_CONNECTED} #{name} (#{strength}%)"
when state?(device, STATUS_CONNECTING)
  puts "#{ICON_STATUS_CONNECTING} Searching..."
when state?(device, STATUS_DISCONNECTED)
  puts "#{ICON_STATUS_DISCONNECTED} Down."
else
  puts "IDK"
end